# core/env/ — Supplemental Environment Variables

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory provides supplemental environment variable exports loaded late in the boot chain. Currently it contains a single file whose content is mostly a superset of what `core/layouts/` already provides.

---

## Table of Contents

- [Files](#files)
- [Exported Variables](#exported-variables)
- [Notes and Issues](#notes-and-issues)

---

## Files

| File | Purpose |
|------|---------|
| [`00000.sh`](00000.sh) | Supplemental env vars: layout codes, media paths |

---

## `00000.sh`

**Sourced by:** `load_all_config_and_settings_files()` — last directory in load order.

### Exported Variables

#### Text Formatting (Duplicates from `core/layouts/`)

| Variable | ANSI Code | Effect |
|----------|-----------|--------|
| `LBOLD` | `\u001b[1m` | Bold text |
| `LUND` | `\u001b[4m` | Underline text |
| `LREV` | `\u001b[7m` | Reverse colors |
| `RSET` | `\u001b[0m` | Reset all attributes |

> ⚠️ **Warning:** These are already exported by `core/layouts/00000-layouts.sh`. Re-exporting them here is redundant. Since `env/` is sourced after `layouts/`, these are harmless no-ops, but they add noise.

#### Color Variables (Duplicates)

A subset of the foreground/background color variables from `core/layouts/` are re-exported here. Same issue as above.

#### Cursor Movement Codes

| Variable | Effect |
|----------|--------|
| `LUP_A` | Move cursor up |
| `LDOWN_B` | Move cursor down |
| (others) | Left, right, absolute positioning |

These are also present in `core/layouts/00000-layouts.sh`.

#### Path Variables

| Variable | Value | Purpose |
|----------|-------|---------|
| `DESTINATION_PATH` | `/media/luxcium/100 GIO/downloads` | External drive downloads (also in `core/paths/`) |
| `MY_MULTIMEDIA` | `${AHMYZSH}/multimedia` | Multimedia assets (also in `core/paths/`) |
| `MY_SOUNDS` | `${MY_MULTIMEDIA}/sounds` | Sound files (also in `core/paths/`) |
| `CUSTOM_TMUX` | `${AHMYZSH}/tmux` | Custom tmux config (also in `core/paths/`) |

> ⚠️ **Warning:** All four path variables are also defined in `core/paths/00000-init-paths.sh`. This creates a redundancy where the same variables are set in two different files loaded at different points in the boot sequence. The last definition wins, which happens to be identical, but this is confusing.

---

## Notes and Issues

### This File Is Essentially a Subset of Other Files

The current content of `00000.sh` duplicates what is already exported by:
- `core/layouts/00000-layouts.sh` — all ANSI formatting/color variables
- `core/paths/00000-init-paths.sh` — all path variables

### Recommended Cleanup

The `core/env/` directory should either:

1. **Be removed** if it has no unique content, with its load-order slot removed from `load_all_config_and_settings_files()`
2. **Be repurposed** to hold user-specific environment variables that should not be tracked in git (e.g., API keys, personal paths) — similar to a `.env` file pattern
3. **Contain only the delta** — variables that genuinely don't belong in `layouts/` or `paths/`

The most idiomatic use would be option 2: machine-specific or user-specific environment that complements the tracked framework configuration.

### Currently Active Content

Only the `# source "${CORE_OPTIONS}/01000-options_list.sh"` comment (commented-out) is present as a non-export line, suggesting this file was previously used to source options but that responsibility was moved elsewhere.

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
