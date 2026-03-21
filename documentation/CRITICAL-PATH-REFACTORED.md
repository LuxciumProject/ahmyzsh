# AHMYZSH Critical Path — Refactored

> 🔍 **Analysis:** This document presents the rewritten boot chain with all intents decoupled, deduplicated, and optimized. It serves as the blueprint for modernizing the AHMYZSH framework.

← Back to [Repository README](../README.md) | [Intent Decomposition](INTENT-DECOMPOSITION.md) | [Optimization Plan](OPTIMIZATION-PLAN.md)

---

## Table of Contents

- [Design Principles](#design-principles)
- [Architecture Overview](#architecture-overview)
- [Current vs Refactored Boot Sequence](#current-vs-refactored-boot-sequence)
- [The Refactored Orchestrator](#the-refactored-orchestrator)
- [Module Specifications](#module-specifications)
- [Migration Path](#migration-path)

---

## Design Principles

1. **Gate early** — detect interactive/non-interactive at the very first line; non-interactive shells skip everything except PATH and essential variables
2. **Zero-fork where possible** — use `$ZSH_VERSION`, `$EPOCHREALTIME`, `[[ -o interactive ]]`, `typeset -U path` instead of forking `ps`, `date`, `grep`, `perl`
3. **Single source of truth** — every variable, function, and path is defined in exactly one place
4. **Intent separation** — each file serves exactly one purpose; no file mixes PATH construction with runtime init with timer display
5. **Idempotent sourcing** — every file is safe to source multiple times (guard variables or pure declarations)
6. **Composable timing** — timing is an opt-in overlay, not baked into every function

---

## Architecture Overview

```
/etc/zshenv
  └── source-me-in-etc-zshenv.sh  (the orchestrator)
        │
        ├── lib/detect.sh         # [Gate]   Shell type flags — 0 forks
        ├── lib/registry.sh       # [Core]   Framework paths — 0 forks
        ├── lib/locale.sh         # [Core]   LC_* variables — 0 forks
        ├── lib/path.sh           # [Core]   PATH build + cache — 0 forks
        │
        ├── [non-interactive stops here]
        │
        ├── lib/timer.sh          # [Aesthetic] Timing infrastructure — 0 forks
        ├── lib/prompt.sh         # [Interactive] P10k instant prompt
        ├── lib/runtimes.sh       # [Interactive] conda/rbenv/rust/fnm
        ├── lib/loader.sh         # [Infra] Source helper functions
        ├── ahmyzsh_source_dir:
        │     ├── core/aliases/   # [Interactive] User aliases
        │     └── core/options/   # [Interactive] setopt configuration
        ├── lib/interactive.sh    # [Interactive] OMZ, autosuggestions, completions
        ├── lib/colors.sh         # [Aesthetic] ANSI color constants
        └── lib/compile.sh        # [Maintenance] Conditional bytecode compilation
```

### What changed

| Aspect | Current | Refactored |
|--------|---------|-----------|
| Forks before interactive gate | 8–12 (date, ps, grep, conda, rbenv, rust) | 0 |
| PATH construction | 3× sourced, interleaved with runtime init | 1× cached, runtime init separate |
| Timer overhead for VERBOSA=1 | 6+ date forks (~30ms) | 0 forks (zsh/datetime or skipped) |
| Non-interactive shell cost | ~200–500ms (full boot minus prompt) | ~5–15ms (PATH cache + vars) |
| `eval` usage | Every `call_()` invocation | None in boot path |
| Color constant exports | Loaded for all shells | Interactive only |
| Alias loading | All shells | Interactive only |
| zsh_compile_all_R | Every interactive start | Only when files have changed |
| `bindkey -v` | 2 times | 1 time |

---

## Current vs Refactored Boot Sequence

### Current (simplified)

```
echo ANSI red                           # Visual — runs for all shells
TIMER = fork(date)                      # Timer — runs for all shells
export AHMYZSH, LANG, KDE, Qt...        # Registry — runs for all shells
if cache exists: source cache           # PATH — ok
  TIMER_NOW = fork(date)                # Timer fork #2
else: source path.sh                    # PATH — ok
  fork(date)                            # Timer fork #2
source MAIN-FUNCTIONS.sh                # Infra — ok
source path.sh                          # PATH — REDUNDANT (2nd time)
source conda-initialize.sh             # Runtime — runs for all shells
__compute_extended_path:                # PATH + Runtime — runs for all shells
  25× add_to_path_                      # PATH (with logic bug)
  fork(conda init)                      # Runtime — expensive, all shells
  fork(rbenv init)                      # Runtime — expensive, all shells
  fork(cargo env)                       # Runtime — expensive, all shells
source MAIN.sh:
  fork(ps) + fork(grep)                 # Detection — 2 forks
  SCIENTIA_ES_LUX_PRINCIPIUM:
    fork(ps) to detect terminal type    # Detection — 1 fork
    source MAIN_SETTINGS.sh:
      fork(uname -p) × 2               # Detection — 2 forks
      bindkey -v                        # KEY BINDING #1
    Load_all_files_d core/paths/        # Registry (ok)
    Load_all_files_d core/layouts/      # Aesthetics — all shells
    Load_all_files_d core/compute-path/ # PATH — 3RD TIME
    Load_all_files_d core/functions/    # Infra — ok
    Load_all_files_d core/aliases/      # Aliases — all shells (useless for scripts)
    Load_all_files_d core/env/          # Registry — ok
    source ~/.env                       # User env — ok
    fork(fnm env) + fork(fnm completions) # Runtime — all shells
    echo ANSI reset                     # Visual — all shells
    ─── isinteractive || return 0 ───   # GATE (too late!)
    activate_prompt                     # Prompt
    load_oh_my_zsh                      # OMZ
    load_options_list                   # Options
    load_options_main                   # Options
    load_autosuggest                    # Autosuggestions
    load_autocomplete                   # Autocompletion
    compaudit | xargs chmod             # Permissions fix
    zsh_compile_all_R                   # Compilation — every boot
    bindkey -v                          # KEY BINDING #3
```

**Total forks before interactive gate: ~12–15**
**Total forks for non-interactive shell: same ~12–15**

### Refactored

```
source lib/detect.sh                    # Gate — 0 forks ($ZSH_VERSION, [[ -o ]])
source lib/registry.sh                  # Registry — 0 forks (pure exports)
source lib/locale.sh                    # Locale — 0 forks (pure exports)

ahmyzsh_init_path:                      # PATH — 0 forks
  if cache: source cache                #   Fast path
  else: build + cache                   #   Slow path (first boot only)

─── ! ahmyzsh_is_interactive && return ─── GATE (immediately)

source lib/timer.sh                     # Timer — 0 forks (zsh/datetime)
_ahmyzsh_timer_start

ahmyzsh_init_prompt                     # Prompt — instant prompt cache
_ahmyzsh_timer_lap "prompt"

source lib/loader.sh                    # Infra — 0 forks
source lib/runtimes.sh                  # Runtime — definitions only
ahmyzsh_init_runtimes                   # Runtime — forks only here, only interactive
_ahmyzsh_timer_lap "runtimes"

ahmyzsh_source_dir core/functions/      # Functions
ahmyzsh_source_dir core/aliases/        # Aliases — interactive only
_ahmyzsh_timer_lap "aliases+functions"

source lib/interactive.sh               # OMZ + options + keys
ahmyzsh_init_interactive
_ahmyzsh_timer_lap "interactive"

source lib/colors.sh                    # Aesthetics — interactive only
source "${HOME}/.env" 2>/dev/null       # User env

ahmyzsh_maybe_compile                   # Compile — only if files changed
bindkey -v                              # Key binding — once

_ahmyzsh_timer_lap "total"
```

> ⚠️ **Prompt safety note:** `ahmyzsh_init_prompt` runs before runtime initialization to preserve Powerlevel10k instant prompt behavior. Any runtime initializer (`conda`, `rbenv`, `rust`, `fnm`) must remain output-silent during startup (or explicitly redirect/suppress stdout/stderr), otherwise instant prompt rendering can be disrupted.

**Total forks for non-interactive shell: 0**
**Total forks for interactive shell: 4 (conda, rbenv, rust, fnm) — only the necessary ones**

---

## The Refactored Orchestrator

This replaces `source-me-in-etc-zshenv.sh` + `MAIN.sh` + `MAIN-FUNCTIONS.sh` with a single, clear entry point.

```shell
#!/usr/bin/env zsh
# source-me-in-etc-zshenv.sh — AHMYZSH orchestrator
# Sourced from /etc/zshenv on every shell invocation.
#
# Design: non-interactive shells get PATH + vars in ~5ms.
#         Interactive shells get the full environment in ~100ms.

# ── Phase 0: Bootstrap variables ────────────────────────────────
export AHMYZSH="${AHMYZSH:-/projects/ahmyzsh}"

# ── Phase 1: Gate — detect shell type (zero-fork) ──────────────
source "${AHMYZSH}/lib/detect.sh"

# ── Phase 2: Core variables and locale (zero-fork) ─────────────
source "${AHMYZSH}/lib/registry.sh"
source "${AHMYZSH}/lib/locale.sh"
ahmyzsh_set_locale "fr_CA.UTF-8" "fr_FR.UTF-8"

# ── Phase 3: PATH (zero-fork, cached) ──────────────────────────
source "${AHMYZSH}/lib/path.sh"
ahmyzsh_init_path

# ── Non-interactive shells stop here ────────────────────────────
ahmyzsh_is_interactive || return 0

# ═══════════════════════════════════════════════════════════════
#  Everything below runs ONLY for interactive shells
# ═══════════════════════════════════════════════════════════════

# ── Phase 4: Timer infrastructure (zero-fork, uses zsh/datetime) ─
source "${AHMYZSH}/lib/timer.sh"
_ahmyzsh_timer_start

# ── Phase 5: Instant prompt (must be before any output) ────────
source "${AHMYZSH}/lib/prompt.sh"
ahmyzsh_init_prompt
_ahmyzsh_timer_lap "prompt"

# ── Phase 6: File loading infrastructure ───────────────────────
source "${AHMYZSH}/lib/loader.sh"

# ── Phase 7: Runtime environments (conda, rbenv, rust, fnm) ───
source "${AHMYZSH}/lib/runtimes.sh"
ahmyzsh_init_runtimes
_ahmyzsh_timer_lap "runtimes"

# ── Phase 8: Functions and aliases ─────────────────────────────
ahmyzsh_source_dir "${AHMYZSH_CORE}/functions"
ahmyzsh_source_dir "${AHMYZSH_CORE}/aliases"
_ahmyzsh_timer_lap "functions+aliases"

# ── Phase 9: Interactive setup (OMZ, options, suggestions) ─────
source "${AHMYZSH}/lib/interactive.sh"
ahmyzsh_init_interactive
_ahmyzsh_timer_lap "interactive"

# ── Phase 10: Aesthetics and user env ──────────────────────────
source "${AHMYZSH}/lib/colors.sh"
[[ -r "${HOME}/.env" ]] && source "${HOME}/.env"

# ── Phase 11: Bytecode compilation (conditional) ───────────────
source "${AHMYZSH}/lib/compile.sh"
ahmyzsh_maybe_compile

# ── Phase 12: Final key binding ────────────────────────────────
bindkey -v

_ahmyzsh_timer_lap "total boot"
```

---

## Module Specifications

### `lib/detect.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Set `_AHMYZSH_IS_ZSH`, `_AHMYZSH_IS_INTERACTIVE`, `_AHMYZSH_IS_LOGIN` flags |
| **Dependencies** | None |
| **Forks** | 0 |
| **Exports** | Functions: `ahmyzsh_is_interactive`, `ahmyzsh_is_login`, `ahmyzsh_is_zsh` |
| **Replaces** | `04000-shelltype.sh` detection functions, `ps` fork in `MAIN.sh` |

### `lib/registry.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Export all framework directory paths and tool paths |
| **Dependencies** | `AHMYZSH` must be set |
| **Forks** | 0 |
| **Exports** | `AHMYZSH_CORE`, `OHMYZSH`, `POWERLEVEL10K`, `CORE_*`, `CUDA_*`, `FNM_PATH`, `PNPM_HOME` |
| **Replaces** | `00000-init-paths.sh` (partially), `MAIN_SETTINGS.sh` (partially), top-level exports in `path.sh` |

### `lib/locale.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Set `LANG`, `LC_ALL`, and all `LC_*` variables |
| **Dependencies** | None |
| **Forks** | 0 |
| **Exports** | Function: `ahmyzsh_set_locale` |
| **Replaces** | `__LOCALE__()` and `_LOCALE_()` in `MAIN_SETTINGS.sh`, `LANG`/`LC_ALL` in `source-me-in-etc-zshenv.sh` |

### `lib/path.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Build, cache, and load the PATH variable |
| **Dependencies** | `lib/registry.sh` for directory variables |
| **Forks** | 0 (uses case-pattern dedup, zsh `typeset -U`) |
| **Exports** | Functions: `path_prepend`, `path_append`, `path_dedup`, `ahmyzsh_init_path`, `ahmyzsh_path_save_cache` |
| **Replaces** | `core/compute-path/path.sh` (PATH functions), `core/compute-path/anexes.sh` (cache logic), `z86667-path_operations.sh`, `z86668-load_path.sh` |
| **Bug fixes** | `add_to_path_()` operator precedence bug replaced with correct `[[ -d ]] || return` guard |

### `lib/timer.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Provide opt-in timing for boot phases |
| **Dependencies** | `lib/detect.sh` (for zsh detection) |
| **Forks** | 0 (uses `zsh/datetime` module, `$EPOCHREALTIME`) |
| **Exports** | Functions: `_ahmyzsh_timer_start`, `_ahmyzsh_timer_lap` |
| **Replaces** | `timer_()`, `timer_now()`, `timer_all()` in `MAIN-FUNCTIONS.sh`, all `date +%s%N` forks |

### `lib/runtimes.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Initialize conda, rbenv, rust, fnm — interactive only |
| **Dependencies** | `lib/path.sh` for `path_prepend` |
| **Forks** | 4 (one per runtime — only when the tool is installed) |
| **Exports** | Function: `ahmyzsh_init_runtimes` |
| **Replaces** | `conda-initialize.sh`, `rbenv_()`, `rust_up_()`, `fnm_()` in `path.sh`/`anexes.sh` |

### `lib/loader.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Source files and directories |
| **Dependencies** | None |
| **Forks** | 0 |
| **Exports** | Functions: `ahmyzsh_source`, `ahmyzsh_source_dir`, `ahmyzsh_load` |
| **Replaces** | `load_()`, `call_()`, `source_()`, `Load_all_files_d()`, `Load_all_files_d_v()` |
| **Bug fixes** | Removes `eval` from function dispatch; uses `(N)` nullglob qualifier |

### `lib/prompt.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Load Powerlevel10k with instant prompt support |
| **Dependencies** | `lib/registry.sh` for `POWERLEVEL10K` path |
| **Forks** | 0 |
| **Exports** | Function: `ahmyzsh_init_prompt` |
| **Replaces** | `z86661-activate_prompt.sh`, `z86660-activate_instant_prompt.sh` |
| **New feature** | Enables P10k instant prompt (currently disabled) |

### `lib/interactive.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Oh My Zsh loading, setopt options, autosuggestions, autocompletion |
| **Dependencies** | `lib/registry.sh`, `lib/loader.sh` |
| **Forks** | 0 (OMZ itself may fork internally) |
| **Exports** | Function: `ahmyzsh_init_interactive` |
| **Replaces** | `z88888-load_ohmyzsh.sh`, `z96660x`, `z96661x`, `z96667x`, `z86664` |

### `lib/compile.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Conditional `.zwc` bytecode compilation |
| **Dependencies** | `lib/registry.sh` for paths |
| **Forks** | 0–1 (`find` only when compilation needed) |
| **Exports** | Function: `ahmyzsh_maybe_compile` |
| **Replaces** | `zsh_compile_all_R()`, `zsh_compile_all_M()` |
| **Improvement** | Uses sentinel file to skip compilation when nothing changed |

### `lib/colors.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | ANSI escape code constants for terminal aesthetics |
| **Dependencies** | None |
| **Forks** | 0 |
| **Replaces** | `core/layouts/00000-layouts.sh`, `core/layouts/00001-mycolors.sh`, `core/env/00000.sh` |
| **Improvement** | Loaded only for interactive shells; consolidated from 3 files to 1 |

### `lib/reload.sh`

| Aspect | Value |
|--------|-------|
| **Purpose** | Hot-reload aliases, PATH, or full configuration |
| **Dependencies** | `lib/loader.sh`, `lib/path.sh` |
| **Forks** | 0 |
| **Exports** | Functions: `ahmyzsh_reload_aliases`, `ahmyzsh_reload_path`, `ahmyzsh_reload_all` |
| **Replaces** | `reload_alias_and_conf` alias, reload detection in `MAIN.sh` |

---

## Migration Path

### Phase 1: Create `lib/` alongside existing code

1. Create the `lib/` directory with all modules
2. Add a feature flag: `export AHMYZSH_USE_LIB=true`
3. In `source-me-in-etc-zshenv.sh`, check the flag:
   ```shell
   if [[ "${AHMYZSH_USE_LIB:-}" == true ]]; then
     source "${AHMYZSH}/lib/init.sh"  # New orchestrator
     return 0
   fi
   # ... existing code below (unchanged)
   ```
4. Test the new path with `AHMYZSH_USE_LIB=true zsh`

### Phase 2: Validate and iterate

1. Compare `$PATH` between old and new boot
2. Verify all aliases are defined
3. Time both paths: `time zsh -ic exit`
4. Check non-interactive: `time zsh -c "echo hello"`

### Phase 3: Make new path the default

1. Flip the flag default to `true`
2. Keep old code available with `AHMYZSH_USE_LIB=false`

### Phase 4: Remove old code

1. Move `MAIN.sh`, `MAIN-FUNCTIONS.sh`, `MAIN_SETTINGS.sh` to `archive/`
2. Clean up `core/compute-path/` — keep only `anexes.sh` utility functions
3. Update all READMEs

---

*← Back to [Repository README](../README.md) | [Intent Decomposition](INTENT-DECOMPOSITION.md) | [Optimization Plan](OPTIMIZATION-PLAN.md)*
