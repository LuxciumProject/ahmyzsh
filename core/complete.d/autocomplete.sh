#!/usr/bin/env bash

function load_autocomplete_() {
  # TIME_NOWall=$(/usr/bin/date +%s%N)

  # eval "$(gh completion -s zsh)"
  # eval "$(kubectl completion zsh)"
  # eval "$(minikube completion zsh)"
  # eval "$(fnm completions)"
  # eval "$(npm completion zsh)"
  fpath=("${ZSH_PLUGINS}/nestjs-cli-completion" "${fpath[@]}")
  fpath=("${ZSH_PLUGINS}/zsh-better-npm-completion" "${fpath[@]}")
  fpath=("${ZSH_PLUGINS}/yarn-autocompletions" "${fpath[@]}")
  fpath=("${ZSH_PLUGINS}/zsh-completions/src" "${fpath[@]}")
  fpath=("${CORE_COMPLETE}" "${fpath[@]}")
  fpath=("${HOME}/.zsh/completion" "${fpath[@]}")
  source_ "${ZSH_PLUGINS}/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh"
  source_ "${ZSH_PLUGINS}/yarn-autocompletions/yarn-autocompletions.plugin.zsh"

  # zstyle ':completion:*' list-colors ''
  # zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
  # zstyle ':completion:*' menu select=20
  # zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
  # zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
  # zstyle ':completion:*' expand prefix
  # zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}'
  # zstyle :compinstall filename "${CORE_COMPLETE}/autocomplete.sh"
  autoload -U +X bashcompinit && bashcompinit

  # {
  #   # shellcheck source=/home/luxcium/.config/tabtab/zsh/__tabtab.zsh
  #   [ -f "${HOME}/.config/tabtab/zsh/__tabtab.zsh" ] && . "${HOME}/.config/tabtab/zsh/__tabtab.zsh"
  # } || true

  # autoload -U compinit -d "${AHMYZSH}/cache/.zcompdump" && compinit -d "${AHMYZSH}/cache/.zcompdump_"
}

# autoload -U compinit && compinit

# autoload -Uz compinit && compinit -i

# for dump in "${HOME}/.zcompdump(N.mh+24)"; do
#   compinit
# done

# On slow systems, checking the cached .zcompdump file to see if it must be
# regenerated adds a noticable delay to zsh startup.  This little hack restricts
# it to once a day.  It should be pasted into your own completion file.
#
# The globbing is a little complicated here:
# - '#q' is an explicit glob qualifier that makes globbing work within zsh's [[ ]] construct.
# - 'N' makes the glob pattern evaluate to nothing when it doesn't match (rather than throw a globbing error)
# - '.' matches "regular files"
# - 'mh+24' matches files (or directories or whatever) that are older than 24 hours.
# autoload -Uz compinit
# if [ -n "${ZDOTDIR}/.zcompdump(N.mh+24)" ]; then
# 	compinit;
# else
# 	compinit -C;
# fi;

# TIME_NOW=TIME_NOWall
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} \u001b[0m\u001b[35;1m\u001b[1mLoad load_autocomplete alllll................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[30;1m\u001b[1m                        30" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[31;1m\u001b[1m                        31" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[32;1m\u001b[1m                        32" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[33;1m\u001b[1m                        33" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[34;1m\u001b[1m                        34" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[35;1m\u001b[1m                        35" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[36;1m\u001b[1m                        36" >>"${BOOTTIME_LOGFILE}" &
# echo "\u001b[0m\u001b[37;1m\u001b[1m                        37" >>"${BOOTTIME_LOGFILE}" &
