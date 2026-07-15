# zsh/modules/keybindings.zsh
# Input policy is isolated so future widgets can be added without touching boot.

case $AHMYZSH_KEYMAP in
  vi)
    bindkey -v
    export KEYTIMEOUT=${KEYTIMEOUT:-20}
    ;;
  emacs)
    bindkey -e
    ;;
  *)
    ahm_module_note keybindings "unknown keymap '$AHMYZSH_KEYMAP'; keeping Zsh default"
    ;;
esac

bindkey '^[[H' beginning-of-line 2>/dev/null || true
bindkey '^[[F' end-of-line 2>/dev/null || true
