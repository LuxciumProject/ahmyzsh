#!/bin/bash

#& Scientia es lux principium

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
#* AHMYZSH custom settings

function MAIN_SETTINGS() {
  call_ my_envs
  bindkey -v
  # PKG_CONFIG_PTH=
  # : "${VERBOSA:=10000}"
  # : ${EDITOR:="nano"}
  # export arch=$(uname -p)
  # export basearch=$(uname -p)

  # export VERBOSA=0000
  # echo $VERBOSA
  : "${VERBOSA:=0000}"
  : "${AHMYZSH:="/projects/ahmyzsh"}"
  : "${AH_LIBRARIES:="${AHMYZSH}/libraries"}"
  : "${AHMYZSH_CORE:="${AHMYZSH}/core"}"
  : "${ZSH_CUSTOM:="${AHMYZSH}"}"
  : "${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}"
  : "${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}"
  : "${PATH_FILE:="${CACHED_PATH}"}"
  : "${arch:="$(uname -p)"}"
  : "${basearch:="$(uname -p)"}"
  : "${EDITOR:=code}"
  : "${ENV_LOADED:="false"}"
  : "${PAGER:="/usr/bin/most -s"}"
  : "${SHOW_LOAD_CUTLS:="true"}"
  : "${SYSTEMD_PAGER:="less"}"
  : "${ZLE_RPROMPT_INDENT:=0}"
  export DOTNET_CLI_TELEMETRY_OPTOUT=1
  call_ __LOCALE__

  export VERBOSA
  export PATH_FILE
  export EDITOR
  export ENV_LOADED
  export ZLE_RPROMPT_INDENT
  export SHOW_LOAD_CUTLS
  export AHMYZSH
  export ZSH_CUSTOM
  export AHMYZSH_CORE
  export AH_LIBRARIES
  export EDITOR
  export PAGER
  export AHMYZSH_CACHE
  export CACHED_PATH

  # fall back
  # source_ "${HOME}/.env"
}

# alias questrade='code ~/dev/questrade-ts'
function my_envs() {
  ## fnm
  DOTNET_CLI_TELEMETRY_OPTOUT=1

  export FNM_ALIASES="${HOME}/.fnm/aliases"
  {
    export NODEDEFAULT="${FNM_ALIASES}/default/bin"
    export NODELATEST="${FNM_ALIASES}/latest/bin"
    export NODELATEST_ARGON="${FNM_ALIASES}/latest-argon/bin"
    export NODELATEST_BORON="${FNM_ALIASES}/latest-boron/bin"
    export NODELATEST_CARBON="${FNM_ALIASES}/latest-carbon/bin"
    export NODELATEST_DUBNIUM="${FNM_ALIASES}/latest-dubnium/bin"
    export NODELATEST_ERBIUM="${FNM_ALIASES}/latest-erbium/bin"

    alias node-default='${NODEDEFAULT}/node'
    alias node-latest='${NODELATEST}/node'
    alias node-argon='${NODELATEST_ARGON}/node'
    alias node-boron='${NODELATEST_BORON}/node'
    alias node-carbon='${NODELATEST_CARBON}/node'
    alias node-dubnium='${NODELATEST_DUBNIUM}/node'
    alias node-erbium='${NODELATEST_ERBIUM}/node'
  }

  export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"

  PS2="$(tput setab 7)$(tput setaf 0)  "
  export PS2

  # Ruby
  export WITH_RBENV='true'
  export PATH_RBENV='/Users/neb_401/.rbenv/shims'

  # GEM
  export WITH_BIN_GEM='true'
  export PATH_BIN_GEM='/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin'

  export PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"

  export PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
  export PERL_MB_OPT="--install_base ${HOME}/perl5"
  export PERL_MM_OPT='INSTALL_BASE=/Users/neb_401/perl5'
  export PATH_PKG_CONFIG='/usr/local/opt/sqlite/lib/pkgconfig'
  # export PATH_PKG_CONFIG="/usr/local/opt/openssl/lib/pkgconfig"
  export WITH_ANACONDA='true'
  export PATH_ANACONDA3="${HOME}/anaconda3/tungsten/bin"

  export LOAD_ONCE_00="true"

  # export NODE_DEPLOYEMENT_ENV='false'
  # export NODE_ENV='development'
  # export NODE_LOCAL_ENV='true'
  # export NODE_NO_READLINE=1
  # export NODE_REMOTE_ENV='true'
  # export NODE_REPL_HISTORY_SIZE=10000
  # export NODE_REPL_HISTORY="${HOME}/.node_repl_history"
  # export NODE_REPL_MODE='sloppy'
  # export NODE_TEST_ENV='false'
  # export NPM_CHECK_INSTALLER='pnpm'
  # export PYTHONSTARTUP="${HOME}/.pythonrc"

  export GITHUB_TOKEN=""
  export GITHUB_PASSWORD="${GITHUB_TOKEN}"
  export GITHUB_USER='Luxcium'

  export LOCALPORT=3006
  export PORT=3006
  export SERVER='dev-server'
}

