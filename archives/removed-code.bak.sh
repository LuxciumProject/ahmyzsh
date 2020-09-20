################################################################################
##                                                                            ##
##           Copyright (c) 2019-present Benjamin Vincent Kasapoglu.           ##
##                                                                            ##
##            This Source Code Form is subject to the terms of the            ##
##                       Mozilla Public License, v. 2.0.                      ##
##            You can obtain a copy at http://mozilla.org/MPL/2.0/            ##
##                                                                            ##
##    The above copyright notice and this license notice shall be included    ##
##           in all copies or substantial portions of the Software.           ##
##                                                                            ##
################################################################################
#
#
# This is the `ahmyzsh` MAIN bootloader it should be invoked (sourced) inside of
# /etc/zshenv the system-wide .zshenv file for zsh(1).
#
# To have minimal bash(1) support folow instruction in /etc/profile to include
# the code from instruction below or add code directly into the profile file
# folow instruction in /etc/profile...
#
# fist set `AHMYZSH` variable to be the path of the folder where
# ahmyzsh is located
# i.e. if the folder is in the root of your home folder then type this :
#
# without the backtics (`) -> `export AHMYZSH="${HOME}/ahmyzsh"`
# without the backtics (`) -> `source "${AHMYZSH}/MAIN_init.sh"`+
#
#  i.e.:
# export AHMYZSH="${HOME}/ahmyzsh"
# source "${AHMYZSH}/MAIN_init.sh"

# /etc/zsh/zshenv: system-wide .zshenv file for zsh(1).
#
# This file is sourced on all invocations of the shell.
# If the -f flag is present or if the NO_RCS option is
# set within this file, all other initialization files
# are skipped.
#
# This file should contain commands to set the command
# search path, plus other important environment variables.
# This file should not contain commands that produce
# output or assume the shell is attached to a tty.
#
# Global Order: zshenv, zprofile, zshrc, zlogin

# ¬ !! /etc/zshenv
# export TIMER_ALL_THEN2=$(/usr/local/bin/gdate +%s%N) 2>/dev/null
# echo $TIMER_ALL_THEN2

export TIMER_ALL_THEN=$(/bin/date +%s%N) 2>/dev/null
export AHMYZSH="${HOME}/ahmyzsh"
S1="${AHMYZSH}/MAIN.sh"
if [ -f "${S1}" ]; then
  . ${S1}
  unset -v S1
  source "${AHMYZSH}/MAIN.sh"
else
  if [[ -o interactive ]]; then
    echo "Error loading '${S1}'... AHMYZSH initialisation scripts can not be resolved"
  fi
  unset -v S1
fi
