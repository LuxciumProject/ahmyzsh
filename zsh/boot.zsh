# zsh/boot.zsh
# Interactive entry point. Source this file from ~/.zshrc.

[[ -n ${ZSH_VERSION:-} ]] || return 0
[[ -o interactive ]] || return 0
[[ ${AHMYZSH_BOOT_STATE:-} == loaded ]] && return 0
[[ ${AHMYZSH_BOOT_STATE:-} == loading ]] && return 0
typeset -g AHMYZSH_BOOT_STATE=loading

zmodload zsh/datetime 2>/dev/null
typeset -gF AHMYZSH_BOOT_STARTED_AT=${EPOCHREALTIME:-0}
typeset -g AHMYZSH_ROOT=${AHMYZSH_ROOT:-${${(%):-%N}:A:h:h}}

# Powerlevel10k instant prompt must precede anything that can write to the terminal.
if [[ ${AHMYZSH_NO_INSTANT_PROMPT:-0} != 1 ]]; then
  typeset _ahm_instant_prompt=${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
  [[ -r $_ahm_instant_prompt ]] && source $_ahm_instant_prompt
  unset _ahm_instant_prompt
fi

source $AHMYZSH_ROOT/zsh/lib/state.zsh || return 1
source $AHMYZSH_ROOT/zsh/lib/timer.zsh || return 1
source $AHMYZSH_ROOT/zsh/lib/cache.zsh || return 1
source $AHMYZSH_ROOT/zsh/lib/loader.zsh || return 1
source $AHMYZSH_ROOT/zsh/lib/diagnostics.zsh || return 1

ahm_timer_mark backbone
source $AHMYZSH_ROOT/zsh/config/defaults.zsh || return 1
[[ -r ${XDG_CONFIG_HOME:-$HOME/.config}/ahmyzsh/config.zsh ]] &&
  source ${XDG_CONFIG_HOME:-$HOME/.config}/ahmyzsh/config.zsh
ahm_timer_mark configuration

ahm_cache_init
ahm_load_modules ${AHMYZSH_MODULES[@]}
ahm_timer_mark modules

typeset -g AHMYZSH_BOOT_STATE=loaded
ahm_timer_finish

if (( ${#AHMYZSH_FAILED_MODULES} )); then
  print -P -- "%F{yellow}AhMyZSH loaded with ${#AHMYZSH_FAILED_MODULES} module warning(s). Run %Bahm doctor%b.%f"
fi

[[ ${AHMYZSH_PROFILE:-0} == 1 ]] && ahm_timer_report
return 0
