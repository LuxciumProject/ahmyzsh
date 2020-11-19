#. -----------------------------------------------------------------------------~
#. Scientia es lux principium - SEE THE BOTTOM OF THIS FILES FOR MORE INFO
#. MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose!
#. -----------------------------------------------------------------------------~
#. ZSH verry first entry point

export TIMER_ALL_THEN=$(/usr/bin/date +%s%N)

export AHMYZSH=${AHMYZSH:="${HOME}/ahmyzsh"}
export AHMYZSH_CACHE=${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}
export CACHED_PATH=${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}
export MAIN_BOOTSTRAP=${MAIN_BOOTSTRAP:="${AHMYZSH}/MAIN.sh"}

#+ LOAD PATH
#+ -----------------------------------------------------------------------------~

if [ -f "${CACHED_PATH}" ]; then
    . "${CACHED_PATH}"

    TIMER_NOW=$(/usr/bin/date +%s%N)
    TIMER_VALUE="$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))"

    export TIME_TO_PATH="${TIMER_VALUE}"

    if [[ -o interactive ]]; then
        echo "   ${TIME_TO_PATH}ms  to  'PATH'"
    fi
else
    if [[ -o interactive ]]; then
        echo "Error: Unable to preload 'PATH'"
    fi
fi

#+ AHMYZSH  B O O T S T R A P
#+ -----------------------------------------------------------------------------~

if [ -f "${MAIN_BOOTSTRAP}" ]; then
    . "${MAIN_BOOTSTRAP}"

    SCIENTIA_ES_LUX_PRINCIPIUM

else
    [[ -o interactive ]] &&
        echo "Error loading '${MAIN_BOOTSTRAP}'... File or path can not be resolved"
    unset -v MAIN_BOOTSTRAP
fi

# -------------------------- !!! SECURITY WARNING !!! --------------------------≈
# AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD / INSTALL / USE
# Please asses security risks by yourself befor to use the product and report
# any security issues or vulnerability on the issues page of the main repo site:
# [AHMYZSH project issues](https://github.com/Luxcium/ahmyzsh/issues)
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
# Scientia es lux principium is a Tread Mark of Benjamin Vincent Kasapoglu
# (c) et tm - Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
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
