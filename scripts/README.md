# scripts/README.md — AHMYZSH Scripts
#
# ← [Back to top-level README](../README.md)

# AHMYZSH Scripts

This directory contains installation, update, and testing scripts.

## Scripts

| Script | Purpose | Usage |
|--------|---------|-------|
| [`install.sh`](install.sh) | Idempotent installer | `bash scripts/install.sh` |
| [`update.sh`](update.sh) | Update AHMYZSH and dependencies | `bash scripts/update.sh` |
| [`test.sh`](test.sh) | Run validation tests | `bash scripts/test.sh` |

## npm Scripts (via package.json)

These are convenience wrappers using the root `package.json`:

```sh
npm run setup       # Run install.sh
npm run update      # Run update.sh
npm run test        # Run test.sh
npm run test:docker # Build and run tests in Docker
npm run lint        # Run ShellCheck on boot files
```

## Installation

See the [top-level README](../README.md#installation) for full instructions.

## What install.sh Does

1. Verifies zsh and git are installed
2. Initializes git submodules (ohmyzsh, powerlevel10k, plugins)
3. Creates `~/.ahmyzshrc` with user defaults (if not exists)
4. Adds source line to `~/.zshenv` (if not already present)
5. Creates cache directory at `~/.cache/ahmyzsh`
6. Creates `~/.env` for private environment variables

## What update.sh Does

1. Pulls latest changes from git
2. Updates git submodules
3. Clears compiled bytecode (.zwc files)
4. Clears PATH cache

## What test.sh Checks

1. File existence for all boot files
2. No hardcoded user paths in boot files
3. No credentials in source files
4. Guard variables prevent double-sourcing
5. Zsh syntax validation
6. Security: no eval in call_() function
7. Bug fix verification for add_to_path_
8. Non-interactive boot completion test
