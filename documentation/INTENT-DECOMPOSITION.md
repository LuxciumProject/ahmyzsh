# AHMYZSH Intent Decomposition

> 🔍 **Analysis:** This document decomposes the boot chain by *purpose* rather than by file or bug. Each section isolates a distinct **intent** — the underlying goal a block of code tries to achieve — and proposes how to achieve that intent with clean separation, modern practices, and minimal overhead.

← Back to [Repository README](../README.md) | [Optimization Plan](OPTIMIZATION-PLAN.md) | [Critical Path Refactored](CRITICAL-PATH-REFACTORED.md)

---

## Table of Contents

- [How to Read This Document](#how-to-read-this-document)
- [Intent Map: All Identified Concerns](#intent-map-all-identified-concerns)
- [Intent 1 — Shell Type Detection](#intent-1--shell-type-detection)
- [Intent 2 — Performance Timing (Aesthetics)](#intent-2--performance-timing-aesthetics)
- [Intent 3 — Visual Boot Feedback (Aesthetics)](#intent-3--visual-boot-feedback-aesthetics)
- [Intent 4 — PATH Construction](#intent-4--path-construction)
- [Intent 5 — Runtime Environment Initialization](#intent-5--runtime-environment-initialization)
- [Intent 6 — Framework Variable Registry](#intent-6--framework-variable-registry)
- [Intent 7 — Locale Configuration](#intent-7--locale-configuration)
- [Intent 8 — Function and File Loading Infrastructure](#intent-8--function-and-file-loading-infrastructure)
- [Intent 9 — Interactive Shell Setup](#intent-9--interactive-shell-setup)
- [Intent 10 — Prompt and Theme](#intent-10--prompt-and-theme)
- [Intent 11 — Terminal Aesthetics Library](#intent-11--terminal-aesthetics-library)
- [Intent 12 — Alias and Shortcut Library](#intent-12--alias-and-shortcut-library)
- [Intent 13 — Bytecode Compilation](#intent-13--bytecode-compilation)
- [Intent 14 — Reload and Hot-Refresh](#intent-14--reload-and-hot-refresh)
- [Cross-Cutting Concerns](#cross-cutting-concerns)
- [Dependency Graph Between Intents](#dependency-graph-between-intents)
- [Decoupling Strategy](#decoupling-strategy)

---

## How to Read This Document

Each intent section follows this structure:

1. **What it wants to achieve** — the purpose in plain language
2. **Where it currently lives** — files and line ranges
3. **What's tangled with it** — other concerns mixed in
4. **Current implementation** — code excerpts showing how it works now
5. **Problems with current approach** — bugs, redundancies, coupling
6. **Proposed refactored implementation** — clean, decoupled code
7. **Delegation recommendation** — which phase/file should own this concern

---

## Intent Map: All Identified Concerns

The boot chain mixes at least 14 distinct intents. In the current code they are **entangled** — a single file or function often serves 3–4 intents at once. The table below maps each intent to its current location and its ideal owner.

| # | Intent | Current Location(s) | Ideal Owner | Layer |
|---|--------|-------------------|-------------|-------|
| 1 | Shell type detection | `MAIN.sh`, `04000-shelltype.sh` | `lib/detect.sh` | Gate |
| 2 | Performance timing | `source-me-in-etc-zshenv.sh`, `MAIN-FUNCTIONS.sh` | `lib/timer.sh` | Aesthetics |
| 3 | Visual boot feedback | `source-me-in-etc-zshenv.sh` (ANSI echo) | `lib/boot-display.sh` | Aesthetics |
| 4 | PATH construction | `path.sh`, `anexes.sh`, `z86667-path_operations.sh`, `z86668-load_path.sh` | `lib/path.sh` | Core |
| 5 | Runtime env init | `conda-initialize.sh`, `path.sh` (`rbenv_`, `rust_up_`, `fnm_`) | `lib/runtimes.sh` | Core (lazy) |
| 6 | Framework variable registry | `00000-init-paths.sh`, `MAIN_SETTINGS.sh`, `source-me-in-etc-zshenv.sh` | `lib/registry.sh` | Core |
| 7 | Locale configuration | `MAIN_SETTINGS.sh` (`__LOCALE__`), `source-me-in-etc-zshenv.sh` | `lib/locale.sh` | Core |
| 8 | File/function loading infra | `MAIN-FUNCTIONS.sh` (`load_`, `call_`, `source_`, `Load_all_files_d`) | `lib/loader.sh` | Infra |
| 9 | Interactive shell setup | `MAIN.sh` (post-`isinteractive` block), `z96660x`, `z96661x` | `lib/interactive.sh` | Interactive |
| 10 | Prompt and theme | `z86661-activate_prompt.sh`, `z86660-activate_instant_prompt.sh` | `lib/prompt.sh` | Interactive |
| 11 | Terminal aesthetics library | `00000-layouts.sh`, `00001-mycolors.sh`, `core/env/00000.sh` | `lib/colors.sh` | Aesthetics |
| 12 | Alias and shortcut library | `core/aliases/*.sh`, `core/paths/00000-personal-project-paths.sh` | `core/aliases/` | Interactive |
| 13 | Bytecode compilation | `05000-zsh_compile.sh` | `lib/compile.sh` | Maintenance |
| 14 | Reload and hot-refresh | `MAIN.sh` (reload detection), `MAIN-FUNCTIONS.sh` (aliases) | `lib/reload.sh` | Interactive |

---

## Intent 1 — Shell Type Detection

### What it wants to achieve

Determine whether the current shell is Zsh or Bash, interactive or non-interactive, login or non-login — so that the framework can gate expensive operations.

### Where it currently lives

- **`MAIN.sh`** line 34: `IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"` — forks `ps` + `grep`
- **`core/functions/04000-shelltype.sh`**: defines `isbash()`, `iszsh()`, `isinteractive()`, `islogin()`, and 8 variant functions

### What's tangled with it

- The `ps` fork in `MAIN.sh` is a *detection* concern but runs in the *bootstrap* function, adding latency before any gating happens
- `isinteractive()` is defined in `core/functions/`, which is loaded *after* several expensive phases have already run — so it can't be used to gate those phases

### Problems

1. **Process fork for detection**: `ps -o comm= -p $$ | grep 'zsh'` forks two processes. Zsh provides `$ZSH_VERSION` and `[[ -o interactive ]]` natively — zero-fork.
2. **Detection too late**: The function `isinteractive()` is not available until `core/functions/` is loaded in Phase 6e, but it's needed at Phase 0 to skip non-interactive work.
3. **Unnecessary subshells**: Functions like `islogin()` wrap tests in `(subshell)` parentheses, adding overhead for no benefit.

### Proposed refactored implementation

```shell
# lib/detect.sh — Sourced as the very first thing, before anything else
# Zero-fork detection using shell-native features

_AHMYZSH_IS_ZSH=false
_AHMYZSH_IS_INTERACTIVE=false
_AHMYZSH_IS_LOGIN=false

if [[ -n "${ZSH_VERSION:-}" ]]; then
  _AHMYZSH_IS_ZSH=true
  [[ -o interactive ]] && _AHMYZSH_IS_INTERACTIVE=true
  [[ -o login ]] && _AHMYZSH_IS_LOGIN=true
elif [[ -n "${BASH_VERSION:-}" ]]; then
  [[ $- == *i* ]] && _AHMYZSH_IS_INTERACTIVE=true
  shopt -q login_shell 2>/dev/null && _AHMYZSH_IS_LOGIN=true
fi

# Convenience functions (no subshells, no forks)
ahmyzsh_is_interactive() { [[ "$_AHMYZSH_IS_INTERACTIVE" == true ]]; }
ahmyzsh_is_login()       { [[ "$_AHMYZSH_IS_LOGIN" == true ]]; }
ahmyzsh_is_zsh()         { [[ "$_AHMYZSH_IS_ZSH" == true ]]; }
```

### Delegation

This must be the **very first** file sourced — before timer, before PATH, before anything. It enables all other intents to gate themselves.

---

## Intent 2 — Performance Timing (Aesthetics)

### What it wants to achieve

Measure how long each boot phase takes so the developer can see timing breakdowns when `VERBOSA` is high enough.

### Where it currently lives

- **`source-me-in-etc-zshenv.sh`**: `TIMER_ALL_THEN=$(/usr/bin/date +%s%N)`, `TIMER_NOW` calculations
- **`MAIN-FUNCTIONS.sh`**: `timer_()`, `timer_now()`, `timer_all()`, `timer_from_then()` — all fork `date +%s%N`
- **`call_()`**, **`source_()`**: set `TIMER_THEN` before each operation

### What's tangled with it

- Timer forks run on **every shell** including `zsh -c "echo hello"` — but timing output is only shown when `VERBOSA > 1`
- The timer is embedded directly into `call_()` and `source_()`, coupling the *aesthetics* concern with the *loading infrastructure* concern

### Problems

1. **6+ process forks per boot** just for timing that is never displayed (VERBOSA=1 by default)
2. **`date +%s%N` forks** each cost 2–5ms — adding 12–30ms of timing overhead to measure timing
3. **`TIMER_THEN` global state** — a single global variable tracks "when did the last thing start," making timing spaghetti when calls nest
4. **`timer_from_then()` is broken** — `local TIME_THEN=TIME_NOW` assigns the string literal `"TIME_NOW"` instead of the value `$TIME_NOW`. The function has never worked.

### Proposed refactored implementation

```shell
# lib/timer.sh — Only does work when VERBOSA demands it

# Use zsh/datetime module (zero-fork) when available
if [[ -n "${ZSH_VERSION:-}" ]]; then
  zmodload zsh/datetime 2>/dev/null && _AHMYZSH_HAS_ZSHDT=true || _AHMYZSH_HAS_ZSHDT=false
fi

_ahmyzsh_epoch_us() {
  # Returns microseconds since epoch — zero-fork if zsh/datetime is available
  if [[ "$_AHMYZSH_HAS_ZSHDT" == true ]]; then
    # $EPOCHREALTIME gives seconds.microseconds as float
    # Guard: under LC_NUMERIC=fr_CA the decimal separator may be a comma,
    # which would break ${...%.*} parsing. Force C locale for this operation.
    local LC_NUMERIC=C
    local secs="${EPOCHREALTIME%.*}"
    local frac="${EPOCHREALTIME#*.}"
    printf '%s%s' "$secs" "${frac:0:6}"
  else
    printf '%s' "$(date +%s%6N)"
  fi
}

_ahmyzsh_timer_start() {
  # Only record start time if we'll actually display timings
  if (( VERBOSA > 1 )); then
    _AHMYZSH_TIMER_PHASE_START="$(_ahmyzsh_epoch_us)"
  fi
}

_ahmyzsh_timer_lap() {
  # Print elapsed time for a phase — only if VERBOSA warrants it
  local label="$1"
  if (( VERBOSA > 1 )) && [[ -n "${_AHMYZSH_TIMER_PHASE_START:-}" ]]; then
    local now elapsed_us elapsed_ms
    now="$(_ahmyzsh_epoch_us)"
    elapsed_us=$(( now - _AHMYZSH_TIMER_PHASE_START ))
    elapsed_ms=$(( elapsed_us / 1000 ))
    printf '\e[34m⏱  %4dms  %s\e[0m\n' "$elapsed_ms" "$label"
    _AHMYZSH_TIMER_PHASE_START="$now"
  fi
}
```

> 📝 **Key insight:** The timer is an *aesthetic/debugging* concern. It should **never fork a process** when `VERBOSA ≤ 1`. The refactored version uses `zsh/datetime` (zero-fork) and guards all work behind `VERBOSA`.

### Delegation

Sourced second (after `detect.sh`). Provides `_ahmyzsh_timer_start` and `_ahmyzsh_timer_lap` for all other phases. The loading infrastructure (`call_`, `source_`) should **not** embed timing — timing is applied at the orchestration level.

---

## Intent 3 — Visual Boot Feedback (Aesthetics)

### What it wants to achieve

Show the user a visual indicator that the shell is booting (red bold text) and reset it when done (ANSI reset).

### Where it currently lives

- **`source-me-in-etc-zshenv.sh`** line 2: `echo -n -e '\u001b[0m\u001b[31;1m\u001b[1m'`
- **`MAIN.sh`** Phase 6h: `echo -en '\u001b[0m'`

### What's tangled with it

The boot-indicator echo runs on non-interactive shells (scripts, cron), polluting their stdout.

### Proposed refactored implementation

```shell
# In the orchestrator, after detect.sh is loaded:
if ahmyzsh_is_interactive; then
  printf '\e[0m\e[31;1m\e[1m'  # Red bold — "I'm booting"
fi

# ... at the end, after all interactive setup:
if ahmyzsh_is_interactive; then
  printf '\e[0m'               # Reset — "I'm done"
fi
```

### Delegation

This is purely aesthetic — it belongs in the orchestrator's interactive branch, not at the top of the entry point.

---

## Intent 4 — PATH Construction

### What it wants to achieve

Build the `PATH` environment variable with all required directories (system, CUDA, Go, Node/FNM, Rust/Cargo, rbenv, pnpm, yarn, bun, conda, custom tools) and cache the result for fast reuse.

### Where it currently lives

- **`core/compute-path/path.sh`**: `add_to_path_()`, `prepend_to_path()`, `append_to_path()`, `__append_bin_to_path()`, `__compute_extended_path()`, `set_path()`, `cache_path()`, `reload_path()`, `dedup_pathvar_()` — plus top-level exports for CUDA, FNM, PNPM
- **`core/compute-path/anexes.sh`**: `compute_path()`, `echo_path()`, `echo_path_()`, `seting_cache_path_()` with 10-generation hash history
- **`core/functions/z86667-path_operations.sh`**: duplicate `add_to_path_()`, `affix_to_path_()`, `perpend_to_path_()` (sic — misspelled `prepend`), `append_to_path_()`
- **`core/functions/z86668-load_path.sh`**: `load_path()`, `re_load_path()`
- **`source-me-in-etc-zshenv.sh`**: cached PATH loading, explicit `__compute_extended_path` call

### What's tangled with it

- **Runtime initializers** (conda, rbenv, rust) are called inside `__compute_extended_path()` — this tangles PATH construction with runtime setup
- **Timing** is embedded (timer forks in the cache branch)
- **Variable exports** (CUDA_HOME, FNM_PATH, etc.) are mixed in at file top-level — these are *registry* concerns, not PATH concerns
- **The `add_to_path_()` bug** affects correctness and security: due to operator precedence, `[ -z "$1" ] || [ -d "$1" ] && ...` can still execute the `&&` branch when `$1` is empty, introducing an empty PATH element (`:`) that implicitly adds the current directory to PATH — a security footgun

### Problems

1. **Sourced 3×**: cache-miss branch, unconditional line 39, `Load_all_files_d core/compute-path/*.sh`
2. **`add_to_path_()` logic bug**: described above — because `[ -z "$1" ] || [ -d "$1" ] && ...` does not group the tests explicitly, shell operator precedence can allow the `&&` branch to run even when `$1` is empty, adding an empty element to `PATH` (i.e., `:`) and thereby implicitly including the current directory — a security risk
3. **Duplicate definitions**: `add_to_path_()` is defined identically in `path.sh` and `z86667-path_operations.sh`
4. **`set_path()` hardcodes paths**: `add_to_path_ '/home/luxcium/.local/share/fnm'` — not portable
5. **`set_path()` passes "eval" as directory name**: `add_to_path_ eval "$(fnm env)"` — shell parsing gives `add_to_path_` the string `"eval"` as `$1`, silently losing the fnm environment setup
6. **`cache_path()` writes unquoted PATH**: `echo "export PATH=$PATH"` — if PATH contains metacharacters (spaces, globs), the cache file will be malformed when sourced
7. **`dedup_pathvar_()` forks perl**: could use zsh-native associative arrays
8. **`seting_cache_path_()` has 10-generation rolling history**: massively overcomplicated for a PATH cache

### Proposed refactored implementation

```shell
# lib/path.sh — Clean PATH management, decoupled from runtime init

# ── Primitives ──────────────────────────────────────────────────

path_prepend() {
  # Safely prepend a directory to PATH (only if it exists and isn't already in PATH)
  local dir="$1"
  [[ -z "$dir" ]] && return 0
  [[ -d "$dir" ]] || return 0
  case ":${PATH}:" in
    *:"$dir":*) return 0 ;;  # Already present
  esac
  export PATH="${dir}${PATH:+:${PATH}}"
}

path_append() {
  local dir="$1"
  [[ -z "$dir" ]] && return 0
  [[ -d "$dir" ]] || return 0
  case ":${PATH}:" in
    *:"$dir":*) return 0 ;;
  esac
  export PATH="${PATH:+${PATH}:}${dir}"
}

path_dedup() {
  # Deduplicate PATH using zsh-native typeset -U (zero-fork)
  if [[ -n "${ZSH_VERSION:-}" ]]; then
    typeset -U path
  else
    # Bash fallback — awk
    PATH="$(printf '%s' "$PATH" | awk -v RS=: -v ORS=: '!seen[$0]++')"
    PATH="${PATH%:}"
    export PATH
  fi
}

# ── Base PATH ───────────────────────────────────────────────────

_ahmyzsh_build_base_path() {
  # Start from system defaults, then add framework bin
  local -a base_dirs=(
    /usr/local/bin
    /usr/bin
    /bin
    "${AHMYZSH}/core/bin"
    "${HOME}/.local/bin"
    /snap/bin
  )
  for dir in "${base_dirs[@]}"; do
    path_append "$dir"
  done
}

# ── Extended PATH (static directories only — no runtime init) ──

_ahmyzsh_build_extended_path() {
  local -a extra_dirs=(
    /usr/lib64/ccache
    /usr/lib64/qt5/bin
    /usr/local/go/bin
    "${CUDA_BIN:-}"
    /opt/nvidia/nsight-compute
    "${HOME}/.cargo/bin"
    "${HOME}/.rbenv/shims"
    "${HOME}/.rbenv/bin"
    "${HOME}/.yarn/bin"
    "${PNPM_HOME:-}"
    "${FNM_PATH:-}"
    "${HOME}/bin"
    "${HOME}/.config/yarn/global/node_modules/.bin"
  )
  for dir in "${extra_dirs[@]}"; do
    path_prepend "$dir"
  done
  path_append "${HOME}/.bun/bin"
}

# ── Cache ───────────────────────────────────────────────────────

_ahmyzsh_path_cache="${AHMYZSH_CACHE:-${HOME}/.cache/ahmyzsh}/path.env"

ahmyzsh_path_save_cache() {
  mkdir -p "$(dirname "$_ahmyzsh_path_cache")"
  printf 'export PATH="%s"\n' "$PATH" > "$_ahmyzsh_path_cache"
}

ahmyzsh_path_load_cache() {
  if [[ -f "$_ahmyzsh_path_cache" ]]; then
    source "$_ahmyzsh_path_cache"
    return 0
  fi
  return 1
}

# ── Orchestration ───────────────────────────────────────────────

ahmyzsh_init_path() {
  if ahmyzsh_path_load_cache; then
    return 0  # Fast path — cache hit
  fi
  # Slow path — build from scratch
  _ahmyzsh_build_base_path
  _ahmyzsh_build_extended_path
  path_dedup
  ahmyzsh_path_save_cache
}
```

> 📝 **Key insights:**
> - `path_prepend` and `path_append` use `case` pattern matching to prevent duplicates — no fork, no perl, no awk
> - Runtime init (conda, rbenv, rust) is **not called** from PATH construction — they're separate intents (see Intent 5)
> - `typeset -U path` is the zsh-native way to deduplicate `$path` (the array form of `$PATH`)
> - Cache is a single line: `export PATH="..."` — no 10-generation hash history

### Delegation

Owned by `lib/path.sh`. Called once from the orchestrator. Runtime initializers are separate.

---

## Intent 5 — Runtime Environment Initialization

### What it wants to achieve

Initialize language runtime managers (conda/anaconda, rbenv/ruby, rustup/cargo, fnm/node) so their commands are available.

### Where it currently lives

- **`conda-initialize.sh`**: `conda_init_esoteric-argentum()` — `eval "$('/home/luxcium/anaconda3/bin/conda' 'shell.bash' 'hook')"`
- **`path.sh`**: `rbenv_()` — `eval "$(rbenv init -)"` | `rust_up_()` — sources cargo/env
- **`anexes.sh`**: duplicate `fnm_()`, `rbenv_()`, `rust_up_()`
- **`__compute_extended_path()`**: calls `conda_init_esoteric-argentum`, `rbenv_`, `rust_up_` directly

### What's tangled with it

- Runtime init is **inside PATH construction** — every boot recomputes PATH AND reinitializes every runtime
- `fnm_()` calls `eval "$(fnm env --use-on-cd)"` which itself modifies PATH — this should happen after base PATH is set

### Problems

1. **Runs on every boot** including non-interactive shells — `conda init`, `rbenv init`, `rustup` are only needed for interactive use
2. **Hardcoded paths**: `/home/luxcium/anaconda3/bin/conda` — not portable
3. **Duplicate definitions**: `rbenv_()` and `rust_up_()` defined in both `path.sh` and `anexes.sh`
4. **`eval` of external commands**: each runtime init forks a subprocess and evals its output — expensive and a security surface

### Proposed refactored implementation

```shell
# lib/runtimes.sh — Lazy-loaded runtime initializers
# Each runtime is initialized only when first used OR on interactive shell start

_ahmyzsh_init_conda() {
  local conda_bin="${HOME}/anaconda3/bin/conda"
  [[ -x "$conda_bin" ]] || return 0
  local setup
  setup="$("$conda_bin" 'shell.zsh' 'hook' 2>/dev/null)" || return 0
  eval "$setup"
  unset setup
}

_ahmyzsh_init_rbenv() {
  command -v rbenv >/dev/null 2>&1 || return 0
  eval "$(rbenv init - zsh)"
}

_ahmyzsh_init_rust() {
  local cargo_env="${HOME}/.cargo/env"
  [[ -f "$cargo_env" ]] && source "$cargo_env"
}

_ahmyzsh_init_fnm() {
  command -v fnm >/dev/null 2>&1 || return 0
  eval "$(fnm env --use-on-cd)"
  eval "$(fnm completions --shell zsh)"
}

# Master initializer — called only for interactive shells
ahmyzsh_init_runtimes() {
  _ahmyzsh_init_conda
  _ahmyzsh_init_rbenv
  _ahmyzsh_init_rust
  _ahmyzsh_init_fnm
}
```

> 📝 **Key insight:** Runtime init is an *interactive-only* concern. It should never run for `zsh -c "cmd"`. Each initializer checks for the binary's existence first (`command -v` or `[[ -x ]]`) — if the tool isn't installed, it silently skips.

### Delegation

Owned by `lib/runtimes.sh`. Called from the interactive branch of the orchestrator, **after** PATH is set.

---

## Intent 6 — Framework Variable Registry

### What it wants to achieve

Establish a consistent set of exported variables that point to framework directories — `AHMYZSH`, `AHMYZSH_CORE`, `OHMYZSH`, `POWERLEVEL10K`, `CORE_ALIASES`, `CORE_BIN`, `CORE_FUNCTIONS`, etc.

### Where it currently lives

- **`source-me-in-etc-zshenv.sh`**: `AHMYZSH`, `AHMYZSH_CACHE`, `CACHED_PATH`
- **`core/paths/00000-init-paths.sh`**: `OHMYZSH`, `ZSH`, `POWERLEVEL10K`, `AHMYZSH_CORE`, `CORE_*`, `DESTINATION_PATH`, `MY_MULTIMEDIA`, etc.
- **`MAIN_SETTINGS.sh`**: re-declares `AHMYZSH`, `AHMYZSH_CORE`, `AH_LIBRARIES`, `CACHED_PATH`, `ZSH_CUSTOM` using `:=` defaults
- **`core/compute-path/path.sh`**: `CUDA_VERSION`, `CUDA_HOME`, `FNM_PATH`, `PNPM_HOME`, `RBENV_PATH`, `DOTNET_ROOT`

### What's tangled with it

The same variables are declared in 3–4 different files. Some are declared as `export VAR=value`, some as `: "${VAR:=value}"`, some as `export VAR="${VAR:=value}"`. This creates confusion about which declaration "wins" and introduces the risk of stale values.

### Problems

1. **Triple-declaration** of `AHMYZSH`, `AHMYZSH_CACHE`, `CACHED_PATH`
2. **Mixed declaration styles** — some use export, some use `:=` default
3. **CUDA/FNM/PNPM vars live in `path.sh`** — they're *registry* concerns placed in a *PATH* file, causing them to be re-exported on every source of `path.sh`
4. **Credential variables in committed code** — `MAIN_SETTINGS.sh` exports `GITHUB_TOKEN=""` and `GITHUB_PASSWORD="${GITHUB_TOKEN}"`. While currently empty, this pattern in a public repo is a security anti-pattern; credentials should come from `~/.env` or a secrets manager, never from a committed file

### Proposed refactored implementation

```shell
# lib/registry.sh — Single source of truth for all framework paths

export AHMYZSH="${AHMYZSH:-/projects/ahmyzsh}"
export AHMYZSH_CACHE="${AHMYZSH_CACHE:-${HOME}/.cache/ahmyzsh}"
export AHMYZSH_CORE="${AHMYZSH}/core"

# Oh My Zsh and theme paths
export OHMYZSH="${AHMYZSH}/ohmyzsh"
export ZSH="${OHMYZSH}"
export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
export ZSH_CUSTOM="${AHMYZSH}"

# Core subdirectory paths
export CORE_ALIASES="${AHMYZSH_CORE}/aliases"
export CORE_BIN="${AHMYZSH_CORE}/bin"
export CORE_COMPLETE="${AHMYZSH_CORE}/complete.d"
export CORE_COMPUTE="${AHMYZSH_CORE}/compute-path"
export CORE_ENV="${AHMYZSH_CORE}/env"
export CORE_FUNCTIONS="${AHMYZSH_CORE}/functions"
export CORE_LAYOUTS="${AHMYZSH_CORE}/layouts"
export CORE_OPTIONS="${AHMYZSH_CORE}/options"
export CORE_PATHS="${AHMYZSH_CORE}/paths"

# Tool paths
export CUDA_VERSION="${CUDA_VERSION:-cuda-12.4}"
export CUDA_HOME="/usr/local/${CUDA_VERSION}"
export CUDA_BIN="${CUDA_HOME}/bin"
export CUDA_LIB="${CUDA_HOME}/lib64"
export FNM_PATH="${HOME}/.local/share/fnm"
export PNPM_HOME="${HOME}/.local/share/pnpm"
export DOTNET_ROOT="/usr/lib64/dotnet/"

# LD_LIBRARY_PATH (set once, not on every source of path.sh)
export LD_LIBRARY_PATH="${CUDA_LIB}${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
```

### Delegation

Sourced early (after `detect.sh` and `timer.sh`). Every other module reads from these variables — none of them should re-declare them.

---

## Intent 7 — Locale Configuration

### What it wants to achieve

Set `LANG`, `LC_ALL`, and all `LC_*` variables to the user's preferred locale (fr_CA.UTF-8 by default).

### Where it currently lives

- **`source-me-in-etc-zshenv.sh`**: `LANG=fr_CA.utf8`, `LC_ALL=fr_CA.UTF-8`
- **`MAIN_SETTINGS.sh`** → **`__LOCALE__()`**: sets every LC_* explicitly, then sets them *again* with `:=` defaults
- **`_LOCALE_()`**: parameterized locale setter (unused in boot)

### Problems

1. `LANG` set to `fr_CA.utf8` in entry point, then `fr_CA.UTF-8` in `__LOCALE__()` — different casing of the charset
2. Every LC_* variable assigned twice inside `__LOCALE__()` — explicit set then `:=` default (no-op)
3. `LC_ALL` set in entry point but not in `__LOCALE__()` — inconsistent

### Proposed refactored implementation

```shell
# lib/locale.sh — Single, clean locale configuration

ahmyzsh_set_locale() {
  local locale="${1:-fr_CA.UTF-8}"
  local time_locale="${2:-fr_FR.UTF-8}"

  export LANG="$locale"
  export LC_ALL="$locale"
  export LC_CTYPE="$locale"
  export LC_NUMERIC="$locale"
  export LC_COLLATE="$locale"
  export LC_MONETARY="$locale"
  export LC_MESSAGES="$locale"
  export LC_PAPER="$locale"
  export LC_NAME="$locale"
  export LC_ADDRESS="$locale"
  export LC_TELEPHONE="$locale"
  export LC_MEASUREMENT="$locale"
  export LC_IDENTIFICATION="$locale"
  export LC_TIME="$time_locale"
  export LINGUAS="fr_CA:en_US"
}
```

### Delegation

Called once from the orchestrator, before interactive setup.

---

## Intent 8 — Function and File Loading Infrastructure

### What it wants to achieve

Provide a generic mechanism to source files and call functions, with optional timing and error reporting.

### Where it currently lives

- **`MAIN-FUNCTIONS.sh`**: `load_()`, `call_()`, `source_()`, `Load_all_files_d()`, `Load_all_files_d_v()`

### What's tangled with it

- `call_()` embeds **timing** (timer fork + display) — should be the timer's job
- `call_()` uses **`eval`** — `eval "${1}"` is slower and less secure than `"$1"` (direct invocation)
- `Load_all_files_d_v()` forks `date +%s%N` **after every single file** — N files = N forks
- The verbose/quiet split duplicates the entire sourcing loop

### Problems

1. **`eval` in `call_()`**: if `$1` is a known function name, `"$1"` (direct call) is correct. `eval` is needed only if `$1` contains arguments or is a complex expression — which it never does in the boot chain.
2. **Timer fork per file**: `Load_all_files_d_v` calls `date +%s%N` after every file source — 40+ forks just for verbose timing
3. **`source_()` checks `-f` then `-r`**: one `[[ -r ]]` check suffices (readable implies exists)
4. **Glob ordering hazard**: `Load_all_files_d()` uses `for f in "${SD1}/"*.sh`, so files prefixed with `-` load before numeric prefixes (for example `core/functions/-00000-openai_models.sh`). This can silently alter intended boot order.

### Proposed refactored implementation

```shell
# lib/loader.sh — Minimal, clean file loading

ahmyzsh_source() {
  # Source a file if it exists and is readable
  local file="$1"
  [[ -r "$file" ]] || return 0
  source "$file"
}

ahmyzsh_source_dir() {
  # Source all *.sh files in a directory
  local dir="$1"
  [[ -d "$dir" ]] || return 0
  local f
  for f in "$dir"/*.sh(N); do  # (N) = nullglob in zsh — no error if no matches
    source "$f"
  done
}

ahmyzsh_load() {
  # Source a file, then call the named function
  local file="$1" func="$2"
  ahmyzsh_source "$file"
  [[ -n "$func" ]] && "$func"  # Direct call — no eval
}
```

> 📝 **Key insight:** The `(N)` glob qualifier in zsh is the correct way to handle empty directories — no need for the `[ -d ]` guard when using it. `"$func"` (direct call) replaces `eval "${func}"` — simpler, faster, safer.

### Delegation

`lib/loader.sh`. Provides the primitives used by the orchestrator.

---

## Intent 9 — Interactive Shell Setup

### What it wants to achieve

When the shell is interactive, load Oh My Zsh with plugins, set Zsh options (`setopt`), load autosuggestions, autocompletion, key bindings, and fix file permissions.

### Where it currently lives

- **`MAIN.sh`** (Phase 6i–6l): calls `activate_prompt`, `load_oh_my_zsh`, `load_options_list`, `load_options_main`, `load_autosuggest`, `load_autocomplete`, `compaudit`, `zsh_compile_all_R`, `bindkey -v`
- **`core/functions/z88888-load_ohmyzsh.sh`**: plugin list, sources `oh-my-zsh.sh`
- **`core/functions/z96660x-load_options.sh`**: `load_options_main()` with `setopt` calls
- **`core/functions/z96661x-load_options_list.sh`**: `load_options_list()` with detailed setopt documentation
- **`core/functions/z96667x-load-autosuggest.sh`**: loads zsh-autosuggestions and syntax-highlighting
- **`core/functions/z86664-load_autocomplete_now.sh`**: loads autocompletion

### What's tangled with it

- `bindkey -v` set here AND in `MAIN_SETTINGS()` AND as the last line of `SCIENTIA_ES_LUX_PRINCIPIUM()` — 3 times
- `compaudit | xargs chmod g-w,o-w` runs on every interactive start — should be a one-time fix
- `zsh_compile_all_R` is a *maintenance* concern but runs every interactive boot

### Proposed delegation

All interactive setup belongs in a single orchestration block gated by `ahmyzsh_is_interactive`. Within that block, each concern is a clean function call:

```shell
if ahmyzsh_is_interactive; then
  ahmyzsh_init_prompt        # Intent 10
  ahmyzsh_init_ohmyzsh       # plugins + oh-my-zsh.sh
  ahmyzsh_set_options        # all setopt in one place
  ahmyzsh_init_autosuggest   # zsh-autosuggestions + syntax-highlighting
  ahmyzsh_init_autocomplete  # zsh-autocomplete
  ahmyzsh_init_runtimes      # Intent 5 — conda/rbenv/rust/fnm
  bindkey -v                 # Once.
fi
```

---

## Intent 10 — Prompt and Theme

### What it wants to achieve

Load and configure the Powerlevel10k prompt theme.

### Where it currently lives

- **`z86661-activate_prompt.sh`**: `activate_prompt()` — sets `ZSH_THEME`, sources `powerlevel10k.zsh-theme`, calls `load_my_powerlevel10k_now`
- **`z86660-activate_instant_prompt.sh`**: `activate_instant_prompt()` — **not called** in current boot chain

### Problems

1. **Instant prompt disabled**: Powerlevel10k's instant prompt feature (which makes the shell appear ready instantly by caching the prompt) is available but not used. The function exists but is never called.
2. **`ZSH_THEME` uses relative path**: `"../../powerlevel10k/powerlevel10k"` — fragile

### Proposed refactored implementation

```shell
# lib/prompt.sh — Powerlevel10k with instant prompt

ahmyzsh_init_prompt() {
  # Enable instant prompt (must happen early, before console output)
  local ip_cache="${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  [[ -r "$ip_cache" ]] && source "$ip_cache"
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

  # Load theme
  typeset -g ZSH_THEME="powerlevel10k/powerlevel10k"
  ahmyzsh_source "${POWERLEVEL10K}/powerlevel10k.zsh-theme"

  # Load user's p10k config
  [[ -r "${HOME}/.p10k.zsh" ]] && source "${HOME}/.p10k.zsh"
}
```

### Delegation

Called from the interactive branch. Instant prompt setup should be placed **before** any `echo` or `printf` in the interactive path.

---

## Intent 11 — Terminal Aesthetics Library

### What it wants to achieve

Provide ANSI escape code constants (colors, cursor movement, formatting) as shell variables for use in prompts, scripts, and debugging output.

### Where it currently lives

- **`core/layouts/00000-layouts.sh`**: 80+ ANSI color exports (FBK, FRD, FGR, ..., BBK, BRD, ...)
- **`core/layouts/00001-mycolors.sh`**: 256-color and true-color exports, cursor movement
- **`core/env/00000.sh`**: largely **duplicates** `layouts/` — same color variables re-exported

### Problems

1. **Duplication**: `core/env/00000.sh` and `core/layouts/00000-layouts.sh` export many of the same variables
2. **Loaded on every shell**: color constants are exported even for non-interactive shells
3. **160+ exports per boot**: each `export` is cheap individually but collectively adds up

### Proposed approach

- Consolidate into a single `lib/colors.sh`
- Gate behind `ahmyzsh_is_interactive` — non-interactive shells don't need color codes
- Use zsh `typeset -g` for read-only performance constants

---

## Intent 12 — Alias and Shortcut Library

### What it wants to achieve

Define shell aliases and navigation shortcuts for the user's daily workflow — cd shortcuts, tool aliases, project paths.

### Where it currently lives

- **`core/aliases/*.sh`**: 47 files covering navigation, git, npm, yarn, docker, kill, systemctl, sounds, tmux, neovim, etc.
- **`core/paths/00000-personal-project-paths.sh`**: project path exports + cd aliases

### Problems

1. **Loaded unconditionally**: all aliases load even for non-interactive shells — aliases are meaningless in scripts
2. **`core/paths/` mixes concerns**: `00000-personal-project-paths.sh` is 90% aliases (interactive concern) but lives in `paths/` (loaded for all shells)

### Proposed approach

- All alias loading should be gated behind `ahmyzsh_is_interactive`
- Personal project aliases should move from `core/paths/` to `core/aliases/`
- `core/paths/00000-init-paths.sh` (framework registry) is a legitimate non-interactive concern and should stay

---

## Intent 13 — Bytecode Compilation

### What it wants to achieve

Compile `.sh` files to `.zwc` bytecode (zsh wordcode) for faster sourcing.

### Where it currently lives

- **`core/functions/05000-zsh_compile.sh`**: `zsh_compile_all_R()`, `zsh_compile_all_M()`, `zsh_compile_all()`
- Called at the end of `SCIENTIA_ES_LUX_PRINCIPIUM()`

### Problems

1. **Runs on every interactive shell start**: does `find + zcompile` across the entire tree — potentially hundreds of files
2. **Uses `eval`**: `eval "zcompile -R ${line}"` — unnecessary; `zcompile -R "$line"` works
3. **No change detection**: recompiles everything even if nothing changed

### Proposed refactored implementation

```shell
# lib/compile.sh — Compile only when source files have changed

ahmyzsh_maybe_compile() {
  local sentinel="${AHMYZSH_CACHE}/last_compile_time"
  # Skip if compiled recently (within last hour)
  if [[ -f "$sentinel" ]]; then
    local age=$(( EPOCHSECONDS - $(stat -c %Y "$sentinel" 2>/dev/null || echo 0) ))
    (( age < 3600 )) && return 0
  fi
  # Find .sh files newer than sentinel
  local needs_compile=false
  if [[ -f "$sentinel" ]]; then
    local newer
    newer="$(find "${AHMYZSH}" -name '*.sh' -newer "$sentinel" -print -quit 2>/dev/null)"
    [[ -n "$newer" ]] && needs_compile=true
  else
    needs_compile=true
  fi
  if [[ "$needs_compile" == true ]]; then
    find "${AHMYZSH}/core" -name '*.sh' -print0 2>/dev/null | while IFS= read -r -d '' f; do
      zcompile -R "$f" 2>/dev/null
    done
    mkdir -p "$(dirname "$sentinel")"
    touch "$sentinel"
  fi
}
```

### Delegation

Called at the end of interactive setup, or via an explicit command. Should never block shell startup.

---

## Intent 14 — Reload and Hot-Refresh

### What it wants to achieve

Allow the user to reload aliases and configuration without restarting the shell.

### Where it currently lives

- **`MAIN.sh`**: checks `MAIN_INIT` to detect re-sourcing, calls `reload_alias_and_conf`
- **`MAIN-FUNCTIONS.sh`**: `alias reload_alias_and_conf="load_all_config_and_settings_files"`

### Problems

1. **Reload re-runs everything**: it re-sources all config files, not just the ones that changed
2. **No way to reload just aliases or just PATH**

### Proposed approach

Provide explicit reload commands:

```shell
ahmyzsh_reload_aliases()  { ahmyzsh_source_dir "${CORE_ALIASES}"; }
ahmyzsh_reload_path()     { ahmyzsh_init_path; }
ahmyzsh_reload_all()      { source "${AHMYZSH}/source-me-in-etc-zshenv.sh"; }
```

---

## Cross-Cutting Concerns

### Concern A: Timing as an orthogonal layer

Timing should be **opt-in** and **composable**. It's orthogonal to every other intent — any phase can be timed. The timer should wrap operations, not be embedded inside them.

### Concern B: Aesthetics gated by interactivity

All visual feedback (colors, boot indicators, timer display, sound playback) is only meaningful in interactive shells. Gate all aesthetic output behind `ahmyzsh_is_interactive`.

### Concern C: Idempotent sourcing

Files should be safe to source multiple times. Use guard variables (`[[ -n "${_LOADED_PATH_SH:-}" ]] && return`) or make files purely declarative (no side effects at top level).

### Concern D: Portability

Replace all hardcoded `/home/luxcium/` with `${HOME}`, `/projects/ahmyzsh` with `${AHMYZSH}`. Allow the framework to run on any machine by only depending on variables.

---

## Dependency Graph Between Intents

```
                    ┌──────────────┐
                    │  detect.sh   │  ← Must be first (no dependencies)
                    │   Intent 1   │
                    └──────┬───────┘
                           │
              ┌────────────┼────────────┐
              ▼            ▼            ▼
       ┌────────────┐ ┌──────────┐ ┌──────────────┐
       │ timer.sh   │ │locale.sh │ │ registry.sh  │
       │ Intent 2   │ │Intent 7  │ │  Intent 6    │
       └────────────┘ └──────────┘ └──────┬───────┘
                                          │
                                          ▼
                                   ┌────────────┐
                                   │  path.sh   │  ← Depends on registry vars
                                   │  Intent 4  │
                                   └──────┬─────┘
                                          │
                    ┌─────────────────────┤
                    │ NON-INTERACTIVE      │ INTERACTIVE
                    │ STOPS HERE           ▼
                    │              ┌──────────────────┐
                    │              │    prompt.sh     │  ← Intent 10 (instant prompt first)
                    │              └────────┬─────────┘
                    │                       ▼
                    │              ┌──────────────────┐
                    │              │  runtimes.sh     │  ← Intent 5
                    │              └────────┬─────────┘
                    │                       ▼
                    │              ┌──────────────────┐
                    │              │  interactive.sh  │  ← Intent 9 (OMZ, options, keys)
                    │              └────────┬─────────┘
                    │                       ▼
                    │              ┌──────────────────┐
                    │              │  aliases, colors │  ← Intents 11, 12
                    │              └────────┬─────────┘
                    │                       ▼
                    │              ┌──────────────────┐
                    │              │  compile.sh      │  ← Intent 13 (if needed)
                    │              └──────────────────┘
```

---

## Decoupling Strategy

### Step 1: Create `lib/` directory

Move cleanly factored implementations into `${AHMYZSH}/lib/`:

```
lib/
├── detect.sh       # Intent 1 — shell type detection
├── timer.sh        # Intent 2 — performance timing
├── registry.sh     # Intent 6 — framework variable registry
├── locale.sh       # Intent 7 — locale configuration
├── path.sh         # Intent 4 — PATH construction
├── loader.sh       # Intent 8 — file/function loading
├── runtimes.sh     # Intent 5 — conda/rbenv/rust/fnm
├── prompt.sh       # Intent 10 — Powerlevel10k
├── interactive.sh  # Intent 9 — OMZ, options, keybindings
├── colors.sh       # Intent 11 — ANSI constants
├── compile.sh      # Intent 13 — bytecode compilation
└── reload.sh       # Intent 14 — hot reload
```

### Step 2: Rewrite the orchestrator

Replace `source-me-in-etc-zshenv.sh` + `MAIN.sh` + `MAIN-FUNCTIONS.sh` with a single clean orchestrator (see [Critical Path Refactored](CRITICAL-PATH-REFACTORED.md)).

### Step 3: Keep `core/` for domain content

`core/aliases/`, `core/options/`, `core/bin/` stay as they are — they're domain content, not infrastructure. They're loaded by the orchestrator via `ahmyzsh_source_dir`.

### Step 4: Deprecate old files

Mark old files as deprecated but don't delete them yet. Create a migration guide.

---

*← Back to [Repository README](../README.md) | [Optimization Plan](OPTIMIZATION-PLAN.md) | [Critical Path Refactored](CRITICAL-PATH-REFACTORED.md)*
