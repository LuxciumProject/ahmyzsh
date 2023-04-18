#!/bin/bash
#* AHMYZSH basic functions

function load_all_config_and_settings_files() {

  if [ "${VERBOSA}" -gt 10 ]; then

    export BEGIN_SOURCING_FILES="\u001b[0m\u001b[34m#   \u001b[0m\u001b[33m\uf085\u001b[0m\u001b[34m  >"
    export END_SOURCING_FILES="\u001b[0m\u001b[31;1m\u001b[1m"
    TIMER_THEN=$(/usr/bin/date +%s%N)
    Load_all_files_d_v "${AHMYZSH_CORE}/paths"
    Load_all_files_d_v "${AHMYZSH_CORE}/layouts"
    Load_all_files_d_v "${AHMYZSH_CORE}/compute-path"
    Load_all_files_d_v "${AHMYZSH_CORE}/functions"
    Load_all_files_d_v "${AHMYZSH_CORE}/aliases"
    Load_all_files_d_v "${AHMYZSH_CORE}/env"
  else
    Load_all_files_d "${AHMYZSH_CORE}/paths"
    Load_all_files_d "${AHMYZSH_CORE}/layouts"
    Load_all_files_d "${AHMYZSH_CORE}/compute-path"
    Load_all_files_d "${AHMYZSH_CORE}/functions"
    Load_all_files_d "${AHMYZSH_CORE}/aliases"
    Load_all_files_d "${AHMYZSH_CORE}/env"
  fi
}

function load_config_or_settings_() {

  if [ "${VERBOSA}" -gt 10 ]; then
    export BEGIN_SOURCING_FILES="\u001b[0m\u001b[34m#   \u001b[0m\u001b[33m\uf085\u001b[0m\u001b[34m  >"
    export END_SOURCING_FILES="\u001b[0m\u001b[31;1m\u001b[1m"

    TIMER_THEN=$(/usr/bin/date +%s%N)
    Load_all_files_d_v "${1}"
  else
    Load_all_files_d "${1}"
  fi
}

function Load_all_files_d() {
  local SD1="$1"
  if [ -d "${SD1}" ]; then
    for f in "${SD1}/"*.sh; do
      # shellcheck disable=SC1090
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
        # shellcheck disable=SC1090
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

function timer_() {
  local MICROSEC='1000000'
  local NOW_TIME
  NOW_TIME=$(date +%s%N)

  local timecalc=$((NOW_TIME - ${1:=NOW_TIME}))
  local TIMER_VALUE=$((timecalc / MICROSEC))
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
  timer_ "${TIMER_THEN}"
  return
}

function timer_from_then() {
  # TIME_NOW=$(/usr/bin/date +%s%N)
  local TIME_THEN=TIME_NOW
  timer_ "${TIME_THEN}"
  return
}

function timer_all() {
  # local TIMER_NOW=$(/usr/bin/date +%s%N)
  # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
  timer_ "${TIMER_ALL_THEN}"
  # echo -n "${TIMER_VALUE} "
}

function load_() {
  source_ "${1}" &&
    call_ "${2}"

}

function call_() {
  if [ -z "$1" ]; then
    [ "${VERBOSA}" -gt 4 ] && echo "Error sourcing ' $1 ' no function call provided"
    return 4
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    eval "${1}"

    returnval=$?
    [ "${VERBOSA}" -gt 1 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
    return "${returnval}"
  fi
}

function source_() {
  if [ -z "$1" ]; then
    [ "${VERBOSA}" -gt 4 ] && echo "Error sourcing ' $1 ' no file provided"
    return 4
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    if [[ -f $1 ]]; then
      if [[ -r $1 ]]; then
        # shellcheck disable=SC1090
        source "${1}"
        [ "${VERBOSA}" -gt 2 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
        return 0
      else
        [ "${VERBOSA}" -gt 6 ] && echo "Error sourcing '$1' file provided is not redable"
        return 6
      fi
    else
      [ "${VERBOSA}" -gt 8 ] && echo "Error sourcing '$1' file provided does not exist"
      return 8
    fi
  fi
}

alias reload_alias_and_conf="load_all_config_and_settings_files"
alias reloadpath="re_load_path"
alias bye='load_zlogout;exit'
