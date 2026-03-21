# AHMYZSH — Custom Zsh Shell Environment Framework

> 📝 **Note:** *† Scientia es lux principium✨ ™* — "Knowledge is the beginning of light" — the guiding motto of this project.

**AHMYZSH** is a comprehensive, performance-aware Zsh shell configuration framework that wraps [Oh My Zsh](https://ohmyz.sh/) and [Powerlevel10k](https://github.com/romkatv/powerlevel10k) with a structured, layered initialization system, extended path management, alias libraries, custom functions, and developer tooling support.

**Compatible with any zsh-capable computer** — Linux, macOS, BSD, and WSL.

---

## Table of Contents

- [Installation](#installation)
- [Quick Start](#quick-start)
- [Boot Chain](#boot-chain)
- [Configuration](#configuration)
- [Repository Structure](#repository-structure)
- [Directory READMEs](#directory-readmes)
- [Core Subsystems](#core-subsystems)
- [Environment Variables](#environment-variables)
- [Testing](#testing)
- [Uninstallation](#uninstallation)
- [Known Issues & Technical Debt](#known-issues--technical-debt)
- [Contributing](#contributing)

---

## Installation

### Prerequisites

- **zsh** ≥ 5.0 (required)
- **git** (required)
- Optional: Node.js/FNM, Python/Conda, Ruby/rbenv, Rust/Cargo, NVIDIA CUDA

### Install

```sh
# 1. Clone the repository (anywhere you like)
git clone https://github.com/LuxciumProject/ahmyzsh.git ~/ahmyzsh

# 2. Run the idempotent installer
bash ~/ahmyzsh/scripts/install.sh

# 3. Start a new zsh session
zsh
```

The installer:
- Initializes git submodules (ohmyzsh, powerlevel10k, plugins)
- Creates `~/.ahmyzshrc` with default settings (if not exists)
- Adds a source line to `~/.zshenv` (if not already present)
- Creates the cache directory at `~/.cache/ahmyzsh`
- Creates `~/.env` for private environment variables (if not exists)

> **Safe to run multiple times.** The installer is idempotent — it never overwrites existing configuration.

### Update

```sh
bash ~/ahmyzsh/scripts/update.sh
```

Or using npm scripts:

```sh
cd ~/ahmyzsh && npm run update
```

### Uninstall

AHMYZSH does not modify system files. To uninstall:

1. Remove the source line from `~/.zshenv`
2. Optionally remove `~/.ahmyzshrc` and `~/.cache/ahmyzsh`
3. Remove the cloned repository

Your existing `~/.zshrc`, `~/.env`, and other personal configs are never touched.

---

## Quick Start

After installation, customize your setup by editing `~/.ahmyzshrc`:

```sh
# ~/.ahmyzshrc — AHMYZSH User Configuration

# Locale (default: en_US.UTF-8)
export AHMYZSH_LANG="fr_CA.UTF-8"

# Runtime feature flags (1 = enable, 0 = disable)
export AHMYZSH_ENABLE_FNM=1       # Fast Node Manager
export AHMYZSH_ENABLE_CONDA=0     # Conda/Anaconda (heavy, off by default)
export AHMYZSH_ENABLE_RBENV=0     # Ruby rbenv
export AHMYZSH_ENABLE_RUST=1      # Rust/Cargo
export AHMYZSH_ENABLE_DOTNET=0    # .NET SDK

# Verbosity (0 = silent, 1 = normal, >15 = debug)
export VERBOSA=1

# Editor
export EDITOR="code"
```

---

## Boot Chain

The initialization sequence is triggered on every shell start:

```
~/.zshenv (or /etc/zshenv)
  └── source-me-in-etc-zshenv.sh
        ├── Auto-detects AHMYZSH path (0 forks)
        ├── Loads lib/detect.sh      → Shell type detection (0 forks)
        ├── Loads lib/timer.sh       → Portable timing (zsh/datetime)
        ├── Loads lib/path.sh        → PATH manipulation
        ├── Loads lib/locale.sh      → Locale configuration
        ├── Loads lib/loader.sh      → File sourcing infrastructure
        ├── Loads lib/runtimes.sh    → Conditional runtime init
        ├── Loads ~/.ahmyzshrc       → User overrides (optional)
        ├── Loads cached PATH        → ~/.cache/ahmyzsh/path.env
        ├── Loads MAIN-FUNCTIONS.sh  → Legacy loader functions
        └── Sources MAIN.sh → calls SCIENTIA_ES_LUX_PRINCIPIUM()
```

```
SCIENTIA_ES_LUX_PRINCIPIUM()  [MAIN.sh]
  ├── Shell detection via $ZSH_VERSION (0 forks)
  ├── Loads MAIN_SETTINGS.sh → MAIN_SETTINGS()
  ├── Calls load_all_config_and_settings_files()
  │     ├── Sources core/paths/*.sh
  │     ├── Sources core/layouts/*.sh
  │     ├── Sources core/compute-path/*.sh (guard prevents re-sourcing)
  │     ├── Sources core/functions/*.sh
  │     ├── Sources core/aliases/*.sh
  │     └── Sources core/env/*.sh
  ├── Sources ~/.env
  ├── Calls ahmyzsh_init_runtimes() (conditional on feature flags)
  ├── is_interactive || return 0   ← NON-INTERACTIVE SHELLS STOP HERE
  ├── activate_prompt()            ← Powerlevel10k
  ├── load_oh_my_zsh()
  ├── load_options_list()
  ├── load_options_main()
  ├── load_autosuggest()
  ├── load_autocomplete()
  ├── Conditional zsh_compile_all_R() (only when files changed)
  └── bindkey -v
```

---

## Configuration

### User Configuration File: `~/.ahmyzshrc`

This file is sourced early in the boot sequence (before locale and PATH).
Use it to set feature flags, locale, editor, and any personal preferences.

### Private Environment: `~/.env`

Use this file for secrets and credentials (GITHUB_TOKEN, API keys, etc.).
This file is never committed to the repository.

### PATH Management

PATH is cached to `~/.cache/ahmyzsh/path.env` for fast startup.
To rebuild the PATH cache:

```sh
ahmyzsh_rebuild_path    # Rebuild and display new PATH
reloadpath              # Alias for the same
```

---

## Repository Structure

```
ahmyzsh/
├── source-me-in-etc-zshenv.sh     # Entry point (sourced from ~/.zshenv)
├── MAIN.sh                        # Bootstrap — defines SCIENTIA_ES_LUX_PRINCIPIUM()
├── MAIN-FUNCTIONS.sh              # Legacy loader functions (backward compat)
├── MAIN_SETTINGS.sh               # Environment defaults, locale
├── package.json                   # npm scripts for install/update/test
├── Dockerfile                     # Test container for isolated validation
│
├── lib/                           # ★ New modular core library
│   ├── detect.sh                  # Shell type detection (0 forks)
│   ├── timer.sh                   # Portable timing utilities
│   ├── path.sh                    # PATH building and caching
│   ├── locale.sh                  # Locale configuration
│   ├── loader.sh                  # File sourcing infrastructure
│   └── runtimes.sh                # Conditional runtime init (FNM/Conda/rbenv/Rust)
│
├── scripts/                       # Installation and testing scripts
│   ├── install.sh                 # Idempotent installer
│   ├── update.sh                  # Dependency updater
│   └── test.sh                    # Boot validation test suite
│
├── core/                          # Shell configuration modules
│   ├── aliases/                   # Alias definitions (~47 files)
│   ├── bin/                       # Executable utility scripts (~170+)
│   ├── complete.d/                # Zsh autocompletion setup
│   ├── compute-path/              # PATH construction and caching
│   ├── env/                       # Environment variable setup
│   ├── functions/                 # Shell functions library (~85 files)
│   ├── layouts/                   # ANSI color/formatting exports
│   ├── options/                   # Zsh setopt/unsetopt (one per file)
│   ├── paths/                     # Framework path variable exports
│   ├── scripts/                   # One-off utility/admin scripts
│   └── sources/                   # Source snippets (GPU, system tools)
│
├── ohmyzsh/                       # Oh My Zsh (git submodule)
├── powerlevel10k/                 # Powerlevel10k theme (git submodule)
├── plugins/                       # Additional Zsh plugins
├── themes/                        # Custom themes
├── tmux/                          # Tmux configuration
├── documentation/                 # Developer guides and plans
└── memory-bank/                   # Project context tracking
```

---

## Directory READMEs

| Directory | README | Description |
|-----------|--------|-------------|
| `lib/` | [lib/README.md](lib/README.md) | Core library modules, feature flags |
| `scripts/` | [scripts/README.md](scripts/README.md) | Install/update/test scripts |
| `core/` | [core/README.md](core/README.md) | Shell configuration modules overview |
| `core/compute-path/` | [core/compute-path/README.md](core/compute-path/README.md) | PATH strategy and cache |
| `core/functions/` | [core/functions/README.md](core/functions/README.md) | Function library index |
| `core/aliases/` | [core/aliases/README.md](core/aliases/README.md) | Alias file catalog |
| `documentation/` | [documentation/OPTIMIZATION-PLAN.md](documentation/OPTIMIZATION-PLAN.md) | Known issues |

---

## Core Subsystems

### PATH Management — `core/compute-path/`

PATH is built by `__compute_extended_path()` which adds directories that exist on the system.
Results are cached to `~/.cache/ahmyzsh/path.env` for fast subsequent loads.

Key functions (in `lib/path.sh` and `core/compute-path/path.sh`):

| Function | Purpose |
|----------|---------|
| `prepend_to_path dir` | Add dir to front of PATH (if exists) |
| `append_to_path dir` | Add dir to end of PATH (if exists) |
| `dedup_path` | Remove duplicate PATH entries |
| `cache_path` | Save current PATH to cache file |
| `ahmyzsh_rebuild_path` | Rebuild PATH from scratch and cache |

### Shell Functions — `core/functions/`

~85 function files covering: shell type detection, zsh compilation, prompt activation,
Oh My Zsh loading, options management, Git helpers, Docker helpers, and more.

### Alias Library — `core/aliases/`

~47 alias files covering: navigation (cd, ls, cp, mv), package management (dnf, npm, yarn),
development tools (git, vscode, docker, k8s), and system admin (kill, systemctl).

---

## Environment Variables

Key variables exported by the framework:

| Variable | Default | Purpose |
|----------|---------|---------|
| `AHMYZSH` | Auto-detected | Root of this repository |
| `AHMYZSH_CACHE` | `~/.cache/ahmyzsh` | Cache directory |
| `CACHED_PATH` | `~/.cache/ahmyzsh/path.env` | Cached PATH file |
| `VERBOSA` | `1` | Verbosity level (>15 = verbose) |
| `AHMYZSH_LANG` | `en_US.UTF-8` | Locale (set in ~/.ahmyzshrc) |
| `AHMYZSH_ENABLE_FNM` | `1` | Enable Fast Node Manager |
| `AHMYZSH_ENABLE_CONDA` | `0` | Enable Conda/Anaconda |
| `AHMYZSH_ENABLE_RBENV` | `0` | Enable Ruby rbenv |
| `AHMYZSH_ENABLE_RUST` | `1` | Enable Rust/Cargo |
| `AHMYZSH_ENABLE_DOTNET` | `0` | Enable .NET SDK |

---

## Testing

### Run the test suite locally

```sh
bash scripts/test.sh
```

### Run tests in Docker (isolated environment)

```sh
# Build and run
docker build -t ahmyzsh-test .
docker run --rm ahmyzsh-test

# Interactive shell for debugging
docker run --rm -it ahmyzsh-test zsh
```

### What the tests check

1. All boot files exist
2. No hardcoded user paths (e.g., `/home/luxcium`)
3. No credentials in source files
4. Guard variables prevent double-sourcing
5. Zsh syntax validation
6. Security: no `eval` in `call_()` function
7. Bug fix verification for `add_to_path_()` operator precedence
8. Non-interactive boot completion

---

## Known Issues & Technical Debt

See [documentation/OPTIMIZATION-PLAN.md](documentation/OPTIMIZATION-PLAN.md) for full details.

Key issues addressed in this refactoring:

| Issue | Status | Fix |
|-------|--------|-----|
| `path.sh` sourced 3× per boot | ✅ Fixed | Guard variable prevents re-sourcing |
| `call_()` uses `eval` | ✅ Fixed | Direct function invocation |
| `add_to_path_()` operator precedence bug | ✅ Fixed | Correct `[[ -n ]] && [[ -d ]]` |
| Hardcoded `/projects/ahmyzsh` | ✅ Fixed | Auto-detection via `${(%):-%x}` |
| Hardcoded `/home/luxcium` paths | ✅ Fixed | Uses `$HOME` throughout |
| `GITHUB_TOKEN` in source code | ✅ Fixed | Removed; use `~/.env` instead |
| `cache_path()` unquoted `$PATH` | ✅ Fixed | Properly quoted |
| `set_path()` passes eval as dir | ✅ Fixed | Direct `fnm env` call |
| `date +%s%N` not portable (macOS) | ✅ Fixed | Uses `zsh/datetime` module |
| Non-interactive shell overhead | ✅ Improved | Feature flags, guard variables |

---

## Uninstallation

AHMYZSH is user-level only and never modifies system-critical files.

```sh
# Remove the source line from ~/.zshenv
sed -i '/source-me-in-etc-zshenv.sh/d' ~/.zshenv

# Remove cache and user config (optional)
rm -rf ~/.cache/ahmyzsh ~/.ahmyzshrc

# Remove the repository (optional)
rm -rf ~/ahmyzsh
```

---

## Contributing

1. Follow the numerical naming convention for files in `core/` (e.g., `10000-feature.sh`)
2. Prefix interactive-only code with `is_interactive || return 0`
3. Use `source_()` rather than bare `source`/`.` for error handling
4. Add guard variables to prevent double-sourcing
5. Do not hardcode user-specific paths — use `$HOME` and auto-detection
6. Never commit credentials — use `~/.env` for secrets

---

*† Scientia es lux principium✨ ™ — Copyright © 2020 Luxcium (Benjamin Vincent Kasapoglu) — MIT License*
