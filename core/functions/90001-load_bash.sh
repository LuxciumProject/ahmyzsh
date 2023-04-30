#!/usr/bin/env bash
# if [ -n "${IS_BASH_}" ]; then #? IF NOT IS_BASH_
#   # shopt -q login_shell && echo 'Login shell' || echo 'Not login shell'
#   # [[ $- == *i* ]] && echo 'Interactive' || echo 'Not interactive'
#   if [ -z "${MAIN_INIT}" ]; then
#     MAIN_INIT="start"
#     echo pwd=$(pwd)
#     echo 'using bash'
#   else
#     [ -o interactive ] && echo \
#       "Already loaded reload not yet implemented"
#     return 1
#   fi
# fi

# export IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"
