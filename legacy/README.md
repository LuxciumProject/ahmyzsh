<!-- legacy/README.md -->

# Legacy disposition map

The new branch preserves historical source for evidence while removing it from
authority. Existing Git history and machine branches remain the canonical
archive; this directory records where active replacements now live.

| Historical surface | Present state | Replacement/next boundary |
|---|---|---|
| `source-me-in-etc-zshenv.sh` | minimal compatibility hook | `zsh/env.zsh` plus user `.zshrc` |
| `MAIN.sh`, `MAIN-FUNCTIONS.sh`, `MAIN_SETTINGS.sh` | dormant; not sourced | `zsh/boot.zsh` and `zsh/lib/` |
| `core/compute-path/` | dormant | `extensions/path-loader/` |
| `core/functions/` | salvage catalog | vetted subset in `zsh/modules/core-functions.zsh` |
| `core/aliases/` | salvage catalog | vetted subset in `zsh/modules/core-aliases.zsh` |
| `core/bin/` | quarantined command catalog | audited commands in `zsh/bin/` |
| `custom-tmux/`, `tmux/` | not loaded | `extensions/tmux/` |
| old REPL submodules/repos | detached | `extensions/repl/` |
| vendored OMZ/P10k | optional compatibility dependency | pinned provider policy later |
| `myenv/`, private snapshots, generated state | never load | regenerate or remove in a later cleanup |

No historical directory should be bulk-sourced by a new module.
