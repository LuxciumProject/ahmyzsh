# lib/README.md — AHMYZSH Library Modules
#
# ← [Back to top-level README](../README.md)

# AHMYZSH `lib/` — Core Library Modules

This directory contains the refactored, modular core of AHMYZSH.
Each file is a self-contained module with a single responsibility,
loaded early in the boot sequence.

## Module Load Order

| # | Module | Purpose | Forks |
|---|--------|---------|-------|
| 1 | [`detect.sh`](detect.sh) | Shell type detection (zsh/bash, interactive/login) | 0 |
| 2 | [`timer.sh`](timer.sh) | Portable timing utilities (uses zsh/datetime when available) | 0–1 |
| 3 | [`path.sh`](path.sh) | PATH building, caching, and deduplication | 0 on cache hit; forks on rebuild |
| 4 | [`locale.sh`](locale.sh) | Locale configuration with safe defaults | 0 |
| 5 | [`loader.sh`](loader.sh) | File/directory sourcing infrastructure | 0 |
| 6 | [`runtimes.sh`](runtimes.sh) | Conditional runtime init (Node/Python/Ruby/Rust) | 0–4 |

## Feature Flags

Runtime initialization can be controlled with environment variables.
Set these in `~/.ahmyzshrc` or before sourcing AHMYZSH:

```sh
# Enable/disable runtimes (1 = enable, 0 = disable)
export AHMYZSH_ENABLE_FNM=1       # Fast Node Manager
export AHMYZSH_ENABLE_CONDA=0     # Conda/Anaconda (heavy, disabled by default)
export AHMYZSH_ENABLE_RBENV=0     # Ruby rbenv
export AHMYZSH_ENABLE_RUST=1      # Rust/Cargo
export AHMYZSH_ENABLE_DOTNET=0    # .NET SDK

# Locale (default: en_US.UTF-8)
export AHMYZSH_LANG=fr_CA.UTF-8
```

## Design Principles

1. **Zero forks** — Prefer zsh built-ins over external commands
2. **Guard variables** — Every module prevents double-sourcing
3. **Feature flags** — Runtimes are opt-in/out via environment variables
4. **Portable** — Works on Linux, macOS, and any zsh ≥ 5.0
5. **No hardcoded paths** — All paths are derived from `$HOME` or auto-detected
