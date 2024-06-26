#!/bin/sh
#& Scientia es lux principium

#+ =============================================================================≈
#? MIT LICENSE ― *NOT* fit for any particular use or purpose ― PROVIDED "AS IS"
#?!!! See the bottom of this file for *IMPORTANT INFORMATIONS* ― MIT LICENSE !!!
#? =============================================================================≈
#? @author Benjamin Vincent Kasapoglu (LUXCIUM)
#? @copyright (c) 2020 - LUXCIUM (Benjamin Vincent Kasapoglu)
#? @license MIT
#? =============================================================================≈
#& Scientia es lux principium is a Trade Mark of Benjamin Vincent Kasapoglu
#& (c) & tm Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
#+ =============================================================================≈
#* AHMYZSH first entry point

# will be working on simplification in a new feature branch
# source ${AHMYZSH}/themes/leaderboard.sh
# echo $VERBOSA
#
set +m

SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N - B O O T S T R A P - +#
  # VERBOSA=100000
  export LOAD_ENV_COMPLETED='not yet'
  export ENVIRONNEMENT_LOADED='not yet'
  export LOGIN_ENV_LOADED='not yet'
  export INTERACTIVE_ENV_LOADED='not yet'

  : "${LOAD_ENV_COMPLETED_ONCE:='not yet'}"
  : "${ENVIRONNEMENT_LOADED_ONCE:='not yet'}"
  : "${LOGIN_ENV_LOADED_ONCE:= 'not yet'}"
  : "${INTERACTIVE_ENV_LOADED_ONCE:='not yet'}"

  # Test we are in ZSH.
  IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
  export IS_ZSH_
  [ -z "${IS_ZSH_}" ] && return 1

  # Test we are in the session load for the first time
  # or only reload confings and functions.
  [ -z "${MAIN_INIT}" ] || reload_alias_and_conf
  [ -z "${MAIN_INIT}" ] || (prompt_ "Reloaded alias files functions and conf" && return)
  MAIN_INIT="start"

  # Load functions that are required at an earlier stage of this boot sequence
  S1="${AHMYZSH}/MAIN-FUNCTIONS.sh"
  # shellcheck source=./MAIN-FUNCTIONS.sh
  # shellcheck disable=SC2015
  { [ -f "${S1}" ] && . "${S1}"; } || load_error_ "${S1}"

  # timer_
  # timer_from_then
  # timer_now
  # timer_all
  # # https://superuser.com/a/585004/175441
  # # https://creativecommons.org/licenses/by-sa/3.0/
  # autoload -U up-line-or-beginning-search
  # autoload -U down-line-or-beginning-search
  # zle -N up-line-or-beginning-search
  # zle -N down-line-or-beginning-search
  # bindkey "^[A" up-line-or-beginning-search   # Up
  # bindkey "^[B" down-line-or-beginning-search # Down

  # Load settings that are required at an earlier stage of this boot sequence

  load_ "${AHMYZSH}/MAIN_SETTINGS.sh" "MAIN_SETTINGS"

  call_ load_all_config_and_settings_files

  call_ load_zshenv
  source_ "${HOME}/.env"
  call_ fnm_

  isinteractive || return 0 ## ――――――――― Interactive,login,non-login ―――――――――― #

  call_ activate_prompt

  call_ load_oh_my_zsh

  call_ load_options_list
  call_ load_options_main

  call_ load_autosuggest
  call_ load_autocomplete
  (
    (compaudit | xargs chmod g-w,o-w 2>/dev/null) &
    (zsh_compile_all_R) &
  )
  bindkey -v
  return 0
}

prompt_() {
  isinteractive && echo "${@}"
}

load_error_() {
  prompt_ "Error: '${*}' path can not be resolved"
  return 1
}

my_term="$(ps -p "$PPID" -o comm= | awk '{print $1}')"
export my_term

# Fig pre block. Keep at the top of this file.
# [[ "$(ps -p $(echo $PPID) -o comm= | awk '{print $1}')" != "konsole" ]] && [[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"

# Fig post block. Keep at the bottom of this file.
# [[ "$(ps -p $(echo $PPID) -o comm= | awk '{print $1}')" != "konsole" ]] && [[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"

# Fig pre block. Keep at the top of this file.
# [[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
# Fig post block. Keep at the bottom of this file.
# [[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# tabtab source for packages
# uninstall by removing these lines

# ·――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――· #
# !!―――――――――――――――――――――――――!!! SECURITY WARNING !!!―――――――――――――――――――――――――!! #
# !!                                                                          !! #
# !! AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD/INSTALL/USE !! #
# !!    Please asses security risks by yourself before using this product.    !! #
# !!        You must report any security problemes or vulnerability on        !! #
# !!                  the issues page of the main repo site:                  !! #
# !!   [AHMYZSH project issues](https://github.com/Luxcium/ahmyzsh/issues/)   !! #
# !!                                                                          !! #
# !!―――――――――――――――――――――――――!!! SECURITY WARNING !!!―――――――――――――――――――――――――!! #
# ·――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――· #

# ============================================================================== ≈
# PROVIDED "AS IS" WITHOUT WARRANTY *NOT* fit for any particular use or purpose!
#
# MIT LICENSE
#
# Copyright © 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
# and contributors (https://github.com/Luxcium/ahmyzsh/contributors)
#
# Permission is hereby granted, free of charge, to all person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
# ==============================================================================≈
# Scientia es lux principium is a Trade Mark of Benjamin Vincent Kasapoglu
# (c) et tm - Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
# ------------------------------------------------------------------------------~

# export BOOTTIME_LOGFILE="${AHMYZSH_CACHE}/$(getstamp 20 bootime- .txt)"
# export BEGIN_BOOTTIME="        ${BEGIN_HOURGLASS_END_1}"
# export PRINT_BOOTTIME='1'
# export PRINT_VERSIONS='1'
# export BOOTTIME='1'

# echo '' >"${BOOTTIME_LOGFILE}"

# [ "${PATH_HASH}" == "0" ] && call_ "compute_path" && export PATH_HASH="$(set_path_hash_ ${PATH})" && echo '' && echo '' && echo ''
# [ "${BOOTTIME}" = 1 && "${PATH_HASH}" == "0" ] && echo "${BEGIN_BOOTTIME} Loaded all and compute cached path ..... $(timer_all) ms" >>"${BOOTTIME_LOGFILE}" &
# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} Loaded zshenv (equivalent) ............. $(timer_all) ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} Load fnm_ .............................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}"

# TIME_NOW=$(/usr/bin/date +%s%N)

# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} ${END_FUNCTION}Load oh_my_zsh .........................\u001b[0m\u001b[33;1m\u001b[1m ---  -- ${END_FUNCTION}+$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} Load activate_prompt ................... $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} Load load_options_ ..................... $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} Load load_autosuggest .................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOWx=$(/usr/bin/date +%s%N)

# TIME_NOW=$TIME_NOWx
# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} Load load_autocomplete ................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &

# [ "${BOOTTIME}" != 1 ] || echo "${BEGIN_BOOTTIME} Loaded zshrc (equivalent) .............. $(timer_all) ms" >>"${BOOTTIME_LOGFILE}" &
