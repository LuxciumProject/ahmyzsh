# zsh/modules/history.zsh
# XDG-backed interactive history policy, loaded after OMZ so local policy wins.

typeset -g _AHMYZSH_HISTORY_DIR=${XDG_STATE_HOME:-$HOME/.local/state}/ahmyzsh
[[ -d $_AHMYZSH_HISTORY_DIR ]] || mkdir -p -- $_AHMYZSH_HISTORY_DIR
typeset -g HISTFILE=$_AHMYZSH_HISTORY_DIR/zsh-history
typeset -g HISTSIZE=100000
typeset -g SAVEHIST=100000

setopt extended_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
