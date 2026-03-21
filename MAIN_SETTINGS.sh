#!/usr/bin/env zsh

#& Scientia es lux principium

#+ =============================================================================
#? MIT LICENSE - *NOT* fit for any particular use or purpose - PROVIDED "AS IS"
#? See the bottom of this file for *IMPORTANT INFORMATION* - MIT LICENSE
#? =============================================================================
#? @author Benjamin Vincent Kasapoglu (LUXCIUM)
#? @copyright (c) 2020 - LUXCIUM (Benjamin Vincent Kasapoglu)
#? @license MIT
#? =============================================================================
#& Scientia es lux principium is a Trade Mark of Benjamin Vincent Kasapoglu
#& (c) & tm Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
#+ =============================================================================
#* AHMYZSH custom settings

function MAIN_SETTINGS() {
  call_ my_envs
  # Set vi-mode keybindings (will be set again at end of boot for safety)
  bindkey -v 2>/dev/null

  # Framework variables (use defaults if not already set)
  : "${VERBOSA:=1}"
  : "${AHMYZSH:="${${(%):-%x}:A:h}"}"
  : "${AH_LIBRARIES:="${AHMYZSH}/libraries"}"
  : "${AHMYZSH_CORE:="${AHMYZSH}/core"}"
  : "${ZSH_CUSTOM:="${AHMYZSH}"}"
  : "${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}"
  : "${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}"
  : "${PATH_FILE:="${CACHED_PATH}"}"
  : "${EDITOR:="${EDITOR:-nano}"}"
  : "${ENV_LOADED:="false"}"
  : "${PAGER:="${PAGER:-less}"}"
  : "${SHOW_LOAD_CUTLS:="true"}"
  : "${SYSTEMD_PAGER:="less"}"
  : "${ZLE_RPROMPT_INDENT:=0}"
  export DOTNET_CLI_TELEMETRY_OPTOUT=1

  export VERBOSA PATH_FILE EDITOR ENV_LOADED ZLE_RPROMPT_INDENT
  export SHOW_LOAD_CUTLS AHMYZSH ZSH_CUSTOM AHMYZSH_CORE
  export AH_LIBRARIES PAGER AHMYZSH_CACHE CACHED_PATH
}

function my_envs() {
  DOTNET_CLI_TELEMETRY_OPTOUT=1

  # FNM (Fast Node Manager) - only if FNM is installed
  if [[ -d "${HOME}/.fnm" ]]; then
    export FNM_ALIASES="${HOME}/.fnm/aliases"
    export NODEDEFAULT="${FNM_ALIASES}/default/bin"
    export NODELATEST="${FNM_ALIASES}/latest/bin"
  elif [[ -d "${HOME}/.local/share/fnm" ]]; then
    export FNM_PATH="${HOME}/.local/share/fnm"
  fi

  # PS2 prompt (continuation prompt)
  if command -v tput >/dev/null 2>&1; then
    PS2="$(tput setab 7)$(tput setaf 0)  "
  else
    PS2="> "
  fi
  export PS2

  # Perl local lib (only if directory exists)
  if [[ -d "${HOME}/perl5" ]]; then
    export PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
    export PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
    export PERL_MB_OPT="--install_base ${HOME}/perl5"
    export PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"
  fi

  # pnpm
  [[ -d "${HOME}/.local/share/pnpm" ]] && export PNPM_HOME="${HOME}/.local/share/pnpm"

  # Git credentials - load from ~/.env or environment, never hardcode
  # Users should set GITHUB_TOKEN in ~/.env (which is .gitignored)
  : "${GITHUB_USER:=""}"

  export LOAD_ONCE_00="true"

  # Default ports for development
  : "${LOCALPORT:=3006}"
  : "${PORT:=3006}"
  : "${SERVER:="dev-server"}"
  export LOCALPORT PORT SERVER
}

function _LOCALE_() {
  local language=${1:-'en'}
  local region=${2:+_${2}}
  local encoding=${3:+.${3}}
  : "${encoding:=.UTF-8}"

  local locale="${language}${region}${encoding}"

  export LANG="${locale}"
  export LC_CTYPE="${locale}"
  export LC_NUMERIC="${locale}"
  export LC_TIME="${locale}"
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

# ============================================================================== 
# PROVIDED "AS IS" WITHOUT WARRANTY *NOT* fit for any particular use or purpose!
#
# MIT LICENSE
#
# Copyright (c) 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
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
# ==============================================================================
# Scientia es lux principium is a Trade Mark of Benjamin Vincent Kasapoglu
# (c) et tm - Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
# ------------------------------------------------------------------------------
