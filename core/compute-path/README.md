# core/compute-path/ — PATH Construction and Caching

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory manages the construction, caching, and extended configuration of the shell `PATH` variable. It is the most performance-sensitive part of AHMYZSH because its code runs on every shell invocation via `/etc/zshenv`.

---

## Table of Contents

- [Files](#files)
- [PATH Construction Strategy](#path-construction-strategy)
- [Cache Mechanism](#cache-mechanism)
- [Functions Reference](#functions-reference)
- [Known Issues](#known-issues)

---

## Files

| File | Purpose |
|------|---------|
| [`path.sh`](#pathsh) | Core PATH building functions and top-level exports |
| [`conda-initialize.sh`](#conda-initializesh) | Conda environment initialization |
| [`anexes.sh`](#anexessh) | Advanced cache management, path utilities, FNM/rbenv/rust helpers |

---

## `path.sh`

**Sourced by:** `source-me-in-etc-zshenv.sh` (twice) and `load_all_config_and_settings_files()` (once more).

> ⚠️ **Warning:** This file is sourced **three times** per boot. See [Optimization Plan — Issue 1](../../documentation/OPTIMIZATION-PLAN.md#issue-1-pathsh-sourced-three-times).

### Top-Level Exports (run on every source)

These exports execute at file-level, not inside any function:

| Variable | Value | Purpose |
|----------|-------|---------|
| `CUDA_VERSION` | `cuda-12.4` | CUDA toolkit version |
| `CUDA_HOME` | `/usr/local/cuda-12.4` | CUDA installation root |
| `CUDA_BIN` | `${CUDA_HOME}/bin` | CUDA binaries |
| `CUDA_LIB` | `${CUDA_HOME}/lib64` | CUDA shared libraries |
| `FNM_PATH` | `~/.local/share/fnm` | Fast Node Manager data directory |
| `PATH_BAK_0` | *(backup of PATH at source time)* | PATH snapshot for debugging |
| `PNPM_HOME` | `~/.local/share/pnpm` | pnpm global package directory |
| `RBENV_PATH` | `~/.rbenv/bin` | rbenv binary location |
| `DOTNET_ROOT` | `~/.dotnet` | .NET SDK root |
| `LD_LIBRARY_PATH` | `${CUDA_LIB}:${LD_LIBRARY_PATH}` | Dynamic linker path including CUDA |

### Functions

#### `add_to_path_(dir)`

Prepends `dir` to `PATH` if the directory exists.

> ⚠️ **Bug:** Operator precedence error. See [Optimization Plan — Issue 8](../../documentation/OPTIMIZATION-PLAN.md#issue-8-add_to_path_-operator-precedence-bug).

```shell
# Current (buggy):
[ -z "$1" ] || [ -d "$1" ] && export PATH="${1}${PATH:+:${PATH}}"
# Should be:
[ -n "$1" ] && [ -d "$1" ] && export PATH="${1}${PATH:+:${PATH}}"
```

#### `append_to_path_(dir)`

Appends `dir` to `PATH`. Has the same operator precedence bug as `add_to_path_()`.

#### `append_to_path(dir)` / `prepend_to_path(dir)`

Correct versions using `if/then` syntax. These are the preferred functions to use:

```shell
function prepend_to_path() {
  if [ -n "$1" ] && [ -d "$1" ]; then
    export PATH="${1}${PATH:+:${PATH}}"
  fi
}
```

#### `dedup_pathvar_(varname)`

Deduplicates a colon-separated variable (e.g., `PATH`) using `perl`:

```shell
dedup_pathvar_ PATH
```

Uses `perl -e 'print join(":", grep { !$seen{$_}++ } split(/:/, $ENV{...}))'`.

#### `__compute_extended_path()`

The main PATH builder. Called once during boot by `source-me-in-etc-zshenv.sh`. Performs:

1. ~25 `add_to_path_()` calls covering:
   - CUDA binaries
   - FNM, PNPM
   - rbenv
   - Cargo/Rust
   - Conda
   - `/usr/local/bin`, `/usr/local/sbin`
   - Various tool-specific directories
2. Calls `conda_init_esoteric-argentum()` — heavy Conda init
3. Calls `rbenv_()` — heavy rbenv init
4. Calls `rust_up_()` — sources Cargo env

> ⚠️ **Warning:** This function runs even when PATH is loaded from cache. See [Optimization Plan — Issue 3](../../documentation/OPTIMIZATION-PLAN.md#issue-3-heavy-__compute_extended_path-on-every-boot).

#### `set_path()`

Calls `__append_bin_to_path()` + `__compute_extended_path()` + `__dedup_path()`. Used by `cache_path()`.

#### `cache_path()`

Builds the full PATH via `set_path()` then writes `export PATH=...` to `~/.cache/ahmyzsh/path.env`.

```shell
cache_path() {
  set_path
  # Current code in path.sh:
  # echo "export PATH=$PATH" > "${CACHED_PATH}"   # unquoted, see Issue 13
  # Proposed safe form:
  echo "export PATH=\"${PATH}\"" > "${CACHED_PATH}"
}
```

#### `reload_path()`

Re-sources `path.sh`, recomputes, and updates the cache. Available as the `reloadpath` alias.

#### `usenvm()`

Loads NVM (Node Version Manager). Currently defined but not called in the boot chain (FNM is used instead).

#### `rbenv_()`

```shell
rbenv_() { eval "$(rbenv init -)"; }
```

#### `rust_up_()`

```shell
rust_up_() {
  add_to_path_ "${HOME}/.cargo/bin"
  source "${HOME}/.cargo/env"
}
```

#### `__append_sbin_to_path()` / `__append_bin_to_path()`

Build the base PATH starting from `/usr/local/sbin` or `/usr/local/bin` respectively, appending standard system directories.

#### `__dedup_path()`

Deduplicates the final PATH using `dedup_pathvar_ PATH`.

### Aliases

| Alias | Command | Purpose |
|-------|---------|---------|
| `add_to_path` | `add_to_path_` | Shorthand for path prepend |
| `add_sbin` | `add_to_path_ /usr/local/sbin` | Add sbin to PATH |
| `sbin_path` | `set_sbin_path` | Build sbin-first PATH |
| `set_sbin` | `set_sbin_path` | Same as above |

---

## `conda-initialize.sh`

### Functions

#### `conda_init_esoteric-argentum()`

Initializes the Conda environment by running:

```shell
eval "$(conda shell.bash hook)"
```

This forks Python/conda and can add 50–200ms to startup time. Called from within `__compute_extended_path()`.

> ⚠️ **Warning:** Function name uses a hyphen (`conda_init_esoteric-argentum`) which is not valid in all shells (though Zsh allows it). The name is also extremely non-descriptive.

> 📝 **Note:** The hardcoded reference to `anaconda3` assumes Anaconda is installed at the default location. If using Miniconda or a non-standard path, this will silently fail.

---

## `anexes.sh`

Supplementary path utilities and advanced caching.

### Functions

| Function | Purpose |
|----------|---------|
| `cached_path_log()` | Logs the current cached PATH to a file |
| `set_path_hash_()` | Generates and stores a hash of the current PATH |
| `echo_path_()` | Prints PATH entries one per line |
| `echo_path()` | Alias for `echo_path_()` |
| `echo_cached_path()` | Prints the contents of the PATH cache file |
| `echo_path_hash()` | Displays the stored PATH hash |
| `seting_cache_path_()` | Advanced cache manager: compares hash, updates if changed, logs |
| `compute_path()` | Wrapper for `set_path()` |
| `compute_spath()` | Wrapper for `set_sbin_path()` |
| `fnm_()` | Initializes FNM: `eval "$(fnm env --use-on-cd)"` + completions |
| `rbenv_()` | Initializes rbenv: `eval "$(rbenv init -)"` (duplicate of path.sh version) |
| `rust_up_()` | Adds cargo/bin and sources cargo/env (duplicate of path.sh version) |
| `getstamp_()` | Generates a sha512sum-based stamp for cache invalidation |

### Aliases

| Alias | Command |
|-------|---------|
| `refresh_path` | `compute_path` |
| `refresh_spath` | `compute_spath` |
| `reload_spath` | `reload_sbin_path` |

> ⚠️ **Warning:** `rbenv_()` and `rust_up_()` are defined in both `path.sh` and `anexes.sh`. The later definition (from `anexes.sh`) will overwrite the earlier one. This duplication should be resolved by consolidating to a single definition.

---

## PATH Construction Strategy

```
/etc/zshenv invocation
│
├── PATH cache exists? ──YES──► source ~/.cache/ahmyzsh/path.env
│                                (fast — just sets PATH env var)
│
└──NO──► source core/compute-path/path.sh
         call cache_path()
           └── set_path()
                 ├── __append_bin_to_path()  (standard system dirs)
                 ├── __compute_extended_path()
                 │     ├── 25× add_to_path_() calls
                 │     ├── conda init (eval fork)
                 │     ├── rbenv init (eval fork)
                 │     └── rust init (source)
                 └── __dedup_path()
         write export PATH="..." to ~/.cache/ahmyzsh/path.env
```

---

## Known Issues

1. **Three-fold sourcing** of `path.sh` — [Issue 1](../../documentation/OPTIMIZATION-PLAN.md#issue-1-pathsh-sourced-three-times)
2. **`__compute_extended_path` runs even when cache is valid** — [Issue 3](../../documentation/OPTIMIZATION-PLAN.md#issue-3-heavy-__compute_extended_path-on-every-boot)
3. **`add_to_path_()` operator precedence bug** — [Issue 8](../../documentation/OPTIMIZATION-PLAN.md#issue-8-add_to_path_-operator-precedence-bug)
4. **Duplicate function definitions** between `path.sh` and `anexes.sh`
5. **`conda_init_esoteric-argentum` uses an invalid function name** for POSIX sh (works in zsh/bash)

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
