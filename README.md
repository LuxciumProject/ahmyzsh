# AHMYZSH — Custom Zsh Shell Environment Framework

> 📝 **Note:** *† Scientia es lux principium✨ ™* — "Knowledge is the beginning of light" — the guiding motto of this project.

**AHMYZSH** is a comprehensive, performance-aware Zsh shell configuration framework that wraps [Oh My Zsh](https://ohmyz.sh/) and [Powerlevel10k](https://github.com/romkatv/powerlevel10k) with a structured, layered initialization system, extended path management, alias libraries, custom functions, and tooling for a developer workstation running Fedora Linux with NVIDIA GPU, CUDA, Node.js (via FNM), Python (via Conda), Ruby (via rbenv), and Rust (via Cargo).

---

## Table of Contents

- [Boot Chain](#boot-chain)
- [Repository Structure](#repository-structure)
- [Key Entry Points](#key-entry-points)
- [Core Subsystems](#core-subsystems)
- [Plugin & Theme Integration](#plugin--theme-integration)
- [Known Issues & Technical Debt](#known-issues--technical-debt)
- [Getting Started](#getting-started)
- [Environment Variables](#environment-variables)
- [Contributing](#contributing)

---

## Boot Chain

The initialization sequence is triggered on every shell start via `/etc/zshenv`:

```
/etc/zshenv
  └── source-me-in-etc-zshenv.sh
        ├── Sets TIMER_ALL_THEN (date fork)
        ├── Sets AHMYZSH, AHMYZSH_CACHE, LANG, KDE/Qt vars
        ├── PATH cache: ~/.cache/ahmyzsh/path.env (fast) OR core/compute-path/path.sh (slow)
        ├── Sources MAIN-FUNCTIONS.sh
        ├── Sources core/compute-path/path.sh  ← sourced again (redundant)
        ├── Sources core/compute-path/conda-initialize.sh
        ├── Calls __compute_extended_path
        └── Sources MAIN.sh → calls SCIENTIA_ES_LUX_PRINCIPIUM()
```

```
SCIENTIA_ES_LUX_PRINCIPIUM()  [MAIN.sh]
  ├── Loads MAIN_SETTINGS.sh → MAIN_SETTINGS()
  ├── Calls load_all_config_and_settings_files()  [MAIN-FUNCTIONS.sh]
  │     ├── Sources core/paths/*.sh
  │     ├── Sources core/layouts/*.sh
  │     ├── Sources core/compute-path/*.sh
  │     ├── Sources core/functions/*.sh
  │     ├── Sources core/aliases/*.sh
  │     └── Sources core/env/*.sh
  ├── Sources ~/.env
  ├── Calls fnm_()
  ├── isinteractive || return 0   ← NON-INTERACTIVE SHELLS STOP HERE
  ├── activate_prompt()           ← Powerlevel10k
  ├── load_oh_my_zsh()
  ├── load_options_list()
  ├── load_options_main()
  ├── load_autosuggest()
  ├── load_autocomplete()
  ├── compaudit | xargs chmod g-w,o-w
  ├── zsh_compile_all_R()
  └── bindkey -v
```

> ⚠️ **Warning:** Non-interactive shells (scripts, SSH commands, cron jobs) still execute phases 1–5 of the boot chain, including expensive PATH computation and conda initialization, before the `isinteractive` guard fires. This is a significant performance concern.

---

## Repository Structure

```
ahmyzsh/
├── MAIN.sh                        # Bootstrap entry point; defines SCIENTIA_ES_LUX_PRINCIPIUM()
├── MAIN-FUNCTIONS.sh              # Core loader functions (load_, call_, Load_all_files_d, etc.)
├── MAIN_SETTINGS.sh               # Environment defaults, locale, bindkey -v
├── source-me-in-etc-zshenv.sh     # /etc/zshenv hook — first file executed
├── core/                          # All shell configuration modules
│   ├── aliases/                   # Alias definitions (navigation, tools, system, media)
│   ├── bin/                       # Executable utility scripts (~170+)
│   ├── complete.d/                # Zsh autocompletion setup
│   ├── compute-path/              # PATH construction and caching
│   ├── env/                       # Environment variable setup
│   ├── functions/                 # Shell functions library
│   ├── layouts/                   # ANSI color/formatting exports
│   ├── options/                   # Zsh setopt/unsetopt (one file per option)
│   ├── paths/                     # Path variable exports (AHMYZSH_CORE, CORE_*, etc.)
│   ├── scripts/                   # One-off utility/admin scripts
│   └── sources/                   # Files intended to be sourced (btop, gpu-thermal-brightness)
├── ohmyzsh/                       # Oh My Zsh installation (submodule/clone)
├── plugins/                       # Additional Zsh plugins
├── powerlevel10k/                 # Powerlevel10k theme
├── themes/                        # Custom/additional themes
├── tmux/                          # Custom tmux configuration
├── custom-tmux/                   # Additional tmux customizations
├── documentation/                 # Developer guides and plans
├── memory-bank/                   # Project context and progress tracking
├── templates/                     # Configuration and analysis templates
└── settings/                      # User-specific settings files
```

### Child README Index

| Directory | README |
|-----------|--------|
| `core/` | [core/README.md](core/README.md) |
| `core/aliases/` | [core/aliases/README.md](core/aliases/README.md) |
| `core/bin/` | [core/bin/README.md](core/bin/README.md) |
| `core/complete.d/` | [core/complete.d/README.md](core/complete.d/README.md) |
| `core/compute-path/` | [core/compute-path/README.md](core/compute-path/README.md) |
| `core/env/` | [core/env/README.md](core/env/README.md) |
| `core/functions/` | [core/functions/README.md](core/functions/README.md) |
| `core/layouts/` | [core/layouts/README.md](core/layouts/README.md) |
| `core/options/` | [core/options/README.md](core/options/README.md) |
| `core/paths/` | [core/paths/README.md](core/paths/README.md) |
| `core/scripts/` | [core/scripts/README.md](core/scripts/README.md) |
| `core/sources/` | [core/sources/README.md](core/sources/README.md) |

---

## Key Entry Points

### `source-me-in-etc-zshenv.sh`

The system-level entry point. Add to `/etc/zshenv`:

```shell
source /projects/ahmyzsh/source-me-in-etc-zshenv.sh
```

This file runs on **every** zsh invocation (interactive, non-interactive, login, non-login), which makes its performance critical.

### `MAIN.sh`

Defines `SCIENTIA_ES_LUX_PRINCIPIUM()`, the main orchestrator. Also defines `noop()`, `prompt_()`, and `load_error_()`. Sets `VERBOSA=1` and `set +m` (disables job control notifications).

### `MAIN-FUNCTIONS.sh`

The loader infrastructure. Key functions:

| Function | Purpose |
|----------|---------|
| `load_all_config_and_settings_files()` | Sources all `*.sh` files in core subdirectories |
| `Load_all_files_d(dir)` | Sources all `*.sh` in a directory silently |
| `Load_all_files_d_v(dir)` | Same as above but with verbose timer output |
| `load_(file, fn)` | Sources a file then calls a function by name |
| `call_(fn)` | Calls a function using `eval` (with timing) |
| `source_(file)` | Sources a file with basic error handling |
| `timer_now()` | Returns current epoch in nanoseconds (forks `date`) |
| `timer_(start)` | Returns ms elapsed since `start` |
| `timer_all()` | Returns ms elapsed since `TIMER_ALL_THEN` |

> ⚠️ **Warning:** `call_()` uses `eval "${1}"` — this is both slower and less secure than direct invocation. Any untrusted string passed to `call_()` would execute arbitrary code.

### `MAIN_SETTINGS.sh`

Defines `MAIN_SETTINGS()`, called early in the boot chain:

- Calls `my_envs()` — sets FNM/Node version aliases, Ruby/Perl/Conda env vars, GitHub username, port numbers
- Sets `bindkey -v` ← **first of three redundant calls**
- Sets defaults: `VERBOSA=1`, `AHMYZSH`, `EDITOR=nvim`, `PAGER=less`, `LESS`, `MANPAGER`
- Calls `__LOCALE__()` — sets all `LC_*` to `fr_CA.UTF-8`
- Exports all variables

> ⚠️ **Warning:** `__LOCALE__()` sets locale variables twice — once explicitly and once using the `:` default-value syntax — which is redundant.

---

## Core Subsystems

### PATH Management — `core/compute-path/`

See [core/compute-path/README.md](core/compute-path/README.md).

The PATH is built by `__compute_extended_path()` which chains:
1. Adds 25+ directories via `add_to_path_()`
2. Initialises Conda via `conda_init_esoteric-argentum()`
3. Initialises rbenv via `rbenv_()`
4. Initialises Rust via `rust_up_()`

Results are cached to `~/.cache/ahmyzsh/path.env` to avoid re-computation on subsequent shells.

> ⚠️ **Warning:** `path.sh` is sourced **three times** per boot due to the cache-miss branch, unconditional sourcing, and `load_all_config_and_settings_files()`. This is wasteful even though the functions defined are idempotent.

### Shell Functions — `core/functions/`

See [core/functions/README.md](core/functions/README.md).

~100 function files covering: shell type detection, Zsh compilation, prompt activation, Oh My Zsh loading, options management, OpenAI integration, Git helpers, Docker helpers, VSCode management, update utilities, and more.

### Alias Library — `core/aliases/`

See [core/aliases/README.md](core/aliases/README.md).

~47 alias files covering: navigation (cd, ls, cp, mv), package management (dnf, npm, yarn), development tools (git, vscode, docker, k8s), media (sounds, images, camera), system admin (kill, systemctl, plasma), and AI tooling (ComfyUI, Stable Diffusion).

### Options — `core/options/`

See [core/options/README.md](core/options/README.md).

One shell file per Zsh option (~140+ files). Each contains a `setopt` or `unsetopt` invocation (or is empty/commented to document the option exists).

### Layouts — `core/layouts/`

See [core/layouts/README.md](core/layouts/README.md).

ANSI escape code exports for colors (foreground/background, normal/bright), text formatting (bold, underline, reverse), and cursor movement. Used throughout the codebase for colored output.

---

## Plugin & Theme Integration

### Oh My Zsh

Loaded by `load_oh_my_zsh()` in `core/functions/z88888-load_ohmyzsh.sh`. Active plugins:

```
colorize docker git kubectl npm yarn zsh-completions zsh-z
zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting
```

> ⚠️ **Warning:** Oh My Zsh is loaded only for interactive shells (after the `isinteractive` guard), which is correct. However, `bindkey -v` is set for the **third time** in `load_oh_my_zsh()` — redundant.

### Powerlevel10k

Activated by `activate_prompt()` / `activate_instant_prompt()`. The instant prompt feature is present but **commented out** — preventing the fast-startup benefit it provides.

---

## Known Issues & Technical Debt

See [documentation/OPTIMIZATION-PLAN.md](documentation/OPTIMIZATION-PLAN.md) for the full analysis and remediation plan.

| # | Issue | Severity | Location |
|---|-------|----------|----------|
| 1 | `path.sh` sourced 3× per boot | Medium | `source-me-in-etc-zshenv.sh`, `MAIN-FUNCTIONS.sh` |
| 2 | `date +%s%N` forked 6+ times on every shell | Medium | `MAIN-FUNCTIONS.sh` timers |
| 3 | `__compute_extended_path` runs on every boot (conda/rbenv/rust inits) | High | `core/compute-path/path.sh` |
| 4 | `zsh_compile_all_R` runs on every interactive start (find + zcompile) | High | `core/functions/05000-zsh_compile.sh` |
| 5 | `bindkey -v` set 3× | Low | `MAIN_SETTINGS.sh`, `MAIN.sh`, `z88888-load_ohmyzsh.sh` |
| 6 | `call_()` uses `eval` | Medium | `MAIN-FUNCTIONS.sh` |
| 7 | Non-interactive shells run expensive phases 1–5 | High | `source-me-in-etc-zshenv.sh` |
| 8 | `add_to_path_()` operator precedence bug | High | `core/compute-path/path.sh` |
| 9 | Powerlevel10k instant prompt is commented out | Medium | `core/functions/z86660-activate_instant_prompt.sh` |
| 10 | `__LOCALE__()` sets locale variables twice | Low | `MAIN_SETTINGS.sh` |

---

## Getting Started

### Prerequisites

- Fedora Linux (tested) or compatible RPM-based distribution
- Zsh ≥ 5.8
- Git
- Optional: FNM, Conda/Anaconda, rbenv, Rust/Cargo, NVIDIA CUDA 12.4, Docker

### Installation

1. Clone the repository to `/projects/ahmyzsh`:

   ```shell
   git clone <repo-url> /projects/ahmyzsh
   ```

2. Add the hook to `/etc/zshenv` (requires root):

   ```shell
   echo 'source /projects/ahmyzsh/source-me-in-etc-zshenv.sh' | sudo tee -a /etc/zshenv
   ```

3. Start a new Zsh session. The framework will initialize and cache the PATH on first run.

### Reload

```shell
reload_alias_and_conf   # Reload aliases and configuration
reloadpath              # Recompute and cache PATH
```

---

## Environment Variables

Key variables exported by the framework:

| Variable | Default | Purpose |
|----------|---------|---------|
| `AHMYZSH` | `/projects/ahmyzsh` | Root of this repository |
| `AHMYZSH_CACHE` | `~/.cache/ahmyzsh` | Cache directory |
| `CACHED_PATH` | `~/.cache/ahmyzsh/path.env` | Cached PATH file |
| `AHMYZSH_CORE` | `$AHMYZSH/core` | Core modules directory |
| `OHMYZSH` / `ZSH` | `$AHMYZSH/ohmyzsh` | Oh My Zsh location |
| `POWERLEVEL10K` | `$AHMYZSH/powerlevel10k` | Theme location |
| `ZSH_PLUGINS` | `$AHMYZSH/plugins` | Plugins directory |
| `CORE_ALIASES` | `$AHMYZSH_CORE/aliases` | Aliases directory |
| `CORE_BIN` | `$AHMYZSH_CORE/bin` | Bin scripts directory |
| `CORE_FUNCTIONS` | `$AHMYZSH_CORE/functions` | Functions directory |
| `CORE_COMPUTE` | `$AHMYZSH_CORE/compute-path` | Path computation directory |
| `VERBOSA` | `1` | Verbosity level (>15 = verbose mode) |
| `EDITOR` | `nvim` | Default text editor |
| `PAGER` | `less` | Default pager |
| `LANG` | `fr_CA.UTF-8` | System locale |
| `CUDA_VERSION` | `cuda-12.4` | CUDA version |
| `FNM_PATH` | `~/.local/share/fnm` | Fast Node Manager path |

---

## Contributing

1. Follow the numerical naming convention for files in `core/` subdirectories (e.g., `10000-feature.sh`)
2. Prefix interactive-only code with an `isinteractive || return 0` guard
3. Use `source_()` rather than bare `source`/`.` for error handling
4. Document functions with inline comments describing purpose, arguments, and side-effects
5. Add new aliases to the appropriate `core/aliases/` file matching the tool or domain
6. Run `zsh_compile_all_R` after adding new `.sh` files to update the compiled cache

---

*† Scientia es lux principium✨ ™ — Copyright © 2020 Luxcium (Benjamin Vincent Kasapoglu) — MIT License*
