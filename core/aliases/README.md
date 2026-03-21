# core/aliases/ — Alias Definitions

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory contains all shell aliases organized by domain. Files are sourced in numeric order by `load_all_config_and_settings_files()` during shell startup. Note: at present this sourcing happens for both interactive and non-interactive shells, because `load_all_config_and_settings_files()` is invoked before the `isinteractive || return 0` guard in `MAIN.sh`, which may have performance implications for non-interactive use.

An auto-generated inventory is maintained at [`00000-alias-inventory.md`](00000-alias-inventory.md).

---

## Table of Contents

- [File Index](#file-index)
- [Domain Summary](#domain-summary)
- [Notable Aliases](#notable-aliases)
- [Adding New Aliases](#adding-new-aliases)

---

## File Index

| File | Domain | Key Aliases / Notes |
|------|--------|---------------------|
| `0000-projects.sh` | Project shortcuts | `rpcstart`, `rpcworker`, project cd aliases |
| `00000-man-ls.sh` | Documentation | Manual-style docs for `ls` options — no aliases, informational only |
| `00100-aliases-manager.sh` | Alias management | `reload_alias_and_conf`, meta-alias helpers (11 aliases) |
| `10000-images-files.sh` | Image/file ops | Image management shortcuts (2 aliases) |
| `10001-rm.sh` | Deletion | Safe `rm` variants (14 aliases) |
| `10002-cd.sh` | Navigation | Extensive directory navigation (45 aliases) |
| `10003-ls.sh` | Listing | `ls` variations with colors, sorting, icons (565 lines, 10 aliases) |
| `10004-cp.sh` | Copy | `cp` with verbose/interactive flags |
| `10005-mv.sh` | Move | `mv` variants (1 alias) |
| `10006-ip.sh` | Networking | `ip` command shortcuts (10 aliases) |
| `11000-kill.sh` | Process | Process termination shortcuts (2 aliases) |
| `11001-dnf.sh` | Package mgmt | DNF package manager (12 aliases, 1125 lines) |
| `11800-plasma_shell.sh` | KDE Plasma | `plasmashell` restart and management |
| `11811-docked.sh` | Docking | Laptop dock/undock helpers |
| `11812-redis.sh` | Redis | Redis server management |
| `12000-systemctl.sh` | Systemd | `systemctl` shortcuts |
| `12010-ALS-cht-sh.sh` | Cheat sheets | `cht.sh` query helpers |
| `12010-ALS-git.sh` | Git | Git workflow functions (see notes below) |
| `12010-ALS-npm.sh` | NPM | NPM script shortcuts |
| `12010-ALS-tsc.sh` | TypeScript | `tsc` compiler shortcuts |
| `12010-ALS-vscode.sh` | VS Code | VS Code launch and extension management |
| `12010-ALS-yarn.sh` | Yarn | Yarn package manager shortcuts |
| `12012-ALS-sounds.sh` | Sounds | Play audio files (notification sounds) |
| `12012-more-sounds.sh` | Sounds | Additional sound aliases |
| `12015-ALS-canon-obs.sh` | Camera/OBS | Canon camera + OBS streaming setup |
| `12020-ALS-misc.sh` | Miscellaneous | `shtop`, renice, ruler aliases, `scientia` motto |
| `12022-ALS-stmp.sh` | Timestamps | Timestamp generation shortcuts |
| `12060-ALS-fille-access.sh` | File access | File permission and access helpers |
| `12299-ALS-shutdown.sh` | Shutdown | System shutdown/reboot aliases |
| `12551-ALS-aliases.sh` | Alias tools | Alias listing and searching |
| `12975-ALS-zsh-lovers.sh` | Zsh power | Advanced Zsh user aliases |
| `13002-setfont.sh` | Terminal fonts | Console/terminal font management |
| `13010-ALS-nmon.sh` | Monitoring | `nmon` system monitor shortcut |
| `14000-python.sh` | Python | Python/Conda environment helpers |
| `15000-comfyui.sh` | AI/ComfyUI | ComfyUI (Stable Diffusion) shortcuts |
| `20000-Terminator.sh` | Terminal | Terminator terminal emulator shortcuts |
| `30000-tmux.sh` | tmux | tmux session management |
| `31000-neovim.sh` | Neovim | `vim` → `nvim` redirect |
| `78000-nvidia.sh` | NVIDIA | GPU dithering and image quality aliases |
| `80000-vscode-portable.sh` | VS Code | Portable VS Code download/management |
| `89000-killall.sh` | Kill | Terminate processes by name shortcuts |
| `90201-fnm.sh` | FNM/Node | Node.js version switching via FNM |
| `include-dnf.repos.sh` | DNF repos | Repository management helpers |
| `k8s.sh` | Kubernetes | `k` → `kubectl` alias |
| `tmux.sh` | tmux | Additional tmux session aliases |

---

## Domain Summary

### Navigation (`10002-cd.sh`)

45 `cd` shortcut aliases covering common project directories and relative navigation (`..`, `...`, etc.).

### Listing (`10003-ls.sh`)

565-line file with `ls` variants for different use cases: colorized output, hidden files, sorting by type/date/size, wide format, and more.

### Package Management (`11001-dnf.sh`)

1125-line file integrating Oh My Zsh DNF plugin conventions plus custom update functions:

```shell
alias dnfgl='dnf grouplist'
alias dnfp='dnf info'
alias dnfs='dnf search'
alias dnfgi='sudo dnf groupinstall'
# Update functions: _get_updates, _dnfup
```

### Git (`12010-ALS-git.sh`)

Git workflow helper functions derived from/extending the Oh My Zsh git plugin:

- `current_branch()` — prints current branch name
- `work_in_progress()` — warns if latest commit message contains `--wip--`
- `git_main_branch()` — detects whether main branch is named `main` or `master`
- `_git_log_prettily()` — pretty-prints git log with a given format

> 📝 **Note:** Most original Oh My Zsh git plugin aliases are commented out. The file primarily defines helper functions used by prompt and other tools.

### Node.js / FNM (`90201-fnm.sh`)

Fast Node Manager version switching shortcuts:

```shell
alias use14="fnm use 14"
alias use16="fnm use 16"
alias use18="fnm use 18"
alias use20="fnm use 20"
alias usefnm="fnm use default"
alias uselts="fnm use lts"
# 8 variants of update-fnm aliases
```

### VS Code (`12010-ALS-vscode.sh`)

```shell
alias vsca='${VSCODE} --add'
alias vscd='${VSCODE} --diff'
alias vscg='${VSCODE} --goto'
alias vscn='${VSCODE} --new-window'
alias vscr='${VSCODE} --reuse-window'
alias vscw='${VSCODE} --wait'
```

Uses `${VSCODE:=code}` — defaults to `code` but respects any override via `$VSCODE`.

### Neovim (`31000-neovim.sh`)

```shell
alias vim="nvim"
```

Single-line file redirecting all `vim` invocations to `nvim`.

### Kubernetes (`k8s.sh`)

```shell
alias k="kubectl"
```

### NVIDIA (`78000-nvidia.sh`)

Aliases for NVIDIA GPU settings that delegate to scripts in `core/bin/`:

```shell
alias DynamicDithering='DitheringDynamic'
alias StaticDithering='DitheringStatic'
alias dynamic='DitheringDynamic'
alias imageperform='OpenGLImagePerform'
alias imageQualityHigh='OpenGLImageQualityHigh'
```

### tmux (`30000-tmux.sh` + `tmux.sh`)

Session creation, attachment, and window management shortcuts for tmux.

### Sounds (`12012-ALS-sounds.sh`)

Aliases to play audio notification files from `$MY_SOUNDS`. Used by `upnboot()` and system management functions to provide audio feedback during long-running operations (updates, reboots, shutdowns).

---

## Notable Aliases

### `scientia` (`12020-ALS-misc.sh`)

```shell
alias scientia='echo † Scientia es lux principium✨ ™'
alias gitscientia="git commit -am '† Scientia es lux principium✨ ™'"
alias xscientia='echo "† Scientia es lux principium✨ ™" | tee >(xclip -selection clipboard)'
```

The project motto alias — echoes, git-commits with, or copies to clipboard the framework motto.

### `reloadpath`

Rebuilds and caches the PATH. Defined in `MAIN-FUNCTIONS.sh`, calls `reload_path()`.

### `bye`

System shutdown alias, defined in `MAIN-FUNCTIONS.sh`.

---

## Adding New Aliases

1. Choose the appropriate existing file or create a new one following the numbering convention:
   - `10000–19999` — File/directory operations
   - `12000–12999` — Tool-specific aliases (use `ALS-` prefix)
   - `20000–89999` — Application-specific
   - `90000–99999` — Runtime/language management

2. Use `#!/bin/bash` or `#!/usr/bin/env bash` shebang for consistency

3. Group related aliases with a comment header

4. Run `reload_alias_and_conf` to reload all aliases in the current session

5. Update `00000-alias-inventory.md` by re-running the inventory generator if one exists

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
