#!/bin/bash
#. -----------------------------------------------------------------------------~
#. Scientia es lux principium - SEE THE BOTTOM OF THIS FILES FOR MORE INFO
#. MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose!
#. -----------------------------------------------------------------------------~
#.
# echo
# echo ZSH verry first entry point

# Put the folowing lines into '/etc/zshenv' or '/etc/zsh/zshenv' :
# export AHMYZSH=${AHMYZSH:="${AHMYZSH}"}
# source "${AHMYZSH:='${AHMYZSH}'}/source-me-in-etc-zshenv.sh"
TIMER_ALL_THEN=$(/usr/bin/date +%s%N)
# Fig pre block. Keep at the top of this file.
[[ "$(ps -p "$PPID" -o comm= | awk '{print $1}')" != "konsole" ]] && [[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash" && echo -n pre_block

export TIMER_ALL_THEN
export AHMYZSH="${AHMYZSH:="/ahmyzsh"}"
export AHMYZSH_CACHE="${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}"
export CACHED_PATH="${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}"

#* 1) LOAD PATH
# echo LOAD PATH
#+ -----------------------------------------------------------------------------~

# Move  theses elsewhere:
export LANG=fr_CA.utf8
export KDEDIR=/etc/kde
export KDEHOME=/home/luxcium/.kde
export QTDIR=/usr/lib64/qt5
export _XKB_CHARSET=UTF-8
export LC_ALL=fr_CA.UTF-8
export LINGUAS=fr_CA:en_US

export PATH_HASH=999
if [ -f "${CACHED_PATH}" ]; then
  # shellcheck source=/home/luxcium/.cache/ahmyzsh/path.env
  . "${CACHED_PATH}"

  TIMER_NOW=$(/usr/bin/date +%s%N)
  TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"

  TIME_TO_PATH="$(
    HEADPART=${TIMER_VALUE:0:-3}
    echo "${HEADPART:-0}"
  ).${TIMER_VALUE:${#TIMER_VALUE}-3}" 2>/dev/null
else
  TIME_TO_PATH='INFINITE'
  export PATH_HASH=0
fi
export TIME_TO_PATH
# echo time to path $TIME_TO_PATH
#* 2) LOAD AHMYZSH  B O O T S T R A P
#+ -----------------------------------------------------------------------------~
export MAIN_BOOTSTRAP="${MAIN_BOOTSTRAP="${AHMYZSH}/MAIN.sh"}"
if [ -f "${MAIN_BOOTSTRAP}" ]; then
  # shellcheck source=./MAIN.sh
  . "${MAIN_BOOTSTRAP}"

  SCIENTIA_ES_LUX_PRINCIPIUM

else
  [ -o interactive ] &&
    echo "Error: Path to file: '${MAIN_BOOTSTRAP}' can not be resolved"
  unset -v MAIN_BOOTSTRAP
fi

# Fig post block. Keep at the bottom of this file.
[[ "$(ps -p "$PPID" -o comm= | awk '{print $1}')" != "konsole" ]] && [[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash" && echo -n post_block
# -------------------------- !!! SECURITY WARNING !!! --------------------------≈
# AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD / INSTALL / USE
# Please asses security risks by yourself befor to use the product and report
# any security issues or vulnerability on the issues page of the main repo site:
# [AHMYZSH project issues](https://github.com/Luxcium/ahmyzsh/issues)
# ==============================================================================≈
# MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose!
#
# Copyright © 2019-2022 Benjamin Vincent Kasapoglu (Luxcium)
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
# Scientia es lux principium is a Tread Mark of Benjamin Vincent Kasapoglu
# (c) et tm - Benjamin Vincent Kasapoglu (Luxcium) 2017-2022
# ------------------------------------------------------------------------------~

# /etc/zsh/zshenv: system-wide .zshenv file for zsh(1).
#
# This file is sourced on all invocations of the shell.
# If the -f flag is present or if the NO_RCS option is set
# within this file, all other initialization files
# are skipped.
#
# This file should contain commands to set the command
# search path, plus other important environment variables.
# This file should not contain commands that produce
# output or assume the shell is attached to a tty.
#
# Global Order: zshenv, zprofile, zshrc, zlogin

# |----------------|-----------|-----------|------|
# |                |Interactive|Interactive|Script|
# |----------------|-----------|-----------|------|
# |                |login      |non-login  |      |
# |----------------|-----------|-----------|------|
# |/etc/zshenv     |    A      |    A      |  A   | ***
# |~/.zshenv       |    B      |    B      |  B   |
# |/etc/zprofile   |    C      |           |      |
# |~/.zprofile     |    D      |           |      |
# |/etc/zshrc      |    E      |    C      |      |
# |~/.zshrc        |    F      |    D      |      |
# |/etc/zlogin     |    G      |           |      |
# |~/.zlogin       |    H      |           |      |
# |                |           |           |      |
# |                |           |           |      |
# |~/.zlogout      |    I      |           |      |
# |/etc/zlogout    |    J      |           |      |
# |----------------|-----------|-----------|------|

# // ORIGINAL ZSH ENV FILE
# # /etc/zsh/zshenv: system-wide .zshenv file for zsh(1).
# #
# # This file is sourced on all invocations of the shell.
# # If the -f flag is present or if the NO_RCS option is
# # set within this file, all other initialization files
# # are skipped.
# #
# # This file should contain commands to set the command
# # search path, plus other important environment variables.
# # This file should not contain commands that produce
# # output or assume the shell is attached to a tty.
# #
# # Global Order: zshenv, zprofile, zshrc, zlogin

# if [[ -z "$PATH" || "$PATH" == "/bin:/usr/bin" ]]
# then
# 	export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games"
# fi
