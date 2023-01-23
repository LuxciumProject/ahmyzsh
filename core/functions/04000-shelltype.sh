#!/bin/bash

#+ ------------------------------------------------------------------------------

# isbash
function isbash() {
  [[ -n ${IS_BASH_:-''} ]] && return 0 || return 1
} 2>/dev/null

# iszsh
function iszsh() {
  [[ -n ${IS_ZSH_:-''} ]] && return 0 || return 1
} 2>/dev/null

# islogin_z
function islogin_z() {
  ([[ -o login ]] && return 0) || return 1
} 2>/dev/null
# islogin_b
function islogin_b() {
  shopt -q login_shell && return 0 || return 1
} 2>/dev/null

# isinteractive_z
function isinteractive_z() {
  [[ -o interactive ]] && return 0 || return 1
} 2>/dev/null

# isinteractive_b
function isinteractive_b() {
  [[ $- == *i* ]] && isbash && return 0 || return 1
} 2>/dev/null

# islogin
function islogin() {
  (iszsh && islogin_z) || (isbash && islogin_b)
} 2>/dev/null

# isinteractive
function isinteractive() {
  (iszsh && isinteractive_z) || (isbash && isinteractive_b)
} 2>/dev/null

# isnotinteractive
function isnotinteractive() {
  (isinteractive && return 1) || return 0
} 2>/dev/null

# isnotlogin
function isnotlogin() {
  (islogin && return 1) || return 0
} 2>/dev/null

function isloginorinteractive() {
  (islogin) || (isinteractive)
}

function isloginandinteractive() {
  (islogin) && (isinteractive)
}

#+ ------------------------------------------------------------------------------

# function isloginshell() { #+ I'm a login shell
#   if [[ -o login ]]; then
#     echostdout "I'm a login shell" \
#       && return 0
#   else
#     echostderr "I'm a non login shell" \
#       && return 1
#   fi

# }

# # isinteractiveshell
# function isinteractiveshell() { #+ I'm interactive shell
#   if [[ -o interactive ]]; then
#     echostdout "I'm interactive shell" \
#       && return 0
#   else
#     echostderr "I'm non interactive shell" \
#       && return 1
#   fi

# }

# # isnonloginshell
# function isnonloginshell() { #+ I'm a non login shell
#   if [[ -o login ]]; then
#     echostderr "I'm a login shell" \
#       && return 1
#   else
#     echostdout "I'm a non login shell" \
#       && return 0
#   fi

# }

# # isnoninteractiveshell
# function isnoninteractiveshell() { #+ I'm non interactive shell
#   if [[ -o interactive ]]; then
#     echostderr "I'm interactive shell" \
#       && return 1
#   else
#     echostdout "I'm non interactive shell" \
#       && return 0
#   fi

# }

# function Bash_Login_Start() {
#   # shopt -q login_shell && echo 'Login shell' || echo 'Not login shell'
#   if [[ Bash_Login_Start_Did_Execute != true ]]; then
#     export Bash_Login_Start_Did_Execute=true
#     shopt -q login_shell && (
#       echo "I'm a login shell"
#       return 0
#     ) || (
#       echo 'Not login shell'
#       return 1
#     )
#   fi

# }

# function Bash_Interactive_Start() {
#   if [[ Bash_Interactive_Start_Did_Execute != true ]]; then
#     export Bash_Interactive_Start_Did_Execute=true

#     if [[ $- == *i* ]]; then
#       (
#         echo "I'm interactive shell"
#         return 0
#       ) || (
#         echo 'Not interactive'
#         return 1
#       )
#     fi
#   fi

# }

# alias loginshell="isloginshell"
# alias interactiveshell="isinteractiveshell"
# alias nonloginshell="isnonloginshell"
# alias noninteractiveshell="isnoninteractiveshell"
# alias nonlogin="isnonloginshell"
# alias noninteractive="isnoninteractiveshell"

#  https://stackoverflow.com/a/46019604/10269298
#+ CC BY-SA 4.0 Sebastian & MarkHu & go2null & Benjamin Vincent

