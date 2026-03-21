# AHMYZSH Optimization Plan

> 🔍 **Analysis:** This document catalogues all identified performance bottlenecks, bugs, and architectural issues in the AHMYZSH boot chain, along with concrete remediation strategies.

← Back to [Repository README](../README.md)

---

## Table of Contents

- [Executive Summary](#executive-summary)
- [Issue 1: path.sh Sourced Three Times](#issue-1-pathsh-sourced-three-times)
- [Issue 2: Excessive date +%s%N Forks](#issue-2-excessive-date-sn-forks)
- [Issue 3: Heavy __compute_extended_path on Every Boot](#issue-3-heavy-__compute_extended_path-on-every-boot)
- [Issue 4: zsh_compile_all_R on Every Interactive Start](#issue-4-zsh_compile_all_r-on-every-interactive-start)
- [Issue 5: bindkey -v Set Three Times](#issue-5-bindkey--v-set-three-times)
- [Issue 6: call_() Uses eval](#issue-6-call_-uses-eval)
- [Issue 7: Non-Interactive Shells Run Expensive Phases](#issue-7-non-interactive-shells-run-expensive-phases)
- [Issue 8: add_to_path_() Operator Precedence Bug](#issue-8-add_to_path_-operator-precedence-bug)
- [Issue 9: Powerlevel10k Instant Prompt Disabled](#issue-9-powerlevel10k-instant-prompt-disabled)
- [Issue 10: __LOCALE__() Sets Variables Twice](#issue-10-__locale__-sets-variables-twice)
- [Additional Observations](#additional-observations)
- [Priority Remediation Roadmap](#priority-remediation-roadmap)

---

## Executive Summary

The AHMYZSH boot chain executes on every shell invocation (including non-interactive ones) and performs several expensive operations unconditionally. The most impactful issues are:

1. Non-interactive shells bearing the full initialization cost (PATH computation, conda init, rbenv init, rust init)
2. PATH file sourced 3× per boot
3. `zsh_compile_all_R` running a filesystem `find` + `zcompile` on every interactive shell start
4. `__compute_extended_path` calling conda/rbenv/rust on every boot even when the PATH cache is present

A conservative estimate places the unnecessary overhead at **200–800ms per interactive shell start** and **100–400ms per non-interactive shell start**, depending on disk speed and which runtimes are installed.

---

## Issue 1: path.sh Sourced Three Times

**Severity:** Medium  
**Location:** `source-me-in-etc-zshenv.sh`, `core/compute-path/path.sh`, `MAIN-FUNCTIONS.sh` → `load_all_config_and_settings_files()`

### Description

`core/compute-path/path.sh` is sourced on three separate occasions during a single boot:

1. Inside the cache-miss branch of `source-me-in-etc-zshenv.sh` (to build and cache the PATH)
2. Unconditionally, two lines later in `source-me-in-etc-zshenv.sh`
3. Again via `load_all_config_and_settings_files()` which sources all `*.sh` in `core/compute-path/`

Each sourcing re-runs the top-level export statements in `path.sh` and re-defines all functions.

### Impact

- Redundant function definitions (harmless but wasteful)
- Top-level export statements run 3× (`CUDA_HOME`, `FNM_PATH`, `PNPM_HOME`, etc.)
- If sourcing triggers any side effects, they run 3×

### Remediation

```shell
# In source-me-in-etc-zshenv.sh, replace:
if [ -f "${CACHED_PATH}" ]; then
  source "${CACHED_PATH}"
else
  source "${AHMYZSH}/core/compute-path/path.sh"
  mkdir -p "${AHMYZSH_CACHE}"
  cache_path
fi
# source "${AHMYZSH}/core/compute-path/path.sh"   # ← REMOVE this unconditional source
source "${AHMYZSH}/MAIN-FUNCTIONS.sh"
source "${AHMYZSH}/core/compute-path/conda-initialize.sh"
__compute_extended_path
```

Use a guard variable to prevent double-sourcing from `load_all_config_and_settings_files()`:

```shell
# At top of core/compute-path/path.sh:
[[ -n "${_PATH_SH_LOADED}" ]] && return 0
export _PATH_SH_LOADED=1
```

---

## Issue 2: Excessive date +%s%N Forks

**Severity:** Medium  
**Location:** `MAIN-FUNCTIONS.sh` — `timer_now()`, `timer_from_then()`, `timer_all()`; also `source-me-in-etc-zshenv.sh`

### Description

Every call to `timer_now()`, `timer_from_then()`, and `timer_all()` forks a `date +%s%N` subprocess. These timer functions are called:

- Once in `source-me-in-etc-zshenv.sh` to set `TIMER_ALL_THEN`
- In `call_()` around every function invocation when `VERBOSA > 0`
- In `Load_all_files_d_v()` for each file when `VERBOSA > 15`
- Potentially 6+ times per boot

Each `date` fork costs approximately 2–5ms on a typical Linux system.

### Impact

At default `VERBOSA=1`, every `call_()` invocation triggers two `date` forks. With ~8 `call_()` invocations in the boot chain, this adds ~30–80ms of pure fork overhead.

### Remediation

Replace `date +%s%N` with the Zsh built-in `$EPOCHREALTIME` (available since Zsh 5.1, requires `zmodload zsh/datetime`):

```shell
# Load once at startup:
zmodload zsh/datetime

# Replace:
timer_now() { /usr/bin/date +%s%N; }

# With:
timer_now() { echo $(( EPOCHREALTIME * 1000 )); }
# Or more efficiently:
timer_now() { printf '%.0f\n' $(( EPOCHREALTIME * 1000 )); }
```

This eliminates all subprocess forks for timing, reducing overhead to near-zero.

---

## Issue 3: Heavy `__compute_extended_path` on Every Boot

**Severity:** High  
**Location:** `source-me-in-etc-zshenv.sh`, `core/compute-path/path.sh`

### Description

`__compute_extended_path()` is called unconditionally on every boot, even when the PATH cache (`~/.cache/ahmyzsh/path.env`) is used. It performs:

1. ~25 `add_to_path_()` calls (these are fast)
2. `conda_init_esoteric-argentum()` — runs `eval "$(conda shell.bash hook)"` which forks conda
3. `rbenv_()` — runs `eval "$(rbenv init -)"` which forks rbenv
4. `rust_up_()` — sources `~/.cargo/env`

The conda and rbenv initialisations each fork a subprocess, load Python/Ruby, and produce ~10–50ms of startup cost each.

### Current cache logic flaw

The cache is checked in `source-me-in-etc-zshenv.sh` to load the PATH, but `__compute_extended_path` is then called anyway on line 40+, overriding PATH portions and re-running conda/rbenv/rust init.

### Impact

Estimated **100–200ms** of extra startup time per shell on a system with conda and rbenv installed.

### Remediation

**Option A** — Skip `__compute_extended_path` when cache is fresh:

```shell
if [ -f "${CACHED_PATH}" ]; then
  source "${CACHED_PATH}"
  # PATH is already fully built and cached — skip heavy computation
else
  source "${AHMYZSH}/core/compute-path/path.sh"
  mkdir -p "${AHMYZSH_CACHE}"
  __compute_extended_path
  cache_path
fi
```

**Option B** — Use a hash-based staleness check (already partially implemented in `core/compute-path/anexes.sh` via `seting_cache_path_()`):

```shell
# Only recompute if relevant tools have changed since last cache
if ! cache_is_fresh; then
  __compute_extended_path
  cache_path
fi
```

**Option C** — Lazy-load conda/rbenv/rust only on first use:

```shell
# Replace rbenv_() eager init with an autoloaded function
rbenv() {
  unfunction rbenv
  eval "$(command rbenv init -)"
  rbenv "$@"
}
```

---

## Issue 4: zsh_compile_all_R on Every Interactive Start

**Severity:** High  
**Location:** `MAIN.sh` → `SCIENTIA_ES_LUX_PRINCIPIUM()`, `core/functions/05000-zsh_compile.sh`

### Description

`zsh_compile_all_R()` runs `find "${AHMYZSH}" -name "*.sh" -exec zcompile -R {} \;` (or similar) on **every interactive shell start**. This:

1. Traverses the entire AHMYZSH directory tree
2. Compiles every `.sh` file to `.zwc` format
3. Takes 200–2000ms depending on the number of files and disk speed
4. Is entirely unnecessary if the source files haven't changed

### Impact

This is potentially the single largest contributor to interactive shell startup latency. With ~300+ `.sh` files in the repository, a cold-run `find` + `zcompile` loop can add 500ms–2s to every new terminal window.

### Remediation

Compile only when source files have changed, using a modification-time sentinel:

```shell
zsh_compile_if_stale() {
  local sentinel="${AHMYZSH_CACHE}/.last_compile"
  # Find any .sh file newer than the sentinel
  if [[ -z "$(find "${AHMYZSH}/core" -name "*.sh" -newer "${sentinel}" 2>/dev/null | head -1)" ]]; then
    return 0  # Nothing changed, skip compilation
  fi
  zsh_compile_all_R
  touch "${sentinel}"
}
```

Call `zsh_compile_if_stale` instead of `zsh_compile_all_R` in `SCIENTIA_ES_LUX_PRINCIPIUM()`.

Alternatively, move compilation to a background process:

```shell
(zsh_compile_all_R &)  # Compile in background, don't block shell start
```

---

## Issue 5: bindkey -v Set Three Times

**Severity:** Low  
**Location:** `MAIN_SETTINGS.sh`, `MAIN.sh` (direct), `core/functions/z88888-load_ohmyzsh.sh`

### Description

`bindkey -v` (activate vi-mode key bindings) is executed three separate times during a single interactive boot:

1. Inside `MAIN_SETTINGS()` in `MAIN_SETTINGS.sh`
2. At the end of `SCIENTIA_ES_LUX_PRINCIPIUM()` in `MAIN.sh`
3. Inside `load_oh_my_zsh()` in `core/functions/z88888-load_ohmyzsh.sh`

### Impact

`bindkey -v` is idempotent, so there is no functional difference. However, it is confusing to future maintainers and represents untracked duplication.

### Remediation

Remove the two redundant calls. Keep the one in `MAIN_SETTINGS.sh` (called earliest) and remove the calls in `MAIN.sh` and `load_oh_my_zsh()`.

---

## Issue 6: call_() Uses eval

**Severity:** Medium  
**Location:** `MAIN-FUNCTIONS.sh`

### Description

```shell
function call_() {
  # ...
  eval "${1}"
  # ...
}
```

`call_()` uses `eval` to invoke functions by name. This has two problems:

1. **Performance:** `eval` forces a new parse of the string on every call
2. **Security:** Any string passed to `call_()` is executed as shell code. If the function name is ever derived from user input or an environment variable, this is a command injection vector

### Impact

All boot-phase function invocations use `call_()`: `call_ load_all_config_and_settings_files`, `call_ fnm_`, etc.

### Remediation

Replace `eval "${1}"` with direct invocation:

```shell
function call_() {
  local fn="${1}"
  shift
  if declare -f "${fn}" > /dev/null 2>&1; then
    "${fn}" "$@"
  else
    echo "call_: function '${fn}' not found" >&2
    return 1
  fi
}
```

This is both faster (no eval) and safer (validates function existence before calling).

---

## Issue 7: Non-Interactive Shells Run Expensive Phases

**Severity:** High  
**Location:** `source-me-in-etc-zshenv.sh`

### Description

`source-me-in-etc-zshenv.sh` is sourced via `/etc/zshenv`, which runs on **every** Zsh invocation — including:
- Non-interactive scripts (`zsh script.sh`)
- SSH remote commands (`ssh host 'zsh -c command'`)
- Cron jobs running under Zsh
- Subshells spawned by interactive Zsh

All of these execute the expensive PATH computation, conda initialization, and function loading before the `isinteractive` guard in `MAIN.sh` fires.

### Impact

Every non-interactive zsh invocation pays the full framework startup cost, which can be 200–500ms. For systems running automated scripts or frequent subshells, this is a significant tax.

### Remediation

Add an early non-interactive guard at the top of `source-me-in-etc-zshenv.sh`:

```shell
# Exit early for non-interactive, non-login shells
# (Only skip if truly non-interactive AND not a login shell)
case $- in
  *i*) ;;  # interactive — proceed
  *)
    # Only load minimal PATH for non-interactive shells
    [ -f "${HOME}/.cache/ahmyzsh/path.env" ] && source "${HOME}/.cache/ahmyzsh/path.env"
    return 0
    ;;
esac
```

Alternatively, move the heavy work to `.zshrc` (which only runs for interactive shells) and keep `/etc/zshenv` minimal (only PATH and essential exports).

---

## Issue 8: add_to_path_() Operator Precedence Bug

**Severity:** High  
**Location:** `core/compute-path/path.sh`

### Description

```shell
function add_to_path_() {
  [ -z "$1" ] || [ -d "$1" ] && export PATH="${1}${PATH:+:${PATH}}"
}
```

Due to shell operator precedence, `||` and `&&` are left-associative and equal precedence. This expression parses as:

```
( [ -z "$1" ] || [ -d "$1" ] ) && export PATH=...
```

The **intended** behaviour is: "only add to PATH if `$1` is non-empty AND is a valid directory."

The **actual** behaviour is: "add to PATH if `$1` is empty OR if `$1` is a valid directory." When `$1` is empty, the first condition is true, the `||` short-circuits, and `export PATH="${1}${PATH:+:${PATH}}"` is executed with `$1=""`, prepending nothing meaningful but still technically executing the export.

The same bug exists in `append_to_path_()`.

### Impact

- Calling `add_to_path_ ""` silently succeeds instead of being a no-op
- Could theoretically corrupt PATH if called with an empty argument in a context where PATH is rebuilt

### Remediation

```shell
function add_to_path_() {
  [ -n "$1" ] && [ -d "$1" ] && export PATH="${1}${PATH:+:${PATH}}"
}

function append_to_path_() {
  [ -n "$1" ] && [ -d "$1" ] && export PATH="${PATH:+${PATH}:}${1}"
}
```

The correct versions (`append_to_path()` and `prepend_to_path()` — without trailing underscore) already exist in the same file and use the proper `if/then` syntax.

---

## Issue 9: Powerlevel10k Instant Prompt Disabled

**Severity:** Medium  
**Location:** `core/functions/z86660-activate_instant_prompt.sh`

### Description

The Powerlevel10k instant prompt feature — which can reduce perceived shell startup time to near-zero by rendering the prompt immediately before the rest of the init runs — is commented out:

```shell
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
```

### Impact

Users see a blank terminal until the full init sequence completes, which may take 500ms–2s. Instant prompt would make the terminal feel instantaneous.

### Remediation

1. Uncomment the instant prompt block in `z86660-activate_instant_prompt.sh`
2. Ensure it is called **before** any output-producing initialization
3. Move any code that requires console input (password prompts) above the instant prompt block

```shell
function activate_instant_prompt() {
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
}
```

---

## Issue 10: __LOCALE__() Sets Variables Twice

**Severity:** Low  
**Location:** `MAIN_SETTINGS.sh`

### Description

`__LOCALE__()` first explicitly assigns all `LC_*` variables, then a few lines later uses the `${VAR:=value}` default-assignment syntax for the same variables. Because they were just assigned, the `:=` assignments are no-ops.

### Remediation

Remove the duplicate assignments. Use either explicit assignment or default-value syntax, not both:

```shell
function __LOCALE__() {
  local lang="fr_CA.UTF-8"
  export LANG="${lang}"
  export LC_ALL="${lang}"
  export LC_CTYPE="${lang}"
  export LC_MESSAGES="${lang}"
  # ... etc
}
```

---

## Additional Observations

### Shebang Mismatch

`source-me-in-etc-zshenv.sh` has `#!/usr/bin/env bash` but is used in a Zsh context. While sourcing a bash-shebang file from Zsh works (the shebang is ignored when the file is sourced), it is misleading and should be changed to `#!/usr/bin/env zsh` or `#!/usr/bin/env sh`.

### Hardcoded Paths

Many files hardcode paths like `/projects/ahmyzsh`, `/home/luxcium/`, `/media/luxcium/`, etc. These prevent the framework from being portable to other users or machines without significant find-and-replace effort. Using `${AHMYZSH}` and `${HOME}` consistently would improve portability.

### VERBOSA Not Used for Gating

`VERBOSA=1` is set but the only meaningful check is `VERBOSA > 15` for switching between verbose/silent loaders. The `1` value is never actually tested, making it effectively dead configuration.

### Commented-Out Code

There is an extensive amount of commented-out code throughout the codebase — old aliases, alternative implementations, debugging echoes. This should be cleaned up or moved to git history.

### `Load_all_files_d.sh` Contains System Journal Data

The file `core/Load_all_files_d.sh` appears to contain systemd journal/service tree output embedded as comments, not actual shell function definitions. This seems like an accidental paste and should be investigated.

---

## Priority Remediation Roadmap

### Phase 1 — Quick Wins (< 1 hour each)

| Task | Expected Benefit |
|------|-----------------|
| Fix `add_to_path_()` / `append_to_path_()` bug | Correctness |
| Remove duplicate `bindkey -v` calls | Cleanliness |
| Remove redundant second source of `path.sh` in `source-me-in-etc-zshenv.sh` | Minor speedup |
| Remove duplicate locale assignments in `__LOCALE__()` | Cleanliness |
| Fix shebang in `source-me-in-etc-zshenv.sh` | Correctness |

### Phase 2 — Performance (2–4 hours each)

| Task | Expected Benefit |
|------|-----------------|
| Replace `date +%s%N` forks with `$EPOCHREALTIME` | ~30–80ms saved |
| Guard `path.sh` against re-sourcing with `_PATH_SH_LOADED` | Minor speedup |
| Skip `__compute_extended_path` when PATH cache is valid | ~100–200ms saved |
| Enable Powerlevel10k instant prompt | Perceived startup near-zero |

### Phase 3 — Architecture (4–8 hours each)

| Task | Expected Benefit |
|------|-----------------|
| Add non-interactive early-return in `source-me-in-etc-zshenv.sh` | ~200–500ms for scripts |
| Replace `call_()` eval with direct invocation | Security + minor speedup |
| Change `zsh_compile_all_R` to run only on change (sentinel file) | ~200ms–2s saved |
| Implement lazy-load for conda/rbenv/rust | ~100–300ms saved |

### Phase 4 — Portability (ongoing)

| Task | Expected Benefit |
|------|-----------------|
| Replace all hardcoded `/projects/ahmyzsh` with `${AHMYZSH}` | Portability |
| Replace all hardcoded `/home/luxcium/` with `${HOME}` | Portability |
| Remove or archive large blocks of commented-out code | Maintainability |
| Clean up `core/Load_all_files_d.sh` | Correctness |

---

*← Back to [Repository README](../README.md)*