function __LOCALE__() {

  # This variable overrides the value of the ‘LANG' variable and the value of any of the other variables starting with # ‘LC_'.
  # LC_ALL="fr_CA.UTF-8"

  # This variable determines the locale category for character collation information within ranges in glob brackets and # for sorting.
  LC_COLLATE="fr_CA.UTF-8"

  # This variable determines the locale category for character handling functions. If the MULTIBYTE option is in effect # this variable or LANG should contain a value that reflects the character set in use, even if it is a single-byte # character set, unless only the 7-bit subset (ASCII) is used. For example, if the character set is ISO-8859-1, a # suitable value might be en_US.iso88591 (certain Linux distributions) or en_US.ISO8859-1 (MacOS).
  LC_CTYPE="fr_CA.UTF-8"

  # This variable determines the language in which messages should be written. Note that zsh does not use message # catalogs.
  LC_MESSAGES="fr_CA.UTF-8"

  # This variable affects the decimal point character and thousands separator character for the formatted input/output # functions and string conversion functions. Note that zsh ignores this setting when parsing floating point # mathematical expressions.
  LC_NUMERIC="fr_CA.UTF-8"

  # This variable determines the locale category for date and time formatting in prompt escape sequences.
  LC_TIME="fr_CA.UTF-8"

  LC_MONETARY="fr_CA.UTF-8"

  # Set you locale here
  # LANG="fr_CA.UTF-8"
  : "${LANG:="fr_CA.UTF-8"}"
  : "${LC_CTYPE:="${LANG}"}"
  : "${LC_NUMERIC:="${LANG}"}"
  : "${LC_TIME:="fr_FR.UTF-8"}"
  : "${LC_COLLATE:="${LANG}"}"
  : "${LC_MONETARY:="${LANG}"}"
  : "${LC_MESSAGES:="${LANG}"}"
  : "${LC_PAPER:="${LANG}"}"
  : "${LC_NAME:="${LANG}"}"
  : "${LC_ADDRESS:="${LANG}"}"
  : "${LC_TELEPHONE:="${LANG}"}"
  : "${LC_MEASUREMENT:="${LANG}"}"
  : "${LC_IDENTIFICATION:="${LANG}"}"

}

function _LOCALE_() {

  local language=${1:-'fr'}
  local region=${2:+_${2}}
  local encodings=${3:+.${3}}
  : "${encoding:-.'UTF-8'}"

  local locale="${language}${region}${encodings}"

  if [[ "${language}" == "fr" ]]; then
    LC_TIME="fr_FR.UTF-8"
  else
    LC_TIME="${locale}"
  fi
  export LC_TIME
  export LANG="${locale}"
  export LC_CTYPE="${locale}"
  export LC_NUMERIC="${locale}"
  export LC_COLLATE="${locale}"
  export LC_MONETARY="${locale}"
  export LC_MESSAGES="${locale}"
  export LC_PAPER="${locale}"
  export LC_NAME="${locale}"
  export LC_ADDRESS="${locale}"
  export LC_TELEPHONE="${locale}"
  export LC_MEASUREMENT="${locale}"
  export LC_IDENTIFICATION="${locale}"

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

# ============================================================================== ≈
# PROVIDED "AS IS" WITHOUT WARRANTY *NOT* fit for any particular use or purpose!
#
# MIT LICENSE
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
