# zsh/modules/oh-my-zsh.zsh
# Optional framework integration. The shell remains usable when OMZ is absent.

if [[ $AHMYZSH_USE_OMZ != 1 ]]; then
  ahm_module_note oh-my-zsh 'disabled by configuration'
  return 0
fi

if [[ ! -r $AHMYZSH_OMZ_DIR/oh-my-zsh.sh ]]; then
  ahm_module_note oh-my-zsh "unavailable at $AHMYZSH_OMZ_DIR"
  return 0
fi

typeset -g ZSH=$AHMYZSH_OMZ_DIR
typeset -g ZSH_CUSTOM=$AHMYZSH_ROOT/zsh/omz-custom
typeset -g ZSH_THEME=''
typeset -ga plugins=(${AHMYZSH_OMZ_PLUGINS[@]})
typeset -g ZSH_COMPDUMP=$AHMYZSH_CACHE_DIR/zcompdump-$ZSH_VERSION

zstyle ':omz:update' mode disabled
zstyle ':omz:plugins:*' aliases yes
source $ZSH/oh-my-zsh.sh
