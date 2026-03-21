# core/ — AHMYZSH Core Modules

← Back to [Repository README](../README.md)

The `core/` directory contains all the modular shell configuration components loaded by the AHMYZSH boot chain. Each subdirectory is a functional domain loaded during initialization by `load_all_config_and_settings_files()` in `MAIN-FUNCTIONS.sh`.

---

## Table of Contents

- [Directory Overview](#directory-overview)
- [Load Order](#load-order)
- [Top-Level Files](#top-level-files)
- [Subdirectory Index](#subdirectory-index)

---

## Directory Overview

```
core/
├── Load_all_files_d.sh          # Appears to contain system data — NOT a function file
├── before-start-up.sh           # Pre-startup hook (sourced before main init)
├── start-up-script.sh           # Startup script
├── start-up-script.sh-bak       # Backup of startup script
├── start-up-script-old.sh       # Old version of startup script
├── true-or-false.sh             # Boolean utility functions
├── logout-script.sh             # Logout hook
├── aliases/                     # Alias definitions (47 files)
├── bin/                         # Executable scripts (~170+)
├── complete.d/                  # Zsh autocompletion configuration
├── compute-path/                # PATH construction and caching
├── env/                         # Environment variable exports
├── functions/                   # Shell function library (~100 files)
├── instant-prompt/              # Powerlevel10k instant prompt cache files
├── layouts/                     # ANSI color and formatting constants
├── options/                     # Zsh option files (~140+ files, one per option)
├── paths/                       # Framework path variable exports
├── scripts/                     # One-off utility/admin scripts
├── sources/                     # Files to be sourced (env snippets)
└── temp/                        # Temporary files directory
```

---

## Load Order

`load_all_config_and_settings_files()` sources directories in this order:

1. `core/paths/` — Framework variables (`AHMYZSH_CORE`, `CORE_*`, etc.)
2. `core/layouts/` — ANSI color/formatting exports
3. `core/compute-path/` — PATH utilities (sourced 3× — see [Optimization Plan](../documentation/OPTIMIZATION-PLAN.md))
4. `core/functions/` — Shell function library
5. `core/aliases/` — Alias definitions
6. `core/env/` — Additional environment variables

Files within each directory are sourced in glob sort order (numeric prefix → alphabetical).

---

## Top-Level Files

### `Load_all_files_d.sh`

> ⚠️ **Warning:** This file appears to contain `systemd` service dependency tree output embedded as comments. It does **not** define the `Load_all_files_d` function (which is defined in `MAIN-FUNCTIONS.sh`). The file name is misleading and the content appears to be an accidental paste. This file should be audited and likely deleted or replaced.

### `before-start-up.sh`

Pre-startup hook, sourced before the main initialization sequence.

### `start-up-script.sh` / `start-up-script.sh-bak` / `start-up-script-old.sh`

Startup scripts with backup copies. The presence of multiple versions suggests active development or migration. The `-bak` and `-old` variants should be moved to git history and removed.

### `true-or-false.sh`

Boolean utility functions for shell scripting. Likely provides `true_()` / `false_()` or similar helpers.

### `logout-script.sh`

Shell logout hook, sourced when a login shell exits.

---

## Subdirectory Index

| Directory | Purpose | README |
|-----------|---------|--------|
| [`aliases/`](aliases/README.md) | Alias definitions for all tools and commands | [README](aliases/README.md) |
| [`bin/`](bin/README.md) | Executable utility scripts | [README](bin/README.md) |
| [`complete.d/`](complete.d/README.md) | Zsh autocompletion setup | [README](complete.d/README.md) |
| [`compute-path/`](compute-path/README.md) | PATH construction, caching, and runtime init | [README](compute-path/README.md) |
| [`env/`](env/README.md) | Supplemental environment variable exports | [README](env/README.md) |
| [`functions/`](functions/README.md) | Shell function library | [README](functions/README.md) |
| [`layouts/`](layouts/README.md) | ANSI escape code constants | [README](layouts/README.md) |
| [`options/`](options/README.md) | Zsh setopt/unsetopt configuration | [README](options/README.md) |
| [`paths/`](paths/README.md) | Framework path variable declarations | [README](paths/README.md) |
| [`scripts/`](scripts/README.md) | One-off admin/utility scripts | [README](scripts/README.md) |
| [`sources/`](sources/README.md) | Environment snippets to be sourced | [README](sources/README.md) |

---

*← Back to [Repository README](../README.md)*
