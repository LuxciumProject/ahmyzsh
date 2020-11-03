#!/bin/sh

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

function load_() {
  source_ "${1}" &&
    call_ ${2}
}
