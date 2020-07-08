################################################################################
##                                                                            ##
##          Copyright (c) 2019-present Benjamin Vincent Kasapoglu             ##
##                                                                            ##
##    This Source Code Form is subject to the terms of the Mozilla Public     ##
##    License, v. 2.0. If a copy of the MPL was not distributed with this     ##
##          file, You can obtain one at http://mozilla.org/MPL/2.0/.          ##
##                                                                            ##
##    The above copyright notice and this license notice shall be included    ##
##          in all copies or substantial portions of the Software.            ##
##                                                                            ##
################################################################################
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
#


# if [ "$0" = "zsh" -o "$0" = "-zsh" ] ; then
if [ -n "$(echo "${0}" | grep 'zsh')" ]; then
  if [ -z "${MAIN_INIT}" ]; then
    MAIN_INIT="start"
    # echo pwd= $(pwd)
    # echo 'using zsh'

  fi
fi

# if [ "$0" = "bash" -o "$0" = "-bash" ] ; then
if [ -n "$(echo "${0}" | grep 'bash')" ]; then
  if [ -z "${MAIN_INIT}" ]; then
    MAIN_INIT="start"
    echo pwd= $(pwd)
    echo 'using bash'
  fi
fi


################################################################################

# !! START /etc/zshenv
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

# export AHMYZSH="${HOME}/ahmyzsh"
# source "${AHMYZSH}/MAIN_init.sh"
# !! END /etc/zshenv

# !! START /etc/zprofile
# #
# # /etc/zprofile and ~/.zprofile are run for login shells
# #

# PATH="$PATH:$HOME/bin"
# export PATH

# _src_etc_profile()
# {
#     #  Make /etc/profile happier, and have possible ~/.zshenv options like
#     # NOMATCH ignored.
#     #
#     emulate -L ksh

#     # source profile
#     if [ -f /etc/profile ]; then
# 	    source /etc/profile
#     fi
# }
# _src_etc_profile

# unset -f _src_etc_profile
# !! END /etc/zprofile

# !! START /etc/zshrc
# #
# # /etc/zshrc is sourced in interactive shells.  It
# # should contain commands to set up aliases, functions,
# # options, key bindings, etc.
# #

# ## shell functions
# #setenv() { export $1=$2 }  # csh compatibility

# # Set prompts
# PROMPT='[%n@%m]%~%# '    # default prompt
# #RPROMPT=' %~'     # prompt for right side of screen

# # bindkey -v             # vi key bindings
# # bindkey -e             # emacs key bindings
# bindkey ' ' magic-space  # also do history expansion on space

# # Provide pathmunge for /etc/profile.d scripts
# pathmunge()
# {
#     if ! echo $PATH | /bin/grep -qE "(^|:)$1($|:)" ; then
#         if [ "$2" = "after" ] ; then
#             PATH=$PATH:$1
#         else
#             PATH=$1:$PATH
#         fi
#     fi
# }

# _src_etc_profile_d()
# {
#     #  Make the *.sh things happier, and have possible ~/.zshenv options like
#     # NOMATCH ignored.
#     emulate -L ksh

#     # from bashrc, with zsh fixes
#     if [[ ! -o login ]]; then # We're not a login shell
#         for i in /etc/profile.d/*.sh; do
# 	    if [ -r "$i" ]; then
# 	        . $i
# 	    fi
#         done
#         unset i
#     fi
# }
# _src_etc_profile_d

# unset -f pathmunge _src_etc_profile_d
# !! END /etc/zshrc

# !! START /etc/zlogin
##
# # /etc/zlogin and .zlogin are sourced in login shells.  It should
# # contain commands that should be executed only in
# # login shells.  It should be used to set the terminal
# # type and run a series of external commands (fortune,
# # msgs, from, etc).
# #

# !! END /etc/zlogin

# !! START /etc/bashrc
# # /etc/bashrc

# # System wide functions and aliases
# # Environment stuff goes in /etc/profile

# # It's NOT a good idea to change this file unless you know what you
# # are doing. It's much better to create a custom.sh shell script in
# # /etc/profile.d/ to make custom changes to your environment, as this
# # will prevent the need for merging in future updates.

# # Prevent doublesourcing
# if [ -z "$BASHRCSOURCED" ]; then
#   BASHRCSOURCED="Y"
# echo "/etc/bashrc start"
#   # are we an interactive shell?
#   if [ "$PS1" ]; then
#     if [ -z "$PROMPT_COMMAND" ]; then
#       case $TERM in
#       xterm*|vte*)
#         if [ -e /etc/sysconfig/bash-prompt-xterm ]; then
#             PROMPT_COMMAND=/etc/sysconfig/bash-prompt-xterm
#         elif [ "${VTE_VERSION:-0}" -ge 3405 ]; then
#             PROMPT_COMMAND="__vte_prompt_command"
#         else
#             PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#         fi
#         ;;
#       screen*)
#         if [ -e /etc/sysconfig/bash-prompt-screen ]; then
#             PROMPT_COMMAND=/etc/sysconfig/bash-prompt-screen
#         else
#             PROMPT_COMMAND='printf "\033k%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#         fi
#         ;;
#       *)
#         [ -e /etc/sysconfig/bash-prompt-default ] && PROMPT_COMMAND=/etc/sysconfig/bash-prompt-default
#         ;;
#       esac
#     fi
#     # Turn on parallel history
#     shopt -s histappend
#     history -a
#     # Turn on checkwinsize
#     shopt -s checkwinsize
#     [ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \W]\\$ "
#     # You might want to have e.g. tty in prompt (e.g. more virtual machines)
#     # and console windows
#     # If you want to do so, just add e.g.
#     # if [ "$PS1" ]; then
#     #   PS1="[\u@\h:\l \W]\\$ "
#     # fi
#     # to your custom modification shell script in /etc/profile.d/ directory
#   fi

