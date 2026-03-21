# core/complete.d/ — Zsh Autocompletion Configuration

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory configures Zsh's autocompletion system. It is referenced by the `CORE_COMPLETE` environment variable and added to the `fpath` during completion initialization.

---

## Table of Contents

- [Files](#files)
- [Functions Reference](#functions-reference)
- [Plugin Completions](#plugin-completions)
- [Commented-Out Features](#commented-out-features)
- [Notes and Issues](#notes-and-issues)

---

## Files

| File | Purpose |
|------|---------|
| [`autocomplete.sh`](autocomplete.sh) | Defines `load_autocomplete_()` — the primary completion setup function |

---

## `autocomplete.sh`

**Sourced by:** `load_all_config_and_settings_files()` (via `core/functions/z86664-load_autocomplete_now.sh`).

**Called by:** `load_autocomplete()` in the interactive initialization phase.

### Functions

#### `load_autocomplete_()`

Sets up the Zsh `fpath` for autocompletion and sources plugin completion files.

**fpath entries added** (prepended, in order):

| Path | Source |
|------|--------|
| `${ZSH_PLUGINS}/nestjs-cli-completion` | NestJS CLI tab completions |
| `${ZSH_PLUGINS}/zsh-better-npm-completion` | Enhanced NPM completions |
| `${ZSH_PLUGINS}/yarn-autocompletions` | Yarn completions |
| `${ZSH_PLUGINS}/zsh-completions/src` | Community Zsh completions collection |
| `${CORE_COMPLETE}` | This directory — local custom completions |
| `${HOME}/.zsh/completion` | User-level completions |

**Plugin files sourced:**

| Plugin | File |
|--------|------|
| zsh-better-npm-completion | `zsh-better-npm-completion.plugin.zsh` |
| yarn-autocompletions | `yarn-autocompletions.plugin.zsh` |

**bashcompinit enabled:**

```shell
autoload -U +X bashcompinit && bashcompinit
```

This enables Bash-style `complete` and `compgen` builtins in Zsh, allowing tools that provide Bash completion scripts (e.g., AWS CLI, many others) to work in Zsh.

---

## Plugin Completions

| Tool | Plugin | Status |
|------|--------|--------|
| NPM | `zsh-better-npm-completion` | ✅ Active — superior to Oh My Zsh npm completions |
| Yarn | `yarn-autocompletions` | ✅ Active |
| NestJS CLI | `nestjs-cli-completion` | ✅ Active (fpath only) |
| General | `zsh-completions` | ✅ Active (large community-maintained collection) |

---

## Commented-Out Features

The file contains extensive commented-out code that documents alternative approaches:

### Completions Considered But Disabled

```shell
# eval "$(gh completion -s zsh)"         # GitHub CLI completions
# eval "$(kubectl completion zsh)"        # kubectl completions
# eval "$(minikube completion zsh)"       # minikube completions
# eval "$(fnm completions)"              # FNM completions
# eval "$(npm completion zsh)"           # npm completion
```

> ⚠️ **Warning:** These `eval`-based completions were disabled, likely due to performance concerns (each `eval` forks a subprocess). The `gh`, `kubectl`, and `fnm` completions are particularly useful. Consider re-enabling them using a lazy-loading pattern.

### zstyle Completions Configuration (Commented Out)

```shell
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more...
# zstyle ':completion:*' menu select=20
# zstyle ':completion:*' completer _list _oldlist _expand _complete ...
# zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={...}' ...
```

These would configure completion appearance and behavior. They were disabled but represent a planned enhancement.

### compinit Variants (Commented Out)

```shell
# autoload -U compinit && compinit
# autoload -Uz compinit && compinit -i
```

`compinit` is called by Oh My Zsh during `load_oh_my_zsh()`, so calling it here again would be redundant. The commented-out block that checks `.zcompdump` age (the "once-a-day" pattern) is present and represents good practice — it could be re-enabled to speed up completion loading:

```shell
# For slow systems: regenerate .zcompdump at most once per day
# autoload -Uz compinit
# if [ -n "${ZDOTDIR}/.zcompdump(N.mh+24)" ]; then
#   compinit
# else
#   compinit -C  # -C: skip security check (faster)
# fi
```

### tabtab Integration (Commented Out)

```shell
# [ -f "${HOME}/.config/tabtab/zsh/__tabtab.zsh" ] && . "${HOME}/.config/tabtab/zsh/__tabtab.zsh"
```

`tabtab` provides completions for tools like `serverless`. Can be re-enabled if needed.

---

## Notes and Issues

### Performance: eval-Based Completions

The disabled `eval`-based completions (`gh`, `kubectl`, `fnm`, `minikube`) each fork a subprocess. Modern alternatives:

1. **Pre-generate and cache:** Run `gh completion -s zsh > ~/.zsh/completion/_gh` once, then it's loaded from `fpath` on subsequent shells
2. **Lazy-load:** Only initialize completions for a tool on first use of that tool

### Custom Completions

To add a custom completion for a command, place a `_commandname` file in `${HOME}/.zsh/completion/` or directly in this directory (`core/complete.d/`). Both paths are in `fpath`.

Example structure for a custom `_mycommand` completion:

```shell
#compdef mycommand
_mycommand() {
  _arguments \
    '--flag[description of flag]' \
    '--other[other flag]'
}
_mycommand "$@"
```

### Interaction with Oh My Zsh Completion

Oh My Zsh calls `compinit` during its initialization in `load_oh_my_zsh()`. In the current boot order, `load_oh_my_zsh()` runs **before** `load_autocomplete_()`, so any `fpath` additions made by `load_autocomplete_()` are **not** picked up by Oh My Zsh's `compinit` step.

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
