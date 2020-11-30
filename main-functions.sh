#& Scientia es lux principium

#+ AHMYZSH custom options
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
function firtstage() {
  # CACHED_PATH

  export AHMYZSH_CACHE="${HOME}/.cache/ahmyzsh"
  export CACHED_PATH="${AHMYZSH_CACHE}/path.env"
  # : ${VERBOSA=100}

  : ${VERBOSA:=10}

  : ${EDITOR:=code}

  : ${ENV_LOADED:="false"}

  : ${ZLE_RPROMPT_INDENT:=0}

  : ${SHOW_LOAD_CUTLS:="true"}

  : ${AHMYZSH:="${HOME}/ahmyzsh"}

  export AHMYZSH

  : ${PATH_FILE:="${CACHED_PATH}"}

  export PATH_FILE

  # Set you locale here
  # LANG="fr_CA.UTF-8"

  : ${LANG:="fr_CA.UTF-8"}

  : ${LC_CTYPE:="${LANG}"}

  : ${LC_NUMERIC:="${LANG}"}

  : ${LC_TIME:="fr_FR.UTF-8"}

  : ${LC_COLLATE:="${LANG}"}

  : ${LC_MONETARY:="${LANG}"}

  : ${LC_MESSAGES:="${LANG}"}

  : ${LC_PAPER:="${LANG}"}

  : ${LC_NAME:="${LANG}"}

  : ${LC_ADDRESS:="${LANG}"}

  : ${LC_TELEPHONE:="${LANG}"}

  : ${LC_MEASUREMENT:="${LANG}"}

  : ${LC_IDENTIFICATION:="${LANG}"}

  # fall back
  source "${HOME}/.env"

}

function Load_all_files_d() {
  local SD1="$1"
  if [ -d "${SD1}" ]; then
    for f in "${SD1}/"*.sh; do
      source "${f}"
    done
  else
    return 2
  fi
}

function Load_all_files_d_v() {
  local SD1="$1"
  if [ -d "${SD1}" ]; then
    for f in "${SD1}/"*.sh; do
      if [ -r "${f}" ]; then
        source "${f}"
        [ "${VERBOSA}" -gt 10 ] && echo "${BEGIN_SOURCING_FILES} $(timer_now) ${f} ${END_SOURCING_FILES}"
      else
        [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
        return 3
      fi
      TIMER_THEN=$(/usr/bin/date +%s%N)
    done
  else
    [ "${VERBOSA}" -gt 2 ] && echo "Error loading files in '${SD1}'... Directory or path can not be resolved"
    return 2
  fi
}

function activate_normal_prompt() {

  typeset -g ZSH_THEME="../../powerlevel10k/powerlevel10k"
  source_ "${POWERLEVEL10K}/powerlevel10k.zsh-theme"

}

function activate_instant_prompt() {
  # # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # # Initialization code that may require console input (password prompts, [y/n]
  # # confirmations, etc.) must go above this block, everything else may go below.

  typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
  typeset -g ZSH_THEME="../../powerlevel10k/powerlevel10k"

  source_ "${CUSTOM_ZSH}/sources/instant-prompt"
  source_ "${POWERLEVEL10K}/powerlevel10k.zsh-theme"

}

function load_my_powerlevel10k_now() {
  ## load_my_pl10K_layout_now
  source_ "${AHMYZSH}/themes/pl10K-Layout.zsh"
  load_my_powerlevel10k
  pl10k_prompt_on

}

function compute_pl10K_now() {
  call_ "compute_pl10k"
}

function load_path() {
  ## load_path
  if [ -f "${CACHED_PATH}" ]; then
    source_ "${CACHED_PATH}"
    (compute_path &) >/dev/null
  else
    compute_path
  fi
}

function re_load_path() {
  compute_path
}

alias reloadpath="re_load_path"

function load_zlogout() {
  ##$  Interactive,login

  ( 
    (builtin cd $AHMYZSH &&
      find $(pwd) | grep .zwc | foreachline rm -f &&
      zsh_compile_all_R) &
  )                                           # 1.2385s
  ( (_p9k_dump_instant_prompt 2>/dev/null) &) # 0.0310s
  ( (compute_path 2>/dev/null) &)             # 0.4123s
  say_bye
  exit
}

function load_autocomplete_now() {
  load_ "${ZSH_COMPLETION}/autocomplete.sh" "load_autocomplete"
}

function load_aliases() {
  call_ Load_all_files_d "${AHMYZSH_CORE}/aliases"
}

function load_oh_my_zsh() {

  # Uncomment the following line to disable bi-weekly auto-update checks.
  DISABLE_AUTO_UPDATE="true"

  # Uncomment the following line to disable auto-setting terminal title.
  DISABLE_AUTO_TITLE="true"

  # Uncomment the following line to enable command auto-correction.
  # ENABLE_CORRECTION="true"

  # Uncomment the following line to display red dots whilst waiting for completion.
  COMPLETION_WAITING_DOTS="true"

  # Uncomment the following line if you want to disable marking untracked files
  # under VCS as dirty. This makes repository status check for large repositories
  # much, much faster.
  DISABLE_UNTRACKED_FILES_DIRTY="true"
  plugins=(
    # zsh-autosuggestions
    # zsh-syntax-highlighting
    zsh-better-npm-completion
    yarn-autocompletions
    zsh-completions
    git
    redis-cli
  )
  # alias-finder
  # colorize
  # dnf
  # emoji
  # gem
  # git
  # git-auto-fetch
  # git-hubflow
  # git-prompt
  # github
  # man
  # node
  # npm
  # rbenv
  # redis-cli
  # ruby
  # safe-paste
  # systemadmin
  # systemd
  # vscode
  # yarn
  source $ZSH/oh-my-zsh.sh
  unalias ll
  # echo -n "${normal}$CLRLN$LDLCLR$(tput setaf 2) \uf013 ${bold} DONE! load_oh_my_zsh()${normal}"
}

function load_zshenv() {
  #   #$ Interactive,Script,login,non-login

  ## load_path_now
  call_ load_path

  ## load_functions_now
  call_ load_functions_definitions

  [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_HOURGLASS_END_1} load_zshenv in $(timer_all) ms !${END_FUNCTION}"
}

function load_zshrc() {
  #   #$ Interactive,login,non-login

  call_ load_my_powerlevel10k_now
  # call_ activate_instant_prompt
  call_ activate_normal_prompt

  if [ "${PARENT_ENV_LOADED}" != 'true' ]; then
    (compute_path &) # >/dev/null
  fi

  # source_ "${AMYZSH_CORE}/options-list.zsh"
  call_ load_oh_my_zsh
  call_ load_options_list
  call_ load_options
  call_ load_autocomplete_now

  # autoload -U compinit && compinit

}

function zsh_compile_all_R() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -R ${line}"; done) 2>/dev/null
}