# echo "my errz" > /proc/self/fd/2 will effectively output to stderr because
# /proc/self is a link to the current process, and /proc/self/fd holds the
# process opened file descriptors, and then, 0, 1, and 2 stand for stdin,
# stdout and stderr respectively.

# The /proc/self link doesn't work on MacOS, however, /proc/self/fd/* is
# available on Termux on Android, but not /dev/stderr.
# [How to detect the OS from a Bash script ?]
# (https://stackoverflow.com/questions/394230/how-to-detect-the-os-from-a-bash-script)
# can help if you need to make your script more portable by determining which
# variant to use.

# The /proc/self link doesn't work on MacOS, so I'll stick with the more
# straight-forward /dev/stderr method. Also, as noted in other
# answers/comments, it is probably better to use >> to append.
# – MarkHu Nov 22 '17 at 0:30

# /proc/self/fd/* is available on Termux on Android, but not /dev/stderr.
# – go2null Feb 1 '18 at 11:30

# echo -n "has '/proc/self/fd/1': " ; [ -e /proc/self/fd/1 ] && echo true || echo false
# echo -n "has '/proc/self/fd/2': " ; [ -e /proc/self/fd/2 ] && echo true || echo false
# echo -n "has '/dev/stdout': " ; [ -e /dev/stdout ] && echo true || echo false
# echo -n "has '/dev/stderr': " ; [ -e /dev/stderr ] && echo true || echo false

# https://stackoverflow.com/a/18434831/10269298
#+ CC BY-SA 4.0 kenorb
# case "$OSTYPE" in
#   solaris*) echo "SOLARIS" ;;
#   darwin*)  echo "OSX" ;;
#   linux*)   echo "LINUX" ;;
#   bsd*)     echo "BSD" ;;
#   msys*)    echo "WINDOWS" ;;
#   *)        echo "unknown: $OSTYPE" ;;
# esac

# # Detect the platform (similar to $OSTYPE)
# OS="`uname`"
# case $OS in
#   'Linux')
#     OS='Linux'
#     alias ls='ls --color=auto'
#     ;;
#   'FreeBSD')
#     OS='FreeBSD'
#     alias ls='ls -G'
#     ;;
#   'WindowsNT')
#     OS='Windows'
#     ;;
#   'Darwin')
#     OS='Mac'
#     ;;
#   'SunOS')
#     OS='Solaris'
#     ;;
#   'AIX') ;;
#   *) ;;
# esac

# case $(uname | tr '[:upper:]' '[:lower:]') in
#   linux*)
#     export TRAVIS_OS_NAME=linux
#     ;;
#   darwin*)
#     export TRAVIS_OS_NAME=osx
#     ;;
#   msys*)
#     export TRAVIS_OS_NAME=windows
#     ;;
#   *)
#     export TRAVIS_OS_NAME=notset
#     ;;
# esac

# IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
# IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

# alias iszsh_v="([[ -n ${IS_ZSH_:-''} ]] && (echo 'true'; exit 0) || (echo 'false'; exit 1))"
# alias isbash_V="([[ -n ${IS_BASH_:-''} ]] && (echo 'true'; exit 0) || (echo 'false'; exit 1))"

# alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
# alias isbash="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"

# # function _echostdout() {
# #   ([ -e /proc/self/fd/1 ] && (echo "${@}" >>/proc/self/fd/1)) \
# #     || ([ -e /dev/stdout ] && (echo "${@}" >>/dev/stdout)) \
# #     || return 10
# # }

# # function _echostderr() {
# #   ([ -e /proc/self/fd/2 ] && (echo "${@}" >>/proc/self/fd/2)) \
# #     || ([ -e /dev/stderr ] && (echo "${@}" >>/dev/stderr)) \
# #     || return 10
# # }

# # bash, zsh:
# # login nonlogin

# # bash, zsh:
# # interactive noninsteactive

# # isloginshell

# iszsh
# isbash

# # alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
# # alias isbash="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"
