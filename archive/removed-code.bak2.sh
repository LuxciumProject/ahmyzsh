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