function zsh_compile_all_M() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -M ${line}"; done) 2>/dev/null
}

function zsh_compile_all() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile ${line}"; done) 2>/dev/null

}

function add_to_path_() {
  [ -z $1 ] || export PATH="${1}:${PATH}"
}

function affix_to_path_() {
  [ -z $1 ] || export PATH="${1}:${PATH}"
}

function perpend_to_path_() {
  [ -z $1 ] || export PATH="${1}:${PATH}"
}

function append_to_path_() {
  [ -z $1 ] || export PATH="${PATH}:${1}"
}

function timer_() {
  # local TIMER_NOW=$(/bin/date +%s%N)
  local MICROSEC='1000000'
  local TIMER_NOW=$(date +%s%N)
  local timecalc=$((${TIMER_NOW} - ${1:=TIMER_NOW}))
  local TIMER_VALUE=$((${timecalc} / ${MICROSEC}))
  if [ ${#TIMER_VALUE} = 0 ]; then
    local spacing_="    "
  elif [ ${#TIMER_VALUE} = 1 ]; then
    local spacing_="   "
  elif [ ${#TIMER_VALUE} = 2 ]; then
    local spacing_="  "
  elif [ ${#TIMER_VALUE} = 3 ]; then
    local spacing_=" "
  else
    local spacing_=""
  fi
  echo "${TIMER_VALUE}${spacing_}"
  return 0
}

function timer_now() {
  # local TIMER_NOW=$(/usr/bin/date +%s%N)
  # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
  timer_ "${TIMER_THEN}"
  # echo -n "${TIMER_VALUE} "
  # return 0
}

function timer_all() {
  # local TIMER_NOW=$(/usr/bin/date +%s%N)
  # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
  timer_ "${TIMER_ALL_THEN}"
  # echo -n "${TIMER_VALUE} "
}

function call_() {
  if [ -z $1 ]; then
    [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no function call provided"
    return 1
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    eval ${1}

    returnval=$?
    [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
    return "${returnval}"
  fi
}

function source_() {
  if [ -z $1 ]; then
    [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no file provided"
    return 1
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    if [[ -f $1 ]]; then
      if [[ -r $1 ]]; then
        source "${1}"
        [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
        return 0
      else
        [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
        return 3
      fi
    else
      [ "${VERBOSA}" -gt 2 ] && echo "Error sourcing '$1' file provided does not exist"
      return 2
    fi
  fi
}

function load_() {
  source_ "${1}" &&
    call_ ${2}

}

function parse_options() {
  o_port=(-p 9999)
  o_root=(-r WWW)
  o_log=(-d ZWS.log)
  zparseopts -K -- p:=o_port r:=o_root l:=o_log h=o_help
  if [[ $? != 0 || "$o_help" != "" ]]; then
    echo Usage: $(basename "$0") "[-p PORT] [-r DIRECTORY]"
    exit 1
  fi
  port=$o_port[2]
  root=$o_root[2]
  log=$o_log[2]
  if [[ $root[1] != '/' ]]; then root="$PWD/$root"; fi
}

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

# ==============================================================================≈
# MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose!
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
