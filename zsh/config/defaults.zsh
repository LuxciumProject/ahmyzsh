# zsh/config/defaults.zsh
# Portable defaults. Override these in ~/.config/ahmyzsh/config.zsh.

typeset -ga AHMYZSH_MODULES=(
  base-options
  core-functions
  core-commands
  oh-my-zsh
  history
  core-aliases
  prompt
  keybindings
)

typeset -ga AHMYZSH_OMZ_PLUGINS=(git colored-man-pages)
typeset -g AHMYZSH_USE_OMZ=${AHMYZSH_USE_OMZ:-1}
typeset -g AHMYZSH_PROMPT=${AHMYZSH_PROMPT:-powerlevel10k}
typeset -g AHMYZSH_KEYMAP=${AHMYZSH_KEYMAP:-vi}
typeset -g AHMYZSH_OMZ_DIR=${AHMYZSH_OMZ_DIR:-$AHMYZSH_ROOT/ohmyzsh}
typeset -g AHMYZSH_P10K_DIR=${AHMYZSH_P10K_DIR:-$AHMYZSH_ROOT/powerlevel10k}
