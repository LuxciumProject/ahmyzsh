# zsh/env.zsh
# Silent environment shared by interactive and non-interactive Zsh processes.

[[ -n ${ZSH_VERSION:-} ]] || return 0
[[ ${AHMYZSH_ENV_LOADED:-0} == 1 ]] && return 0
typeset -g AHMYZSH_ENV_LOADED=1

typeset -g AHMYZSH_ROOT=${AHMYZSH_ROOT:-${${(%):-%N}:A:h:h}}
typeset -gx XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
typeset -gx XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
typeset -gx XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
typeset -gx XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}

typeset -gU path PATH
[[ -d $HOME/.local/bin ]] && path=($HOME/.local/bin $path)
[[ -d $AHMYZSH_ROOT/zsh/bin ]] && path=($AHMYZSH_ROOT/zsh/bin $path)

if [[ -z ${EDITOR:-} ]]; then
  if (( $+commands[nvim] )); then
    export EDITOR=nvim
  elif (( $+commands[vim] )); then
    export EDITOR=vim
  else
    export EDITOR=vi
  fi
fi
export VISUAL=${VISUAL:-$EDITOR}
export PAGER=${PAGER:-less}
export LESS=${LESS:--FRX}