#   if ! shopt -q login_shell ; then # We're not a login shell
#     # Need to redefine pathmunge, it gets undefined at the end of /etc/profile
#     pathmunge () {
#         case ":${PATH}:" in
#             *:"$1":*)
#                 ;;
#             *)
#                 if [ "$2" = "after" ] ; then
#                     PATH=$PATH:$1
#                 else
#                     PATH=$1:$PATH
#                 fi
#         esac
#     }

#     # By default, we want umask to get set. This sets it for non-login shell.
#     # Current threshold for system reserved uid/gids is 200
#     # You could check uidgid reservation validity in
#     # /usr/share/doc/setup-*/uidgid file
#     if [ $UID -gt 199 ] && [ "`/usr/bin/id -gn`" = "`/usr/bin/id -un`" ]; then
#        umask 002
#     else
#        umask 022
#     fi

#     SHELL=/bin/bash
#     # Only display echos from profile.d scripts if we are no login shell
#     # and interactive - otherwise just process them to set envvars
#     for i in /etc/profile.d/*.sh; do
#         if [ -r "$i" ]; then
#             if [ "$PS1" ]; then
#                 . "$i"
#             else
#                 . "$i" >/dev/null
#             fi
#         fi
#     done

#     unset i
#     unset -f pathmunge
#   fi
# echo "/etc/bashrc end"
# fi
# # vim:ts=4:sw=4

# !! END /etc/bashrc

# !! START /etc/profile
# # /etc/profile

# echo "/etc/profile start"
# # System wide environment and startup programs, for login setup
# # Functions and aliases go in /etc/bashrc

# # It's NOT a good idea to change this file unless you know what you
# # are doing. It's much better to create a custom.sh shell script in
# # /etc/profile.d/ to make custom changes to your environment, as this
# # will prevent the need for merging in future updates.

# pathmunge () {
#     case ":${PATH}:" in
#         *:"$1":*)
#             ;;
#         *)
#             if [ "$2" = "after" ] ; then
#                 PATH=$PATH:$1
#             else
#                 PATH=$1:$PATH
#             fi
#     esac
# }

# if [ -x /usr/bin/id ]; then
#     if [ -z "$EUID" ]; then
#         # ksh workaround
#         EUID=`/usr/bin/id -u`
#         UID=`/usr/bin/id -ru`
#     fi
#     USER="`/usr/bin/id -un`"
#     LOGNAME=$USER
#     MAIL="/var/spool/mail/$USER"
# fi

# # Path manipulation
# if [ "$EUID" = "0" ]; then
#     pathmunge /usr/sbin
#     pathmunge /usr/local/sbin
# else
#     pathmunge /usr/local/sbin after
#     pathmunge /usr/sbin after
# fi

# HOSTNAME=`/usr/bin/hostname 2>/dev/null`
# HISTSIZE=1000
# if [ "$HISTCONTROL" = "ignorespace" ] ; then
#     export HISTCONTROL=ignoreboth
# else
#     export HISTCONTROL=ignoredups
# fi

# export PATH USER LOGNAME MAIL HOSTNAME HISTSIZE HISTCONTROL

# # By default, we want umask to get set. This sets it for login shell
# # Current threshold for system reserved uid/gids is 200
# # You could check uidgid reservation validity in
# # /usr/share/doc/setup-*/uidgid file
# if [ $UID -gt 199 ] && [ "`/usr/bin/id -gn`" = "`/usr/bin/id -un`" ]; then
#     umask 002
# else
#     umask 022
# fi

# for i in /etc/profile.d/*.sh /etc/profile.d/sh.local ; do
#     if [ -r "$i" ]; then
#         if [ "${-#*i}" != "$-" ]; then
#             . "$i"
#         else
#             . "$i" >/dev/null
#         fi
#     fi
# done

# unset i
# unset -f pathmunge

# if [ -n "${BASH_VERSION-}" ] ; then
#         if [ -f /etc/bashrc ] ; then
#                 # Bash login shells run only /etc/profile
#                 # Bash non-login shells run only /etc/bashrc
#                 # Check for double sourcing is done in /etc/bashrc.
#                 . /etc/bashrc
#        fi
# fi
# echo "/etc/profile end"
# !! END /etc/profile
