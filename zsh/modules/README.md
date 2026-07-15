<!-- zsh/modules/README.md -->

# Modules

Modules are sourced in the exact order declared by `AHMYZSH_MODULES`. A file
name does not determine precedence.

| Module | Layer | External dependency |
|---|---|---|
| `base-options` | independent Zsh behavior | none |
| `core-functions` | small user API and lifecycle dispatcher | none |
| `core-commands` | adds only `zsh/bin` | none |
| `oh-my-zsh` | framework/completion integration | optional vendored OMZ |
| `history` | user state policy after framework defaults | filesystem only |
| `core-aliases` | small final-precedence vocabulary | Git for Git aliases |
| `prompt` | visual interface | optional P10k and terminal |
| `keybindings` | input mode | ZLE |

Future capabilities must not be placed here until they have a defined minimal
interface, dependency behavior and test. See `extensions/`.
