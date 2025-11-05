# =============================================================================
# AHMYZSH SNAPSHOT - AI AGENT CONTEXT BUNDLE
# =============================================================================
# Project Root: /projects/ahmyzsh
# Generated: 2025-11-02T12:51:32Z
# Commit: test-enhanced
# Mode: minimal
#
# Purpose:
#  - Complete context snapshot for AI agent analysis
#  - Single-file reference of ahmyzsh architecture and boot sequence
#  - Facilitates code understanding and troubleshooting by AI systems
#
# Location: /projects/ahmyzsh/snapshots/bundle/ahmyzsh-bundle-20251102-075132.sh
# =============================================================================

# =============================================================================
# BOOT SEQUENCE
# =============================================================================
#
# 1. source-me-in-etc-zshenv.sh
#    └─ Entry point (typically sourced from /etc/zshenv)
#    └─ Sets up AHMYZSH paths and environment variables
#
# 2. MAIN-FUNCTIONS.sh
#    └─ Core utility functions (load_, source_, call_, etc.)
#
# 3. core/compute-path/path.sh
#    └─ PATH computation and caching
#
# 4. core/compute-path/conda-initialize.sh
#    └─ Conda environment initialization
#
# 5. MAIN.sh
#    └─ Bootstrap: calls SCIENTIA_ES_LUX_PRINCIPIUM
#    └─ Orchestrates entire initialization
#
# 6. MAIN_SETTINGS.sh
#    └─ Configuration and settings initialization
#
# 7. load_all_config_and_settings_files() loads in order:
#    ├─ core/paths/*.sh
#    ├─ core/layouts/*.sh
#    ├─ core/compute-path/*.sh
#    ├─ core/functions/*.sh
#    ├─ core/aliases/*.sh
#    └─ core/env/*.sh
#
# =============================================================================


# =============================================================================
# LOAD ORDER: 1-ENTRY
# FILE: source-me-in-etc-zshenv.sh
# FULL PATH: /projects/ahmyzsh/source-me-in-etc-zshenv.sh
# =============================================================================
#!/usr/bin/env bash
echo -n -e '\u001b[0m\u001b[31;1m\u001b[1m'
export TIMER_ALL_THEN="${TIMER_ALL_THEN:="$(/usr/bin/date +%s%N)"}"
export AHMYZSH="${AHMYZSH:="/projects/ahmyzsh"}"
export AHMYZSH_CACHE="${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}"
export CACHED_PATH="${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}"
export LANG=fr_CA.utf8
export KDEDIR=/etc/kde
export KDEHOME=/home/luxcium/.kde
export QTDIR=/usr/lib64/qt5
export _XKB_CHARSET=UTF-8
export LC_ALL=fr_CA.UTF-8
export LINGUAS=fr_CA:en_US

#* 1) LOAD PATH

# export PATH_HASH=999
if [ -f "${CACHED_PATH}" ]; then
    # shellcheck source=/home/luxcium/.cache/ahmyzsh/path.env
    . "${CACHED_PATH}"
    TIMER_NOW=$(/usr/bin/date +%s%N)
    TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"
    HEADPART=${TIMER_VALUE:0:-3}
    TIME_TO_PATH="${HEADPART:-0}.${TIMER_VALUE:${#TIMER_VALUE}-3}"
else
    TIME_TO_PATH='INFINITE'
    . "${AHMYZSH}/core/compute-path/path.sh"
    mkdir -p "${AHMYZSH_CACHE}"
    cache_path

    TIMER_NOW=$(/usr/bin/date +%s%N)
    TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"
    HEADPART=${TIMER_VALUE:0:-3}
    TIME_TO_PATH="${HEADPART:-0}.${TIMER_VALUE:${#TIMER_VALUE}-3}"
fi
export TIME_TO_PATH

source "${AHMYZSH}/MAIN-FUNCTIONS.sh"
source "${AHMYZSH}/core/compute-path/path.sh"
source "${AHMYZSH}/core/compute-path/conda-initialize.sh"
__compute_extended_path
#* 2) LOAD AHMYZSH  B O O T S T R A P
export MAIN_BOOTSTRAP="${MAIN_BOOTSTRAP="${AHMYZSH}/MAIN.sh"}"
if [ -f "${MAIN_BOOTSTRAP}" ]; then
    # shellcheck source=./MAIN.sh
    . "${MAIN_BOOTSTRAP}"

    SCIENTIA_ES_LUX_PRINCIPIUM

else
    [ -o interactive ] && echo "Error: Path to file: '${MAIN_BOOTSTRAP}' can not be resolved"
    unset -v MAIN_BOOTSTRAP
fi

# #!/usr/bin/env bash
# echo -n -e '\u001b[0m\u001b[31;1m\u001b[1m'
# # Initialize TIMER_ALL_THEN with the current time in nanoseconds or fallback to date
# export TIMER_ALL_THEN="${TIMER_ALL_THEN:="$(get_current_time_ns || /usr/bin/date +%s%N)"}"

# # Set environment variables
# export AHMYZSH="${AHMYZSH:="/projects/ahmyzsh"}"
# export AHMYZSH_CACHE="${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}"
# export CACHED_PATH="${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}"
# export LANG=fr_CA.utf8
# export KDEDIR=/etc/kde
# export KDEHOME=/home/luxcium/.kde
# export QTDIR=/usr/lib64/qt5
# export _XKB_CHARSET=UTF-8
# export LC_ALL=fr_CA.UTF-8
# export LINGUAS=fr_CA:en_US

# # Load PATH with optimization
# load_path() {
#     if [ -f "${CACHED_PATH}" ]; then
#         . "${CACHED_PATH}"
#         TIMER_NOW=$(get_current_time_ns)
#     else
#         . "${AHMYZSH}/core/compute-path/path.sh"
#         mkdir -p "${AHMYZSH_CACHE}"
#         cache_path
#         TIMER_NOW=$(get_current_time_ns)
#     fi
#     TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"
#     HEADPART=${TIMER_VALUE:0:-3}
#     export TIME_TO_PATH="${HEADPART:-0}.${TIMER_VALUE:${#TIMER_VALUE}-3}"
# }
# load_path

# # load_path_unoptimized() {
# #     if [ -f "${CACHED_PATH}" ]; then
# #         # shellcheck source=/home/luxcium/.cache/ahmyzsh/path.env
# #         . "${CACHED_PATH}"
# #         TIMER_NOW=$(/usr/bin/date +%s%N)
# #         TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"
# #         HEADPART=${TIMER_VALUE:0:-3}
# #         TIME_TO_PATH="${HEADPART:-0}.${TIMER_VALUE:${#TIMER_VALUE}-3}"
# #     else
# #         TIME_TO_PATH='INFINITE'
# #         . "${AHMYZSH}/core/compute-path/path.sh"
# #         mkdir -p "${AHMYZSH_CACHE}"
# #         cache_path

# #         TIMER_NOW=$(/usr/bin/date +%s%N)
# #         TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"
# #         HEADPART=${TIMER_VALUE:0:-3}
# #         TIME_TO_PATH="${HEADPART:-0}.${TIMER_VALUE:${#TIMER_VALUE}-3}"
# #     fi

# #     export TIME_TO_PATH
# # }

# # To our beloved AI Agents the original code in the files bellow could be seen remotely
# # by doing this (pseudo) AHMYZSH='https://github.com/LuxciumProject/ahmyzsh/blob/main'
# source "${AHMYZSH}/MAIN-FUNCTIONS.sh"
# source "${AHMYZSH}/core/compute-path/path.sh"
# source "${AHMYZSH}/core/compute-path/conda-initialize.sh"

# __compute_extended_path

# #* 2) LOAD AHMYZSH  B O O T S T R A P
# load_main_bootstrap() {
#     export MAIN_BOOTSTRAP="${MAIN_BOOTSTRAP:="${AHMYZSH}/MAIN.sh"}"
#     if [ -f "${MAIN_BOOTSTRAP}" ]; then
#         . "${MAIN_BOOTSTRAP}"
#         SCIENTIA_ES_LUX_PRINCIPIUM
#     else
#         [ -o interactive ] && echo "Error: Path to file: '${MAIN_BOOTSTRAP}' can not be resolved"
#         unset -v MAIN_BOOTSTRAP
#     fi
# }

# load_main_bootstrap

# END FILE: source-me-in-etc-zshenv.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 2-FUNCTIONS
# FILE: MAIN-FUNCTIONS.sh
# FULL PATH: /projects/ahmyzsh/MAIN-FUNCTIONS.sh
# =============================================================================
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
#* AHMYZSH basic functions

function load_all_config_and_settings_files() {

  if [ "${VERBOSA}" -gt 15 ]; then

    export BEGIN_SOURCING_FILES="\u001b[0m\u001b[34m#   \u001b[0m\u001b[33m\uf085\u001b[0m\u001b[34m  >"
    export END_SOURCING_FILES="\u001b[0m\u001b[31;1m\u001b[1m"
    TIMER_THEN=$(/usr/bin/date +%s%N)
    Load_all_files_d_v "${AHMYZSH_CORE}/paths"
    Load_all_files_d_v "${AHMYZSH_CORE}/layouts"
    Load_all_files_d_v "${AHMYZSH_CORE}/compute-path"
    Load_all_files_d_v "${AHMYZSH_CORE}/functions"
    Load_all_files_d_v "${AHMYZSH_CORE}/aliases"
    Load_all_files_d_v "${AHMYZSH_CORE}/env"
  else
    Load_all_files_d "${AHMYZSH_CORE}/paths"
    Load_all_files_d "${AHMYZSH_CORE}/layouts"
    Load_all_files_d "${AHMYZSH_CORE}/compute-path"
    Load_all_files_d "${AHMYZSH_CORE}/functions"
    Load_all_files_d "${AHMYZSH_CORE}/aliases"
    Load_all_files_d "${AHMYZSH_CORE}/env"
  fi

  # Created by newuser for 5.8

}

function load_config_or_settings_() {

  if [ "${VERBOSA}" -gt 5 ]; then
    export BEGIN_SOURCING_FILES="\u001b[0m\u001b[34m#   \u001b[0m\u001b[33m\uf085\u001b[0m\u001b[34m  >"
    export END_SOURCING_FILES="\u001b[0m\u001b[31;1m\u001b[1m"

    TIMER_THEN=$(/usr/bin/date +%s%N)
    Load_all_files_d_v "${1}"
  else
    Load_all_files_d "${1}"
  fi
}

function Load_all_files_d() {
  local SD1="$1"
  if [ -d "${SD1}" ]; then
    for f in "${SD1}/"*.sh; do
      # shellcheck disable=SC1090
      source "${f}"
    done
  else
    return 2
  fi
}

function Load_all_files_d_v() {
  local SD1="$1"
  if [ -d "${SD1}" ]; then
    for f in "${SD1}/"*.sh; do
      if [ -r "${f}" ]; then
        # shellcheck disable=SC1090
        source "${f}"
        [ "${VERBOSA}" -gt 5 ] && echo "${BEGIN_SOURCING_FILES} $(timer_now) ${f} ${END_SOURCING_FILES}"
      else
        [ "${VERBOSA}" -gt 10 ] && echo "Error sourcing '$1' file provided is not redable"
        return 3
      fi
      TIMER_THEN=$(/usr/bin/date +%s%N)
    done
  else
    [ "${VERBOSA}" -gt 10 ] && echo "Error loading files in '${SD1}'... Directory or path can not be resolved"
    return 2
  fi
}

function timer_() {
  local MICROSEC='1000000'
  local NOW_TIME
  NOW_TIME=$(date +%s%N)

  local timecalc=$((NOW_TIME - ${1:=NOW_TIME}))
  local TIMER_VALUE=$((timecalc / MICROSEC))
  if [ ${#TIMER_VALUE} = 0 ]; then
    local spacing_="    "
  elif [ ${#TIMER_VALUE} = 1 ]; then
    local spacing_="   "
  elif [ ${#TIMER_VALUE} = 2 ]; then
    local spacing_="  "
  elif [ ${#TIMER_VALUE} = 3 ]; then
    local spacing_=" "
  else
    local spacing_=""
  fi
  echo "${TIMER_VALUE}${spacing_}"
  return 0
}

function timer_now() {
  timer_ "${TIMER_THEN}"
  return
}

function timer_from_then() {
  # TIME_NOW=$(/usr/bin/date +%s%N)
  local TIME_THEN=TIME_NOW
  timer_ "${TIME_THEN}"
  return
}

function timer_all() {
  # local TIMER_NOW=$(/usr/bin/date +%s%N)
  # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
  timer_ "${TIMER_ALL_THEN}"
  # echo -n "${TIMER_VALUE} "
}

function load_() {
  source_ "${1}" &&
    call_ "${2}"

}

function call_() {
  if [ -z "$1" ]; then
    [ "${VERBOSA}" -gt 4 ] && echo "Error sourcing ' $1 ' no function call provided"
    return 4
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    eval "${1}"

    returnval=$?
    [ "${VERBOSA}" -gt 1 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
    return "${returnval}"
  fi
}

function source_() {
  if [ -z "$1" ]; then
    [ "${VERBOSA}" -gt 4 ] && echo "Error sourcing ' $1 ' no file provided"
    return 4
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    if [[ -f $1 ]]; then
      if [[ -r $1 ]]; then
        # shellcheck disable=SC1090
        source "${1}"
        [ "${VERBOSA}" -gt 2 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
        return 0
      else
        [ "${VERBOSA}" -gt 6 ] && echo "Error sourcing '$1' file provided is not redable"
        return 6
      fi
    else
      [ "${VERBOSA}" -gt 8 ] && echo "Error sourcing '$1' file provided does not exist"
      return 8
    fi
  fi
}

alias reload_alias_and_conf="load_all_config_and_settings_files"
alias reloadpath="re_load_path"
alias bye='load_zlogout;exit'

# [[ $- == *i* ]] && echo 'Interactive' || echo 'Not interactive'
# shopt -q login_shell && echo 'Login shell' || echo 'Not login shell'

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

# END FILE: MAIN-FUNCTIONS.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 3-PATH
# FILE: core/compute-path/path.sh
# FULL PATH: /projects/ahmyzsh/core/compute-path/path.sh
# =============================================================================
#!/bin/bash

# export _CONDA3="${HOME}/esoteric-argentum"
# export CONDA3="${_CONDA3}/bin"
# export LD_LIBRARY_PATH="${_CONDA3}/lib"${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export CUDA_VERSION="cuda-12.4"
export CUDA_HOME="/usr/local/${CUDA_VERSION}"
# export CUDA_PATH="/usr/local/${CUDA_VERSION}"

export CUDA_BIN="${CUDA_HOME}/bin"
export CUDA_LIB="${CUDA_HOME}/lib64"

export FNM_PATH="${HOME}/.local/share/fnm"

export PATH_BAK_0="${PATH}"
export PNPM_HOME="${HOME}/.local/share/pnpm"
export RBENV_PATH="${HOME}/.rbenv/bin:${HOME}/.rbenv/shims"
export DOTNET_ROOT="/usr/lib64/dotnet/"

# export PATH=/usr/local/cuda-12.3/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=${CUDA_LIB}${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# /usr/local/${CUDA_VERSION}/bin
# export LD_LIBRARY_PATH=/usr/local/${CUDA_VERSION}${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# export DOTNET_CLI_TELEMETRY_OPTOUT=true
# export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH
# export NVM_DIR="$HOME/.nvm"

function add_to_path_() {
    [ -z "$1" ] || [ -d "$1" ] && export PATH="${1}${PATH:+:${PATH}}"
}
alias add_to_path='add_to_path_'
function append_to_path_() {
    [ -z "$1" ] || [ -d "$1" ] && export PATH="${PATH}:${1}"
}

function append_to_path() {
    if [ -z "$1" ] || [ ! -d "$1" ]; then
        return 0
    fi
    PATH="${PATH:+${PATH}:}$1"
    export PATH
}

function prepend_to_path() {
    if [ -z "$1" ] || [ ! -d "$1" ]; then
        return 0
    fi
    PATH="$1${PATH:+:${PATH}}"
    export PATH
}

function dedup_pathvar_() {
    # #region Deduplicate path variables =========================================¹
    # https://unix.stackexchange.com/a/149054/431235
    # © 2014 by https://unix.stackexchange.com/users/1010
    # © CC BY-SA 3.0 ¹ (User: Ryan C. Thompson ― Aug 7 '14 at 17:35)

    ## If you want some more structure around it,
    ## as well as the ability to deduplicate other variables as well,
    ## try this snippet, which I'm currently using in my own config:

    _get_var() {
        eval 'printf "%s\n" "${'"$1"'}"'
    }

    _set_var() {
        eval "$1=\"\$2\""
    }

    _dedup_pathvar() {
        pathvar_name="$1"
        pathvar_value="$(_get_var "$pathvar_name")"
        deduped_path="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$pathvar_value")"
        _set_var "$pathvar_name" "$deduped_path"
    }

    ## That code will deduplicate both PATH and MANPATH,
    ##  and you can easily call dedup_pathvar on other variables that hold
    ##  colon-separated lists of paths (e.g. PYTHONPATH).

    # #endregion Deduplicate path variables ======================================¹
    _dedup_pathvar "${@}"

    unset -f _dedup_pathvar
    unset -f _get_var
    unset -f _set_var

}

function usenvm() {
    export NVM_DIR="$HOME/.nvm"
    # shellcheck source=/dev/null
    # This loads nvm
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

    # shellcheck source=/dev/null
    # This loads nvm bash_completion
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

function rbenv_() {
    # echo 'export PATH="${HOME}/.rbenv/bin:$PATH"' >>~/.zshrc
    eval "$(rbenv init -)"
}

function rust_up_() {
    add_to_path_ "${HOME}/.cargo/bin"
    # shellcheck source=/home/luxcium/.cargo/env
    source "${HOME}/.cargo/env"
}

function __append_sbin_to_path() {
    export PATH="/usr/local/sbin"
    append_to_path_ "/usr/local/bin"
    append_to_path_ "/usr/sbin"
    append_to_path_ "/usr/bin"
    append_to_path_ "/sbin"
    append_to_path_ "/bin"
    append_to_path_ "${AHMYZSH}/core/bin"
    append_to_path_ "${HOME}/.local/bin"
    append_to_path_ "${HOME}/.bun/bin"
    append_to_path_ "/snap/bin"
    return
}

function __append_bin_to_path() {
    export PATH="/usr/local/bin"
    append_to_path_ "/usr/bin"
    append_to_path_ "/bin"
    append_to_path_ "${AHMYZSH}/core/bin"
    append_to_path_ "${HOME}/.local/bin"
    append_to_path_ "${HOME}/.bun/bin"
    append_to_path_ "/snap/bin"
    return
}
# echo decalre __compute_extended_path
function __compute_extended_path() {
    # echo invoke __compute_extended_path
    add_to_path_ "/usr/lib64/ccache"
    add_to_path_ "/usr/lib64/qt5/bin"
    add_to_path_ "/usr/local/go/bin"
    # add_to_path_ "$(go env GOPATH)/bin"
    add_to_path_ "/usr/local/${CUDA_VERSION}/bin"
    add_to_path_ "/opt/nvidia/nsight-compute"
    add_to_path_ "/app/bin"
    add_to_path_ "${HOME}/.yarn/bin"
    add_to_path_ "/src/webcamoid/bin"
    add_to_path_ "${HOME}/.cargo/bin"
    add_to_path_ '/usr/local/go/bin'
    # call_ rust_up_
    add_to_path_ "${HOME}/.rbenv/shims"
    add_to_path_ "${HOME}/.rbenv/bin"
    # call_ rbenv_
    # add_to_path_ "${RBENV_PATH}"
    call_ conda_init_esoteric-argentum
    # call_ usenvm
    add_to_path_ "${CUDA_BIN}"
    call_ rbenv_
    call_ rust_up_
    # add_to_path_ "${HOME}/.nvm"
    add_to_path_ "${HOME}/main-vscode/bin"
    add_to_path_ '/projects/main-POP-N-LOCK-x1DF2/bin'
    add_to_path_ "${CONDA3}"
    add_to_path_ "$PNPM_HOME"
    add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
    add_to_path_ "${HOME}/.local/bin"
    add_to_path_ "${FNM_PATH}"
    append_to_path_ "${HOME}/.bun/bin"
    add_to_path_ "${HOME}/bin"
    export LD_LIBRARY_PATH="/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
    export LD_LIBRARY_PATH="${CUDA_LIB}${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
    return
}
# alias esoteric-argentum="conda_init_esoteric-argentum"
function __dedup_path() {
    dedup_pathvar_ PATH
    export PATH
    return
}

function set_path() {
    __append_bin_to_path
    add_to_path_ '/home/luxcium/.local/share/fnm'
    add_to_path_ eval "$(fnm env)"
    __compute_extended_path
    __dedup_path
    return
}
# PATH=$PATH:$(go env GOPATH)/bin
function set_sbin_path() {
    # __compute_base_path
    __append_sbin_to_path
    __compute_extended_path
    __dedup_path
    return
}

alias add_sbin=set_sbin_path
alias sbin_path=set_sbin_path
alias set_sbin=set_sbin_path

function cache_path() {
    set_path >/dev/null
    echo "export PATH=$PATH" >"$CACHED_PATH"
}

function reload_path() {
    echo PATH was:
    echo "$PATH" | tr ":" "\n"
    # shellcheck source=/ahmyzsh/core/compute-path/path.sh
    source "${AHMYZSH}"/core/compute-path/path.sh
    # . ${AHMYZSH}/core/compute-path/path.sh
    SP80="                                                                                "
    __append_bin_to_path
    set_path
    cache_path
    # source_ "${CORE_COMPUTE}"/path.sh
    compute_path
    echo -en "${SP80}"
    echo_path
    echo PATH now is:
    echo "$PATH" | tr ":" "\n"
}

# source "$HOME/.cargo/env"

# END FILE: core/compute-path/path.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 4-CONDA
# FILE: core/compute-path/conda-initialize.sh
# FULL PATH: /projects/ahmyzsh/core/compute-path/conda-initialize.sh
# =============================================================================
#!/usr/bin/env bash

# function conda_init_esoteric-argentum() {
#   # echo init esoteric-argentum!!
#   # >>> conda initialize >>>
#   # !! Contents within this block are managed by 'conda init' !!
#   __conda_setup="$('/home/luxcium/esoteric-argentum/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
#   if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
#   else
#     if [ -f "/home/luxcium/esoteric-argentum/etc/profile.d/conda.sh" ]; then
#       . "/home/luxcium/esoteric-argentum/etc/profile.d/conda.sh"
#     else
#       export PATH="/home/luxcium/esoteric-argentum/bin:$PATH"
#     fi
#   fi
#   unset __conda_setup

#   # <<< conda initialize <<<
# }
# alias conda_init_mystic-mercury=conda_init_esoteric-argentum

function conda_init_esoteric-argentum() {
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/home/luxcium/anaconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/home/luxcium/anaconda3/etc/profile.d/conda.sh" ]; then
      . "/home/luxcium/anaconda3/etc/profile.d/conda.sh"
    else
      export PATH="/home/luxcium/anaconda3/bin:$PATH"
    fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}

# END FILE: core/compute-path/conda-initialize.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 5-BOOTSTRAP
# FILE: MAIN.sh
# FULL PATH: /projects/ahmyzsh/MAIN.sh
# =============================================================================
#!/usr/bin/env bash
set +m

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
#* AHMYZSH first entry point

export VERBOSA="1"

noop() {
    true
}
SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N - B O O T S T R A P - +#
    export LOAD_ENV_COMPLETED='not yet'
    export ENVIRONNEMENT_LOADED='not yet'
    export LOGIN_ENV_LOADED='not yet'
    export INTERACTIVE_ENV_LOADED='not yet'

    : "${LOAD_ENV_COMPLETED_ONCE:='not yet'}"
    : "${ENVIRONNEMENT_LOADED_ONCE:='not yet'}"
    : "${LOGIN_ENV_LOADED_ONCE:= 'not yet'}"
    : "${INTERACTIVE_ENV_LOADED_ONCE:='not yet'}"

    IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
    export IS_ZSH_
    [ -z "${IS_ZSH_}" ] && return 1

    [ -z "${MAIN_INIT}" ] || reload_alias_and_conf
    [ -z "${MAIN_INIT}" ] || { prompt_ "Reloaded alias files functions and conf" && return; }
    MAIN_INIT="start"

    # S1="${AHMYZSH}/MAIN-FUNCTIONS.sh"
    # shellcheck source=./MAIN-FUNCTIONS.sh
    # shellcheck disable=SC2015
    # { [ -f "${S1}" ] && . "${S1}"; } || load_error_ "${S1}"

    load_ "${AHMYZSH}/MAIN_SETTINGS.sh" "MAIN_SETTINGS"

    call_ load_all_config_and_settings_files

    # call_ load_zshenv

    # return 0
    source_ "${HOME}/.env" || touch "${HOME}/.env"
    call_ fnm_
    echo -en '\u001b[0m'
    isinteractive || return 0
    call_ activate_prompt

    call_ load_oh_my_zsh

    call_ load_options_list
    call_ load_options_main
    call_ load_autosuggest
    call_ load_autocomplete

    compaudit | xargs chmod g-w,o-w 2>/dev/null
    zsh_compile_all_R

    bindkey -v
    return 0
}

prompt_() {
    isinteractive && echo "${@}"
}

load_error_() {
    prompt_ "Error: '${*}' path can not be resolved"
    return 1
}

my_term="$(ps -p "$PPID" -o comm= | awk '{print $1}')"
export my_term

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

# END FILE: MAIN.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 6-SETTINGS
# FILE: MAIN_SETTINGS.sh
# FULL PATH: /projects/ahmyzsh/MAIN_SETTINGS.sh
# =============================================================================
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

# END FILE: MAIN_SETTINGS.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 7-PATHS
# FILE: core/paths/00000-init-paths.sh
# FULL PATH: /projects/ahmyzsh/core/paths/00000-init-paths.sh
# =============================================================================
#!/usr/bin/env bash

export AHMYZSH=${AHMYZSH:="/projects/ahmyzsh"}
export AHMYZSH_CACHE=${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}
export CACHED_PATH=${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}
export MAIN_BOOTSTRAP=${MAIN_BOOTSTRAP:="${AHMYZSH}/MAIN.sh"}

export OHMYZSH="${AHMYZSH}/ohmyzsh"
{
  export ZSH="${OHMYZSH}"
}
export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
export ZSH_PLUGINS="${AHMYZSH}/plugins"
export ZSH_THEMES="${AHMYZSH}/themes"

export AHMYZSH_CORE="${AHMYZSH}/core"
export MYZSH_CORE="${AHMYZSH_CORE}"
export ZSH_CORE="${AHMYZSH_CORE}"

{
  export CORE_ALIASES="${ZSH_CORE}/aliases"
  export CORE_BIN="${ZSH_CORE}/bin"
  export CORE_COMPLETE="${ZSH_CORE}/complete.d"
  export CORE_COMPUTE="${ZSH_CORE}/compute-path"
  export CORE_ENV="${ZSH_CORE}/env"
  export CORE_FUNCTIONS="${ZSH_CORE}/functions"
  export CORE_LAYOUTS="${ZSH_CORE}/layouts"
  export CORE_OPTIONS="${ZSH_CORE}/options"
  export CORE_PATHS="${ZSH_CORE}/paths"
  export CORE_TEMP="${ZSH_CORE}/temp"
}
export DESTINATION_PATH="/media/luxcium/100 GIO/downloads"
export MY_MULTIMEDIA="${AHMYZSH}/multimedia"
{
  export MY_SOUNDS="${MY_MULTIMEDIA}/sounds"
}

function comfyui() {
  cd /home/luxcium/seagate/stable-diffusion-models/ComfyUI/ || return 15
  conda activate sdxl
  return
}
function auto1111() {
  cd /home/luxcium/seagate/stable-diffusion-models/stable-diffusion-webui || return 15
  conda activate sdxl
  return
}
export CUSTOM_TMUX="${AHMYZSH}/tmux"
# . "${CUSTOM_TMUX}/paths.sh"
# {
#   # export ZSH_BIN="${CUSTOM_ZSH}/bin"
#   {
#     # export ZSH_BIN_ETC="${ZSH_BIN}/etc"
#   }

#   # export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
#   {
#     # export ZSH_COMPLETION="${AHMYZSH_CORE}/complete.d"
#     # export ZSH_FLAGS="${ZSH_SOURCES}/flags"
#     # export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
#     # export ZSH_LUXCIUM="${ZSH_SOURCES}"
#     {
#       # export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
#       # export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
#     }

#   }
# }

# # ${AHMYZSH}/core

# # export CORE_FUNCTIONS="${AHMYZSH_CORE}/functions.1"
# # export CORE_FUNCTIONS="${AHMYZSH_CORE}/functions.2"

# {
# export PLUGINS_BIN="${ZSH_PLUGINS}/bin"
# }

# ohmyzsh/
# plugins/
# powerlevel10k/
# themes/

# .git/
# .vscode/
# archives/
# core/
# crt-profiles/
# node_modules/
# templates/

# END FILE: core/paths/00000-init-paths.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 7-PATHS
# FILE: core/paths/00000-personal-project-paths.sh
# FULL PATH: /projects/ahmyzsh/core/paths/00000-personal-project-paths.sh
# =============================================================================
#!/bin/bash
## Drives
export x2TB_SEAGATE="/media/luxcium/2TB-Seagate"
alias x2tb_seagate='cd ${x2TB_SEAGATE}'
export ARCHIVE_LOCAL="/media/luxcium/Archive_Local"
alias archive_local='cd ${ARCHIVE_LOCAL}'
export PROJECTS_PATH="${HOME}/projects"
alias projects_folder='cd ${PROJECTS_PATH}'

# /home/luxcium/projects

# Archived/
# boxed-list/
# configs/
# .directory
# luxcium.io/
# main-POP-N-LOCK-x1DF2/
# maybelist/
# misc/
# monorepo-one/
# parallel-mapping/
# phash-scout/
# questrade-ts/
# trusted/
# vscode-portable~keep~/

export MONOREPO_ONE="${PROJECTS_PATH}/monorepo-one"
export monorepo="${PROJECTS_PATH}/monorepo-one"
alias monorepo_one='cd ${MONOREPO_ONE}'

export RPC_WORKER_POOL="${MONOREPO_ONE}/services/rpc-worker-pool"

export mbkend="${MONOREPO_ONE}/backend/"
export mcommon="${MONOREPO_ONE}/common/"
export mdcs="${MONOREPO_ONE}/docs/"
export mexpl="${MONOREPO_ONE}/examples/"
export mfrtend="${MONOREPO_ONE}/frontend/"
export mlib="${MONOREPO_ONE}/library/"
export mpub="${MONOREPO_ONE}/public/"
export mscrpt="${MONOREPO_ONE}/scripts/"
export msvc="${MONOREPO_ONE}/services/"

function mrshort() {
  echo '~mbkend → backend'
  echo '~mcommon → common'
  echo '~mdcs → docs'
  echo '~mexpl → examples'
  echo '~mfrtend → frontend'
  echo '~mlib → library'
  echo '~mpub → public'
  echo '~mscrpt → scripts'
  echo '~msvc → services'
}
alias mrshorts=mrshort

# ~mbkend;pwd;ls -1AF;pwd
# ~mcommon;pwd;ls -1AF;pwd
# ~mdcs;pwd;ls -1AF;pwd
# ~mexpl;pwd;ls -1AF;pwd
# ~mfrtend;pwd;ls -1AF;pwd
# ~mlib;pwd;ls -1AF;pwd
# ~mpub;pwd;ls -1AF;pwd
# ~mscrpt;pwd;ls -1AF;pwd
# ~msvc;pwd;ls -1AF;pwd

# backend ${MONOREPO_ONE}/backend/
# api # ${MONOREPO_ONE}/backend/api/
# scratch # ${MONOREPO_ONE}/backend/scratch/
# common ${MONOREPO_ONE}/common/
# config # ${MONOREPO_ONE}/common/config/
# deploy # ${MONOREPO_ONE}/common/deploy/
# performance # ${MONOREPO_ONE}/common/performance/
# scripts # ${MONOREPO_ONE}/common/scripts/
# temp # ${MONOREPO_ONE}/common/temp/
# examples ${MONOREPO_ONE}/examples/
# phash-scout # ${MONOREPO_ONE}/examples/phash-scout/
# typescript # ${MONOREPO_ONE}/examples/typescript/
# frontend ${MONOREPO_ONE}/frontend/
# cart # ${MONOREPO_ONE}/frontend/cart/
# federal-container # ${MONOREPO_ONE}/frontend/federal-container/
# home # ${MONOREPO_ONE}/frontend/home/
# home-bak # ${MONOREPO_ONE}/frontend/home-bak/
# home-ejector # ${MONOREPO_ONE}/frontend/home-ejector/
# products # ${MONOREPO_ONE}/frontend/products/
# library ${MONOREPO_ONE}/library/
# bigintString # ${MONOREPO_ONE}/library/bigintString/
# boxed # ${MONOREPO_ONE}/library/boxed-list/
# colors-tools # ${MONOREPO_ONE}/library/colors-tools/
# human-size # ${MONOREPO_ONE}/library/human-size/
# parallel-mapper # ${MONOREPO_ONE}/library/parallel-mapper/
# restraining-zalgo # ${MONOREPO_ONE}/library/restraining-zalgo/
# tools # ${MONOREPO_ONE}/library/tools/
# typescript # ${MONOREPO_ONE}/library/typescript/
# services ${MONOREPO_ONE}/services/
# image-scout # ${MONOREPO_ONE}/services/image-scout/
# phash-compute # ${MONOREPO_ONE}/services/phash-compute/
# questrade-ts # ${MONOREPO_ONE}/services/questrade-ts/
# redis-services # ${MONOREPO_ONE}/services/redis-services/
# scan-directories # ${MONOREPO_ONE}/services/scan-directories/
# service-one # ${MONOREPO_ONE}/services/service-one/
# service-two # ${MONOREPO_ONE}/services/service-two/

# material-colors.yml
# nginx.md
# pomodoro.txt
# LICENSE
# README.md
# animation.js
# h.html
# index.html
# keep-ui-reposive.html
# life-final.html
# life.html
# main.js
# resize-image.1.js
# resize-image.html
# resize-image.js
# worker.js
# install-all.rush.sh*
# install-more.rush.sh*
# install-ts-eslint.sh*
# npm-global-install.sh
# purge-rebuild.rush.sh*
# reset-all.sh
# start_6383.sh*
# start-minikube.sh*
# wd.src.zsh*

# .directory
# .editorconfig
# .env
# .gitattributes
# .gitignore
# .gitmodules
# LICENSE
#  listings.txt
# .nvmrc
# pnpm-workspace.yaml
# .prettierignore
# .prettierrc.cjs
# readme.md
# rush.json

##    alias sphash-convertor='cd "${MONOREPO_ONE}/services/phash-convertor/"'
##    alias sredis-services='cd "${MONOREPO_ONE}/services/redis-services/"'
##    alias ssone='cd "${MONOREPO_ONE}/services/service-one/"'
##    alias sstwo='cd "${MONOREPO_ONE}/services/service-two/"'
##    alias sqtrd='cd "${MONOREPO_ONE}/services/questrade-ts/"'
##    alias sscout='cd "${MONOREPO_ONE}/services/image-scout/"'

##    alias bscratch='cd "${MONOREPO_ONE}/backend/scratch/"'
##    alias bapi='cd "${MONOREPO_ONE}/backend/api/"'

##    alias fproducts='cd "${MONOREPO_ONE}/frontend/products/"'
##    alias fhome='cd "${MONOREPO_ONE}/frontend/home/"'
##    alias fhome2='cd "${MONOREPO_ONE}/frontend/home2/"'

##    alias lbigint='cd "${MONOREPO_ONE}/library/bigintString/"'
##    alias lboxed='cd "${MONOREPO_ONE}/library/boxed-list/"'
##    alias lhs='cd "${MONOREPO_ONE}/library/human-size/"'
##    alias lzalgo='cd "${MONOREPO_ONE}/library/restraining-zalgo/"'
##    alias ltools='cd "${MONOREPO_ONE}/library/tools/"'

export BOXED_LIST="${PROJECTS_PATH}/boxed-list"
alias boxed_list='chdir "${BOXED_LIST}";'
export MAIN_POP_LOCK="${PROJECTS_PATH}/main-POP-N-LOCK-x1DF2"
alias main_pop_lock='chdir "${MAIN_POP_LOCK}";'
export MAYBELIST="${PROJECTS_PATH}/maybelist"
alias maybelist='chdir "${MAYBELIST}";'
export PARALLEL_MAP="${PROJECTS_PATH}/parallel-mapping"
alias parallel_map='chdir "${PARALLEL_MAP}";'
export PHASH_SCOUT="${PROJECTS_PATH}/phash-scout"
alias phash_scout='chdir "${PHASH_SCOUT}";'
export QUESTRADE_TS="${PROJECTS_PATH}/questrade-ts"
alias questrade_ts='chdir "${QUESTRADE_TS}";'
export VSCODE_PORTABLE="${PROJECTS_PATH}/vscode-portable"
alias vscode_portable='chdir "${VSCODE_PORTABLE}";'
export LUXCIUM_IO="${PROJECTS_PATH}/luxcium.io"
alias luxcium_io='chdir "${LUXCIUM_IO}";'

# Archived/
# boxed-list/
# main-POP-N-LOCK-x1DF2/
# maybelist/
# monorepo-one/
# parallel-mapping/
# phash-scout/
# questrade-ts/
# vscode-portable/
# luxcium.io/

# export PROJECT_PATHS=(~/src ~/projects)
## pj my-project:
#  cd to the directory named "my-project" found in one of the $PROJECT_PATHS directories. If there are several directories named the same, the first one to appear in $PROJECT_PATHS has preference.

# pjo my-project
# Open the project directory with your defined $EDITOR. This follows the same directory rules as the pj command above.

# Note: pjo is an alias of pj open.

# /home/luxcium/projects
export AHMYZSH="/projects/ahmyzsh"
alias ahmyzsh='cd ${AHMYZSH}'
export CACHE_FOLDER_="${HOME}/envs/cache/p10k-${USER}"
alias cache_folder='cd ${CACHE_FOLDER_}'

export REDIS_DATA="${WSD_250}/redis/data"
alias redis_data='cd ${REDIS_DATA}'
export REDIS_6382=${WSD_250}/redis/6382/data
alias redis_6382='cd ${REDIS_6382}'

export DEV_FOLDER="${HOME}/dev"
alias cddev='cd ${DEV_FOLDER}'
export LXI_PROJCT="${DEV_FOLDER}/luxcium-projects"
alias lxi_projct='cd ${LXI_PROJCT}'
export TEMP_PROJCT="${DEV_FOLDER}/temporary-projects"
alias temp_projct='cd ${TEMP_PROJCT}'

export LXIO="${LXI_PROJCT}/luxcium.io"
alias lxio='cd ${LXIO}'
export QSTRD="${LXI_PROJCT}/questrade-ts"
alias qstrd='cd ${QSTRD}'

export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
alias path_insdr_code_ext='cd ${PATH_INSDR_CODE_EXT}'
export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
alias path_lxio_prj='cd ${PATH_LXIO_PRJ}'
export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
alias path_lxio='cd ${PATH_LXIO}'
export PATH_OH_MY_ZSH="${ZSH}"
alias path_oh_my_zsh='cd ${PATH_OH_MY_ZSH}'
export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
alias path_iexcloud_api_wrapper='cd ${PATH_IEXCLOUD_API_WRAPPER}'
export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"
alias path_iex_api='cd ${PATH_IEX_API}'

export PATH_LXIO="${LXIO}"
alias path_lxio='cd ${PATH_LXIO}'
export PATH_QUESTRADE="${QSTRD}"
alias path_questrade='cd ${PATH_QUESTRADE}'
export PATH_LXIO_PRJ="${LXI_PROJCT}"
alias path_lxio_prj='cd ${PATH_LXIO_PRJ}'

# END FILE: core/paths/00000-personal-project-paths.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 8-LAYOUTS
# FILE: core/layouts/00000-layouts.sh
# FULL PATH: /projects/ahmyzsh/core/layouts/00000-layouts.sh
# =============================================================================
#!/bin/bash
export LBOLD='\u001b[1m' # Bold: \u001b[1m
export LUND='\u001b[4m'  # Underline: \u001b[4m
export LREV='\u001b[7m'  # Reversed: \u001b[7m
export RSET='\u001b[0m'
export RVSD='\u001b[7m'
export bold="$LBOLD"
export normal="$RSET"
function hardcls() {
  echo -n '\u001b[2J'
  echo -n '\u001b[0;0H'
}

export FBK='\u001b[30m' # BK Black: \u001b[30m
export FRD='\u001b[31m' # RD Red: \u001b[31m
export FGR='\u001b[32m' # GR Green: \u001b[32m
export FYL='\u001b[33m' # YL Yellow: \u001b[33m
export FBL='\u001b[34m' # BL Blue: \u001b[34m
export FMG='\u001b[35m' # MG Magenta: \u001b[35m
export FCY='\u001b[36m' # CY Cyan: \u001b[36m
export FWH='\u001b[37m' # WH White: \u001b[37m

export FBK_='\u001b[30;1m' # BK Bright Black: \u001b[30;1m
export FRD_='\u001b[31;1m' # RD Bright Red: \u001b[31;1m
export FGR_='\u001b[32;1m' # GR Bright Green: \u001b[32;1m
export FYL_='\u001b[33;1m' # YL Bright Yellow: \u001b[33;1m
export FBL_='\u001b[34;1m' # BL Bright Blue: \u001b[34;1m
export FMG_='\u001b[35;1m' # MG Bright Magenta: \u001b[35;1m
export FCY_='\u001b[36;1m' # CY Bright Cyan: \u001b[36;1m
export FWH_='\u001b[37;1m' # WH Bright White: \u001b[37;1m
export BBK='\u001b[40m'    # BK Background Black: \u001b[40m
export BRD='\u001b[41m'    # RD Background Red: \u001b[41m
export BGR='\u001b[42m'    # GR Background Green: \u001b[42m
export BYL='\u001b[43m'    # YL Background Yellow: \u001b[43m
export BBL='\u001b[44m'    # BL Background Blue: \u001b[44m
export BMG='\u001b[45m'    # MG Background Magenta: \u001b[45m
export BCY='\u001b[46m'    # CY Background Cyan: \u001b[46m
export BWH='\u001b[47m'    # WH Background White: \u001b[47m
export BBK_='\u001b[40;1m' # BK Bright Background Black: \u001b[40;1m
export BRD_='\u001b[41;1m' # RD Bright Background Red: \u001b[41;1m
export BGR_='\u001b[42;1m' # GR Bright Background Green: \u001b[42;1m
export BYL_='\u001b[43;1m' # YL Bright Background Yellow: \u001b[43;1m
export BBL_='\u001b[44;1m' # BL Bright Background Blue: \u001b[44;1m
export BMG_='\u001b[45;1m' # MG Bright Background Magenta: \u001b[45;1m
export BCY_='\u001b[46;1m' # CY Bright Background Cyan: \u001b[46;1m
export BWH_='\u001b[47;1m' # WH Bright Background White: \u001b[47;1m
# base_layouts_colors_olds
export BKBG='\u001b[40m'
export BKFG='\u001b[30m'
export YKBG='\u001b[43m'
export YKFG='\u001b[33m'
export BBCOLR="$BKFG$YKBG"
export YBCOLR="$BKBG$YKFG"
export BKBK="$BKBG$BKFG"
export FNK='\u001b[30m'   # Black: \u001b[30m
export FNR='\u001b[31m'   # Red: \u001b[31m
export FNG='\u001b[32m'   # Green: \u001b[32m
export FNY='\u001b[33m'   # Yellow: \u001b[33m
export FNB='\u001b[34m'   # Blue: \u001b[34m
export FNM='\u001b[35m'   # Magenta: \u001b[35m
export FNC='\u001b[36m'   # Cyan: \u001b[36m
export FNW='\u001b[37m'   # White: \u001b[37m
export FBK='\u001b[30;1m' # Bright Black: \u001b[30;1m
export FBR='\u001b[31;1m' # Bright Red: \u001b[31;1m
export FBG='\u001b[32;1m' # Bright Green: \u001b[32;1m
export FBY='\u001b[33;1m' # Bright Yellow: \u001b[33;1m
export FBB='\u001b[34;1m' # Bright Blue: \u001b[34;1m
export FBM='\u001b[35;1m' # Bright Magenta: \u001b[35;1m
export FBC='\u001b[36;1m' # Bright Cyan: \u001b[36;1m
export FBW='\u001b[37;1m' # Bright White: \u001b[37;1m
export BNK='\u001b[40m'   # Background Black: \u001b[40m
export BNR='\u001b[41m'   # Background Red: \u001b[41m
export BNG='\u001b[42m'   # Background Green: \u001b[42m
export BNY='\u001b[43m'   # Background Yellow: \u001b[43m
export BNB='\u001b[44m'   # Background Blue: \u001b[44m
export BNM='\u001b[45m'   # Background Magenta: \u001b[45m
export BNC='\u001b[46m'   # Background Cyan: \u001b[46m
export BNW='\u001b[47m'   # Background White: \u001b[47m
export BBK='\u001b[40;1m' # Background Bright Black: \u001b[40;1m
export BBR='\u001b[41;1m' # Background Bright Red: \u001b[41;1m
export BBG='\u001b[42;1m' # Background Bright Green: \u001b[42;1m
export BBY='\u001b[43;1m' # Background Bright Yellow: \u001b[43;1m
export BBB='\u001b[44;1m' # Background Bright Blue: \u001b[44;1m
export BBM='\u001b[45;1m' # Background Bright Magenta: \u001b[45;1m
export BBC='\u001b[46;1m' # Background Bright Cyan: \u001b[46;1m
export BBW='\u001b[47;1m' # Background Bright White: \u001b[47;1m
# The most basic of these moves your cursor up, down, left or right:
# Up: \u001b[{n}A
# Down: \u001b[{n}B
# Right: \u001b[{n}C
# Left: \u001b[{n}D
export LUP_A='\u001b['    # Up: \u001b[{n}A moves cursor up by n \u001b[{3}A
export LDOWN_B='\u001b['  # Down: \u001b[{n}B moves cursor down by n
export LRIGHT_C='\u001b[' # Right: \u001b[{n}C moves cursor right by n
export LLEFT_D='\u001b['  # Left: \u001b[{n}D moves cursor left by n
export LNX_E='\u001b['    # Next Line: \u001b[{n}E moves cursor to beginning of line n lines down
export LPV_F='\u001b['    # Prev Line: \u001b[{n}F moves cursor to beginning of line n lines up
export LCOL_G='\u001b['   # Set Column: \u001b[{n}G moves cursor to column n
export LPOSRC_H='\u001b[' # Set Position: \u001b[{n};{m}H moves cursor to row n column m
export LCS0='\u001b[0J'   # Clear Screen: \u001b[{n}J n=0 clears from cursor until end of screen,
export LCS1='\u001b[1J'   # Clear Screen: \u001b[{n}J n=1 clears from cursor to beginning of screen
export LCS2='\u001b[2J'   # Clear Screen: \u001b[{n}J n=2 clears entire screen
export LCL0='\u001b[0K'   # Clear Line: \u001b[{n}K n=0 clears from cursor to end of line
export LCL1='\u001b[1K'   # Clear Line: \u001b[{n}K n=1 clears from cursor to start of line
export LCL2='\u001b[2K'   # Clear Line: \u001b[{n}K n=2 clears entire line
export SPS='\u001b[s'     # Save Position: \u001b[{s} saves the current cursor position
export RPS='\u001b[u'     # Save Position: \u001b[{u} restores the cursor to the last saved position
export PZTX='\u001b[1;0H'
export PZT='\u001b[2;0H'
export PZTED='\u001b[0;50H'
export CLRZ='\u001b[2J'
export DW="${LDOWN_B}1B"
export UPW="${LUP_A}1A"
export CLRLN='\u001b[2K \u001b[0G'
export RWT='\u001b[54C'
export RWTT='\u001b[10C'
export APPLE_ICO='\uf179'
export TERM_ICO='\uf120'
export TS_ICO='\ufbe4'
export JS_ICO='\uf81d'
export NODE_ICO='\ue718'
export COG_ICO='\uf013'
export COGS_ICO='\uf085'
export COGS_ICO_X='\uf085'
export WARN_ICO='\uf071'
export GNU_ICO='\ue779'
export NPM_ICO='\ue71e'
export NPM_FOLDER_ICO='\ue5fa'
## nf-ple:
export pix_squares_big_mirrored='e0c7'   # 
export pix_squares_small_mirrored='e0c5' # 
export pix_squares_big='e0c6'            # 
export pix_squares_small='e0c4'          # 

export separator1='e0bc' # 
export separator2='e0b8' # 
export separator3='e0b0' # 
export U='\u'
export e0ba=e0ba
export H_SYM="#  "
export LD_COLR="\u001b[0m\u001b[34m"
export LD_FN_COLR="${LD_COLR}"
export LIGHTBULB="\uf835"     #// \uf835  LIGHTBULB
export LIGHTBULB_ON="\uf834"  #// \uf834  LIGHTBULB_ON
export HOURGLASS_END="\uf253" #// \uf253  HOURGLASS_END
export END_SOURCING="\u001b[0m\u001b[31;1m${LBOLD}"
export END_FUNCTION="${END_SOURCING}"
export LIGHT_0_="${LBOLD}${FRD_}${LIGHTBULB}"   #// \uf835  LIGHTBULB
export LIGHT_1_="${LBOLD}${FYL_}${LIGHTBULB}"   #// \uf835  LIGHTBULB
export LIGHT_2_="${LBOLD}${FGR_}${LIGHTBULB}"   #// \uf835  LIGHTBULB
export LIGHT_0="${LBOLD}${FRD_}${LIGHTBULB_ON}" #// \uf834  LIGHTBULB_ON
export LIGHT_1="${LBOLD}${FYL_}${LIGHTBULB_ON}" #// \uf834  LIGHTBULB_ON
export LIGHT_2="${LBOLD}${FGR_}${LIGHTBULB_ON}" #// \uf834  LIGHTBULB_ON
export LEFT_SEPRATOR="${U}${pix_squares_big}"
export LEFT_SEPRATOR2="${U}${pix_squares_big}"
export RIGHT_SEPRATOR="${U}${pix_squares_small_mirrored}" #"${U}${e0ba}"
export LEFT_TERMINATOR="\u001b[0m\u001b[30m${U}${separator3}${FNR}"
export LD_ICO_COLR="\u001b[0m\u001b[33m"
export LD_ICO_COLR_0="\u001b[0m${FBG}"
export LD_ICO_COLR_1="\u001b[0m${FBY}"
export LD_ICO_COLR_2="\u001b[0m${FBR}"
export LD_ICO_COLR_OFF="\u001b[0m\u001b[34m"
export LD_FN_ICO_COLR="\u001b[0m\u001b[35;1m"
export COG_ICO='\uf013'  #// \uf013  COG_ICO
export FNCT_ICO='\uf794' #// \uf794  FNCT_ICO
export LD_ICO="${LD_ICO_COLR}${COG_ICO}${LD_COLR}"
export LD_FN_ICO="${LD_FN_ICO_COLR}${FNCT_ICO}${LD_FN_COLR}"
export LBULB_ICO="${LD_ICO_COLR_OFF}${LIGHTBULB}${LD_COLR}"
export LBULB_ON_ICO="${LD_ICO_COLR}${LIGHTBULB_ON}${LD_COLR}"
export HOURGLASS_END_ICO_0="${LD_ICO_COLR_0}${HOURGLASS_END}${FGR}"
export HOURGLASS_END_ICO_1="${LD_ICO_COLR_1}${HOURGLASS_END}${FGR}"
export HOURGLASS_END_ICO_2="${LD_ICO_COLR_2}${HOURGLASS_END}${FGR}"
export BEGIN_SOURCING="${LD_COLR}${H_SYM}${LD_ICO}  >"
export BEGIN_FUNCTION="${LD_FN_COLR}${H_SYM}${LD_FN_ICO}  >"
export BEGIN_LBULB="${LD_COLR}${H_SYM}${LBULB_ICO}  "
export BEGIN_LBULB_ON="${LD_COLR}${H_SYM}${LBULB_ON_ICO}  "
export BEGIN_HOURGLASS_END_0="${LD_COLR}${H_SYM}${HOURGLASS_END_ICO_0}  >"
export BEGIN_HOURGLASS_END_1="${LD_COLR}${HOURGLASS_END_ICO_1}"
export BEGIN_HOURGLASS_END_2="${LD_COLR}${H_SYM}${HOURGLASS_END_ICO_2}  >"
export LDNCLR="${BBCOLR} $NPM_FOLDER_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
export BYL9K_NPM="${BBCOLR} $NPM_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
export BYL9K_NPM_FOLDER="${BBCOLR} $NPM_FOLDER_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
export BYL9K_GNU="${BBCOLR} ${GNU_ICO} ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export ELCLR="${BBCOLR} $TERM_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
export SLCLR="${BBCOLR} $TERM_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
export LDSCLR="${BBCOLR} $COGS_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
export LDLCLR="${BBCOLR} $COG_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
export BYL9K_APPLE="${BBCOLR} $APPLE_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export BYL9K_TERM="${BBCOLR} $TERM_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export BYL9K_TS="${BBCOLR} $TS_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export BYL9K_JS="${BBCOLR} $JS_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export BYL9K_NODE="${BBCOLR} $NODE_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export BYL9K_COG="${BBCOLR} $COG_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export BYL9K_COGS="${BBCOLR} $COGS_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
export BYL9K_COGS="$BNY$FNK $COGS_ICO $BNK$FNY${LEFT_SEPRATOR2}${normal}"
export BRL9K_COGS="$BNR$FNK $COGS_ICO $BNK$FNR${LEFT_SEPRATOR2}${normal}"
export BGL9K_COGS="$BNG$FNK $COGS_ICO $BNK$FNG${LEFT_SEPRATOR2}${normal}"

GR_COGS_PROMPT="${normal}${CLRLN}${BGL9K_COGS}$(tput setaf 2) ${COG_ICO} ${bold} $(tput setaf 2)${BKBK}${normal}"
export GR_COGS_PROMPT
RD_COGS_PROMPT="${normal}${CLRLN}${BRL9K_COGS}$(tput setaf 1) ${COG_ICO} ${bold} $(tput setaf 2)"
export RD_COGS_PROMPT

# export BASE_LAYOUTS="${ZSH_SOURCES}/layouts/base-layouts.sh"
# . BASE_LAYOUTS
# load_layouts

# Reset: \u001b[0m

## 8 Colors
# We have seen how Red and Reset work. The most basic terminals have a set of 8 different colors:

export BLACK8='\u001b[30m'
export RED8='\u001b[31m'
export GREEN8='\u001b[32m'
export YELLOW8='\u001b[33m'
export BLUE8='\u001b[34m'
export MAGENTA8='\u001b[35m'
export CYAN8='\u001b[36m'
export WHITE8='\u001b[37m'

export RESET8='\u001b[0m'

## 16 Colors
# Most terminals, apart from the basic set of 8 colors, also support the "bright" or "bold" colors. These have their own set of codes, mirroring the normal colors, but with an additional ;1 in their codes:

export BLACK16='\u001b[30;1m'
export RED16='\u001b[31;1m'
export GREEN16='\u001b[32;1m'
export YELLOW16='\u001b[33;1m'
export BLUE16='\u001b[34;1m'
export MAGENTA16='\u001b[35;1m'
export CYAN16='\u001b[36;1m'
export WHITE16='\u001b[37;1m'

export RESET16='\u001b[0m'

## Background Colors
# The Ansi escape codes let you set the color of the text-background the same way it lets you set the color of the foregrond. For example, the 8 background colors correspond to the codes:

export BLACK8B='\u001b[40m'
export RED8B='\u001b[41m'
export GREEN8B='\u001b[42m'
export YELLOW8B='\u001b[43m'
export BLUE8B='\u001b[44m'
export MAGENTA8B='\u001b[45m'
export CYAN8B='\u001b[46m'
export WHITE8B='\u001b[47m'

export RESET8B='\u001b[0m'

## With the bright versions being:

export BLACK16B='\u001b[40;1m'
export RED16B='\u001b[41;1m'
export GREEN16B='\u001b[42;1m'
export YELLOW16B='\u001b[43;1m'
export BLUE16B='\u001b[44;1m'
export MAGENTA16B='\u001b[45;1m'
export CYAN16B='\u001b[46;1m'
export WHITE16B='\u001b[47;1m'

export RESET16B='\u001b[0m'

## Decorations
# Apart from colors, and background-colors, Ansi escape codes also allow decorations on the text:

export BOLD='\u001b[1m'
export UNDERLINE='\u001b[4m'
export REVERSED='\u001b[7m'

export RESET='\u001b[0m'

export BOLD_='\u001b[1m'
export UNDERLINE_='\u001b[4m'
export REVERSED_='\u001b[7m'

export RESET_='\u001b[0m'

## Cursor Navigation
# The next set of Ansi escape codes are more complex: they allow you to move the cursor around the terminal window, or erase parts of it. These are the Ansi escape codes that programs like Bash use to let you move your cursor left and right across your input command in response to arrow-keys.

## The most basic of these moves your cursor up, down, left or right:

# Up: \u001b[{n}A moves cursor up by n
# Down: \u001b[{n}B moves cursor down by n
# Right: \u001b[{n}C moves cursor right by n
# Left: \u001b[{n}D moves cursor left by n

## https://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes
## There are other terminal commands that would come in useful; Wikipedia's table of escape codes is a good listing (the CSI in that table corresponds to the \u001b in our code) but here are some useful ones:
# Prev Line: \u001b[{n}F moves cursor to beginning of line n lines UP
# Next Line: \u001b[{n}E moves cursor to beginning of line n lines down

# Set Column: \u001b[{m}G moves cursor to column m
# Set Position: \u001b[{n};{m}H moves cursor to row n column m

## Clear Screen: \u001b[{n}J clears the screen
# n=0 clears from cursor until end of screen,
# n=1 clears from cursor to beginning of screen
# n=2 clears entire screen

export CLEAR0S='\u001b[0J'
export CLEAR1S='\u001b[1J'
export CLEAR2S='\u001b[2J'

## Clear Line: \u001b[{n}K clears the current line
# n=0 clears from cursor to end of line
# n=1 clears from cursor to start of line
# n=2 clears entire line

export CLEAR0L='\u001b[0K'
export CLEAR1L='\u001b[1K'
export CLEAR2L='\u001b[2K'

# export CLEAR0='\u001b[0K'
# export CLEAR1='\u001b[1K'
# export CLEAR2='\u001b[2K'

# Save Position: \u001b[{s} saves the current cursor position
# Save Position: \u001b[{u} restores the cursor to the last saved position
#

## Prev Line: \u001b[{n}F moves cursor to beginning of line n lines UP
export MOVEL='\u001b[1F'
## Clear Line: \u001b[2K clears the clears entire current line
export CLEARL='\u001b[2K'
export RESETL='\u001b[0m'

export LRESETALL="$CLEARL$MOVEL$RESETL"

#+ All attributes off
# 0  Reset or normal
#+ As with faint, the color change is a PC (SCO / CGA) invention.[28][better source needed]
# 1  Bold or increased intensity
#+ May be implemented as a light font weight like bold.[29]
# 2  Faint, decreased intensity, or dim
#+ Not widely supported. Sometimes treated as inverse or blink.[28]
# 3  Italic
#+ Style extensions exist for Kitty, VTE, mintty and iTerm2.[30][31]
# 4  Underline
#+ Sets blinking to less than 150 times per minute
# 5  Slow blink
#+ MS-DOS ANSI.SYS, 150+ per minute; not widely supported
# 6  Rapid blink
#+ Swap foreground and background colors; inconsistent emulation[32]
# 7  Reverse video or invert
#+ Not widely supported.
# 8  Conceal or hide
#+ Characters legible but marked as if for deletion.
# 9  Crossed-out, or strike
#+
# 10  Primary (default) font
#+ Select alternative font n − 10
# 11–19  Alternative font
#+ Rarely supported
# 20  Fraktur (Gothic)
#+ Double-underline per ECMA-48,[5]: 8.3.117  but instead disables bold intensity
#+ on several terminals, including in the Linux kernel's console before version 4.17.
# 21  Doubly underlined; or: not bold
#+ Neither bold nor faint; color changes where intensity is implemented as such.
# 22  Normal intensity
#+
# 23  Neither italic, nor blackletter
#+ Neither singly nor doubly underlined
# 24  Not underlined
#+ Turn blinking off
# 25  Not blinking
#+ ITU T.61 and T.416, not known to be used on terminals
# 26  Proportional spacing
#+
# 27  Not reversed
#+ Not concealed
# 28  Reveal
#+
# 29  Not crossed out
#+
# 30–37  Set foreground color
#+ Next arguments are 5;n or 2;r;g;b
# 38  Set foreground color
#+ Implementation defined (according to standard)
# 39  Default foreground color
#+
# 40–47  Set background color
#+ Next arguments are 5;n or 2;r;g;b
# 48  Set background color
#+ Implementation defined (according to standard)
# 49  Default background color
#+ T.61 and T.416
# 50  Disable proportional spacing
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Implemented as "emoji variation selector" in mintty.
# 51  Framed
# 52  Encircled
#+
# 53  Overlined
#+
# 54  Neither framed nor encircled
#+
# 55  Not overlined
#+ Not in standard; implemented in Kitty, VTE, mintty, and iTerm2.
#+ Next arguments are 5;n or 2;r;g;b.
# 58  Set underline color
#+ Not in standard; implemented in Kitty, VTE, mintty, and iTerm2.
# 59  Default underline color
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Rarely supported
# 60  Ideogram underline or right side line
# 61  Ideogram double underline, or double line on the right side
# 62  Ideogram overline or left side line
# 63  Ideogram double overline, or double line on the left side
# 64  Ideogram stress marking
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Reset the effects of all of 60–64
# 65  No ideogram attributes
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Implemented only in mintty[34]
# 73  Superscript
# 74  Subscript
# 75  Neither superscript nor subscript
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Not in standard; originally implemented by aixterm[20]
# 90–97  Set bright foreground color
# 100–107  Set bright background color

#* 256-color mode — foreground: ESC[38;5;#m   background: ESC[48;5;#m
#* ESC → \u001b[
## Standard foreground colors
export black256f='\u001b[38;5;0m'  #? 0_f
export red256f='\u001b[38;5;1m'    #? 1_f
export green256f='\u001b[38;5;2m'  #? 2_f
export yellow256f='\u001b[38;5;3m' #? 3_f
export blue256f='\u001b[38;5;4m'   #? 4_f
export purple256f='\u001b[38;5;5m' #? 5_f
export cyan256f='\u001b[38;5;6m'   #? 6_f
export white256f='\u001b[38;5;7m'  #? 7_f

## High-intensity foreground colors
export Black256f='\u001b[38;5;8m'   #? 8_f
export Red256f='\u001b[38;5;9m'     #? 9_f
export Green256f='\u001b[38;5;10m'  #? 10_f
export Yellow256f='\u001b[38;5;11m' #? 11_f
export Blue256f='\u001b[38;5;12m'   #? 12_f
export Purple256f='\u001b[38;5;13m' #? 13_f
export Cyan256f='\u001b[38;5;14m'   #? 14_f
export White256f='\u001b[38;5;15m'  #? 15_f

## Standard background colors
export black256b='\u001b[48;5;0m'  #? 0_b
export red256b='\u001b[48;5;1m'    #? 1_b
export green256b='\u001b[48;5;2m'  #? 2_b
export yellow256b='\u001b[48;5;3m' #? 3_b
export blue256b='\u001b[48;5;4m'   #? 4_b
export purple256b='\u001b[48;5;5m' #? 5_b
export cyan256b='\u001b[48;5;6m'   #? 6_b
export white256b='\u001b[48;5;7m'  #? 7_b

## High-intensity background colors
export Black256b='\u001b[48;5;8m'   #? 8_b
export Red256b='\u001b[48;5;9m'     #? 9_b
export Green256b='\u001b[48;5;10m'  #? 10_b
export Yellow256b='\u001b[48;5;11m' #? 11_b
export Blue256b='\u001b[48;5;12m'   #? 12_b
export Purple256b='\u001b[48;5;13m' #? 13_b
export Cyan256b='\u001b[48;5;14m'   #? 14_b
export White256b='\u001b[48;5;15m'  #? 15_b

# END FILE: core/layouts/00000-layouts.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 8-LAYOUTS
# FILE: core/layouts/00001-mycolors.sh
# FULL PATH: /projects/ahmyzsh/core/layouts/00001-mycolors.sh
# =============================================================================
## High-intensity background colors
export Black256b='\u001b[48;5;8m'   #? 8_b
export Red256b='\u001b[48;5;9m'     #? 9_b
export Green256b='\u001b[48;5;10m'  #? 10_b
export Yellow256b='\u001b[48;5;11m' #? 11_b
export Blue256b='\u001b[48;5;12m'   #? 12_b
export Purple256b='\u001b[48;5;13m' #? 13_b
export Cyan256b='\u001b[48;5;14m'   #? 14_b
export White256b='\u001b[48;5;15m'  #? 15_b

export termBackground="\u001b[38;2;31;27;24m"
export termBorder="\u001b[38;2;119;17;102m"
export termForeground="\u001b[38;2;196;189;181m"
export cursorBackground="\u001b[38;2;41;21;58m"
export cursorForeground="\u001b[38;2;255;51;51m"
export selectionBackground="\u001b[38;2;51;34;119m"

export ansiBlack="\u001b[38;2;26;10;42m"
export ansiRed="\u001b[38;2;238;51;34m"
export ansiGreen="\u001b[38;2;136;153;34m"
export ansiYellow="\u001b[38;2;238;153;34m"
export ansiBlue="\u001b[38;2;68;136;153m"
export ansiMagenta="\u001b[38;2;187;85;153m"
export ansiCyan="\u001b[38;2;104;170;119m"
export ansiWhite="\u001b[38;2;204;187;170m"

export ansiBrightBlack="\u001b[38;2;136;119;102m"
export ansiBrightRed="\u001b[38;2;255;34;68m"
export ansiBrightGreen="\u001b[38;2;187;204;51m"
export ansiBrightYellow="\u001b[38;2;255;170;51m"
export ansiBrightBlue="\u001b[38;2;153;204;221m"
export ansiBrightMagenta="\u001b[38;2;221;102;136m"
export ansiBrightCyan="\u001b[38;2;136;238;153m"
export ansiBrightWhite="\u001b[38;2;221;204;170m"

export ansiBlackFG="\u001b[48;2;26;10;42m"
export ansiRedFG="\u001b[48;2;238;51;34m"
export ansiBlueFG="\u001b[48;2;68;136;153m"
export ansiGreenFG="\u001b[48;2;136;153;34m"
export ansiCyanFG="\u001b[48;2;104;170;119m"
export ansiYellowFG="\u001b[48;2;238;153;34m"
export ansiMagentaFG="\u001b[48;2;187;85;153m"
export ansiWhiteFG="\u001b[48;2;204;187;170m"

export ansiBrightBlackFG="\u001b[48;2;136;119;102m"
export ansiBrightRedFG="\u001b[48;2;255;34;68m"
export ansiBrightBlueFG="\u001b[48;2;153;204;221m"
export ansiBrightGreenFG="\u001b[48;2;187;204;51m"
export ansiBrightCyanFG="\u001b[48;2;136;238;153m"
export ansiBrightYellowFG="\u001b[48;2;255;170;51m"
export ansiBrightMagentaFG="\u001b[48;2;221;102;136m"
export ansiBrightWhiteFG="\u001b[48;2;221;204;170m"

export FG30b="${ansiBlack}"
export FG31r="${ansiRed}"
export FG32g="${ansiGreen}"
export FG33y="${ansiYellow}"
export FG34b="${ansiBlue}"
export FG35m="${ansiMagenta}"
export FG36c="${ansiCyan}"
export FG37w="${ansiWhite}"

export BG40b="${ansiBrightBlack}"
export BG41r="${ansiBrightRed}"
export BG42g="${ansiBrightGreen}"
export BG43y="${ansiBrightYellow}"
export BG44b="${ansiBrightBlue}"
export BG45m="${ansiBrightMagenta}"
export BG46c="${ansiBrightCyan}"
export BG47w="${ansiBrightWhite}"

export BFG90b="${ansiBlackFG}"
export BFG91r="${ansiRedFG}"
export BFG92g="${ansiBlueFG}"
export BFG93y="${ansiGreenFG}"
export BFG94b="${ansiCyanFG}"
export BFG95m="${ansiYellowFG}"
export BFG96c="${ansiMagentaFG}"
export BFG97w="${ansiWhiteFG}"

export BBG100b="${ansiBrightBlackFG}"
export BBG101r="${ansiBrightRedFG}"
export BBG102g="${ansiBrightBlueFG}"
export BBG103y="${ansiBrightGreenFG}"
export BBG104b="${ansiBrightCyanFG}"
export BBG105m="${ansiBrightYellowFG}"
export BBG106c="${ansiBrightMagentaFG}"
export BBG107w="${ansiBrightWhiteFG}"

# GNU General Public License v3.0
# https://github.com/arismelachroinos/lscript/blob/master/README.md
# LAZY script v2.1.4 Copyright (C) 2018 ARIS MELACHROINOS
# This program comes with ABSOLUTELY NO WARRANTY.
# This is free software, and you are welcome to redistribute it
# under certain conditions.
source ${AHMYZSH}/core/layouts/00000-layouts.sh
# echo -e ""
# VERSION="2.1.4"
# # color end
# CE="\e[0m"
# # red start
# RS="\e[1;31m"
# COL=$RS
# echo -e "$COL         ██╗      █████╗ ███████╗██╗   ██╗$CE v$VERSION"
# echo -e "$COL         ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝$CE"
# echo -e "$COL         ██║     ███████║  ███╔╝  ╚████╔╝ $CE   by "$COL"ARIS MELACHROINOS$CE"
# echo -e "$COL         ██║     ██╔══██║ ███╔╝    ╚██╔╝  $CE"
# echo -e "$COL    The  ███████╗██║  ██║███████╗   ██║  script$CE"
# echo -e "$COL         ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   $CE"

# #yellow start
# YS="\e[1;33m"
# #blue start
# BS="\e[0;34m"
# #color end
# CE="\e[0m"
# #red start
# RS="\e[1;31m"
# #black start
# BLS="\e[0;30m"
# #dark gray start
# DGYS="\e[1;30m"
# #light blue start
# LBS="\e[1;34m"
# #green start
# GNS="\e[0;32m"
# #light green start
# LGNS="\e[1;32m"
# #cyan start
# CYS="\e[0;36m"
# #light cyan start
# LCYS="\e[1;36m"
# #light red start
# DRS="\e[0;31m"
# #purple start
# PS="\e[0;35m"
# #light purple start
# LPS="\e[1;35m"
# #brown start
# BRS="\e[0;33m"
# #light gray start
# LGYS="\e[0;37m"
# #white start
# WHS="\e[1;37m"

# #color end
# CE="\e[0m"
# #color start
# COL=$DRS

# #yellow start
# YS="\e[1;33m"
# #blue start
# BS="\e[0;34m"
# #color end
# CE="\e[0m"
# #red start
# RS="\e[1;31m"
# #black start
# BLS="\e[0;30m"
# #dark gray start
# DGYS="\e[1;30m"
# #light blue start
# LBS="\e[1;34m"
# #green start
# GNS="\e[0;32m"
# #light green start
# LGNS="\e[1;32m"
# #cyan start
# CYS="\e[0;36m"
# #light cyan start
# LCYS="\e[1;36m"
# #light red start
# DRS="\e[0;31m"
# #purple start
# PS="\e[0;35m"
# #light purple start
# LPS="\e[1;35m"
# #brown start
# BRS="\e[0;33m"
# #light gray start
# LGYS="\e[0;37m"
# #white start
# WHS="\e[1;37m"

# #setting yellow-start
# YS="\e[1;33m"
# #setting color-end
# CE="\e[0m"
# #setting red-start
# RS="\e[1;31m"

# #setting frequent stings
# YNYES="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=yes)"
# YNNO="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=no)"
# YNONLY="("$YS"y"$CE"/"$YS"n"$CE")"
# PAKT="Press "$YS"any key$CE to"
# PAKTC="Press "$YS"any key$CE to continue..."
# PAKTGB="Press "$YS"any key$CE to go back..."

# END FILE: core/layouts/00001-mycolors.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/-00000-openai_models.sh
# FULL PATH: /projects/ahmyzsh/core/functions/-00000-openai_models.sh
# =============================================================================
#!/usr/bin/env bash

# -00000-openai_models.sh
export OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
function openai_models() {
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys
        curl -L -s https://api.openai.com/v1/models \
            -H "Authorization: Bearer ${OPENAI_API_KEY}" \
            -H "OpenAI-Organization: ${OPENAI_ORG_ID}" | jq
    else
        return 66
    fi
}
function openai_models_ids() {
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys

        local search="${1:-}"
        local ids
        ids=$(openai_models | jq '.data[].id' | tr -d '"')

        if [[ -n "${search}" ]]; then
            ids=$(echo "${ids}" | grep "${search}")
            if [[ -z "${ids}" ]]; then
                echo >&2 "No results found for '${search}'."
                return 1
            fi
        fi

        echo "${ids}" | jq -R -s -c 'split("\n")[:-1]' | jq '.[]'
        return 0
    fi
    return 1
}
#  // code-davinci-edit-001

function openai_text_edit() {
    instruction=$1
    input_text=$2
    edit_model=$3
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys
        # local full_edit
        full_edit="$(curl -s -X POST https://api.openai.com/v1/edits \
            -H "Content-Type: application/json" \
            -H "Authorization: Bearer ${OPENAI_API_KEY}" \
            -H "OpenAI-Organization: ${OPENAI_ORG_ID}" \
            -d "$(printf '%s\n' \
                "{\"model\": \"$edit_model\"," \
                "\"input\": $(echo "$input_text" | jq -R -s -c 'tojson')," \
                "\"instruction\": $(echo "$instruction" | jq -R -s -c 'tojson')," \
                "\"temperature\": 0.7," \
                "\"top_p\": 1," \
                "\"n\": 1}")")"
        # -d "{
        # \"model\": \"$edit_model\",
        # \"input\": \"$input_text\",
        # \"instruction\": \"$instruction\",
        # \"temperature\": 0.7,
        # \"top_p\": 1,
        # \"n\": 1
        # }")"
        export full_edit
        echo -ne "\n$YELLOW16"
        choices0="$(echo -e "${full_edit}" | jq -r '.choices[0].text // null' || echo "${full_edit}")"
        echo -ne "${RESET}\n"
        if [[ "${choices0}" == "null" ]]; then
            echo -ne "\n$RED8"
            /projects/monorepo-one/prompts/typing_prompter/python/main.py "${full_edit}"
            echo -ne "${RESET}\n"
        else
            echo -ne "\n$GREEN8"
            /projects/monorepo-one/prompts/typing_prompter/python/main.py "${choices0}"
            echo -ne "${RESET}\n"
        fi
    else
        return 1
    fi
}

function openai_translate_to_french() {
    input_text=$*
    openai_text_edit 'Translate input to french Canadian, use specifically the variant used in Quebec. If needed correct input for grammar and spelling first then convert into French Canadian. Finally, strip out any original input and output only the resulting text in French Canadian ussing usual punctuation.' "${input_text}" 'text-davinci-edit-001'

}

function openai_define() {
    input_text=$*
    openai_text_edit 'Give a definition of the word, give few synonyms, list antonyms if any' "${input_text}" 'text-davinci-edit-001'
}

function openai_shell() {
    input_text=$*
    openai_text_edit 'In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command.' "${input_text}" 'text-davinci-edit-001'

}

function davinci_shell() {
    input_text=$*
    openai_text_edit 'In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command.' "${input_text}" 'code-davinci-edit-001'

}

function help_shell() {
    input_text=$*
    openai_text_edit 'Help in the shell, suggest solutions or give explainations. In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command. Or find solutions for errors and problems, prefix each replies with \"help shell\ \>\"' "${input_text}" 'code-davinci-edit-001'
}

function typescript_help() {
    input_text=$*
    openai_text_edit 'In the context of the shell, [bash, zsh, linux (FEDORA)] please explain the command.' "${input_text}" 'text-davinci-edit-001'

}
# code-davinci-edit-001

# {Input:ANY utf8} {Output:ONLY fr_CA.utf8}
# | jq -r '.choices[0].text')" #echo \"$(openai_translate_to_french "hello my name is paul" | jq -r '.choices[0].text')\"

# {Input:ANY utf8} Translate input from any language into french. Correct input grammar and spelling if needed to make a better translation then convert into French Canadian. Use specifically the variant used in Quebec.Finally, strip out any original input and output only the resulting text usse usual punctuation. {Output:ONLY fr_CA.utf8}

# jq '.[]' #  IMPORTANT: «YOU MUST ONLY OUTPUT THE FRENCH VERSION». You will output text in French following these instructions: First, revise the grammar and spelling of the input text for correctness. Then translate into French Canadian, specifically using the Quebec variant. Finally, output the final French version using usual punctuation.

# Translate text into french, infer from the input text, correct text if needed, then translate into French Canadian, specifically using the Quebec variant. Finally, output the result using usual punctuation.

# Traduisez le texte en français, déduisez-en le sens et corrigez-le si nécessaire, puis traduisez-le en français canadien, en utilisant spécifiquement la variante québécoise. Enfin, produisez le résultat en utilisant la ponctuation habituelle.

# #!/usr/bin/env bash

# # openai_models.sh

# function openai_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         curl -L -s https://api.openai.com/v1/models \
#             -H "Authorization: Bearer ${OPENAI_API_KEY}" \
#             -H "OpenAI-Organization: ${OPENAI_ORG_ID}"
#     else
#         return 1
#     fi
# }

# function openai_models_ids() {
#     local search_term="${1}"
#     local filtered_ids
#     filtered_ids=$(oa_models | jq -r '.data[].id | select(contains("'"${search_term}"'"))')
#     if [[ -z "${search_term}" ]]; then
#         filtered_ids=$(oa_models | jq -r '.data[].id')
#     fi

#     if [[ -z "${filtered_ids}" ]]; then
#         echo >&2 "No models match the search string '${search_term}'"
#         return 1
#     fi

#     echo "${filtered_ids}"
# }

# function oa_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         curl -L -s https://api.openai.com/v1/models \
#             -H "Authorization: Bearer ${OPENAI_API_KEY}" \
#             -H "OpenAI-Organization: ${OPENAI_ORG_ID}"
#         return 0
#     fi
#     return 1
# }

# function list_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         oa_models | jq -r '.data[].id' | grep -iF "${1}" || true | while read -r id; do
#             echo "$id"
#         done
#         if [[ -z "$id" ]]; then
#             echo "No models match the search string '$1'" >&2
#             return 1
#         fi
#         return 0
#     fi
#     return 1
# }

# function oa_models_ids() {
#     oa_models | jq '.data[].id'
# }

# function oa_models_ids___() {
#     local search_string=$1
#     local matches=()

#     local model_ids
#     model_ids=$(oa_models | jq -r '.data[].id')

#     for id in $model_ids; do
#         if [[ "$id" == *"$search_string"* ]]; then
#             matches+=("$id")
#         fi
#     done

#     if [[ ${#matches[@]} -eq 0 ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi

#     printf '%s\n' "${matches[@]}"
#     return 0
# }

# function oa_models_ids_() {
#     local search_string=$1
#     local model_ids
#     model_ids=$(oa_models | jq -r --arg search "$search_string" '.data[].id | select(index($search) != null)')
#     if [[ -z "$model_ids" ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi
#     printf '%s\n' "$model_ids"
#     return 0
# }

# function oa_models_ids__() {
#     local search_string=${1:-}

#     local model_ids
#     model_ids=$(oa_models | jq -r '.data[].id')

#     if [[ -z "$search_string" ]]; then
#         printf '%s\n' "${model_ids[@]}"
#         return 0
#     fi

#     local matches=()
#     for id in $model_ids; do
#         if [[ "$id" == *"$search_string"* ]]; then
#             matches+=("$id")
#         fi
#     done

#     if [[ ${#matches[@]} -eq 0 ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi

#     printf '%s\n' "${matches[@]}"
#     return 0
# }

# END FILE: core/functions/-00000-openai_models.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/-00001-init-projects.sh
# FULL PATH: /projects/ahmyzsh/core/functions/-00001-init-projects.sh
# =============================================================================
#!/bin/bash

function initnpm() {
  TEMP_FOLDER_="/tmp/$(getstamp 8)"
  gh repo clone Luxcium/template-nodejs-npm-git "${TEMP_FOLDER_}"
  "$(contain .gitignore)" || cp "${TEMP_FOLDER_}/.gitignore" .
  "$(contain LICENSE)" || cp "${TEMP_FOLDER_}/LICENSE" .
  "$(contain README.md)" || cp "${TEMP_FOLDER_}/README.md" .
}
# $(contain .git) && echo "contain .git"
# $(contain node_modules) && echo "contain node_modules"
# $(contain package.json) && echo "contain package.json"
# $(contain package-lock.json) && echo "contain package-lock.json"
# $(contain .gitignore) && echo "contain .gitignore"
# $(contain LICENSE) && echo "contain LICENSE"
# $(contain README.md) && echo "contain README.md"
# $(contain README.md) && echo "contain README.md"
# $(contain README.md) && echo "contain README.md"
# $(contain yarn.lock) && echo "contain yarn.lock"
# $(contain package-lock.json) && echo "contain package-lock.json"
# $(contain yarn-error.log) && echo "contain yarn-error.log"
# $(contain pnpm-lock.yaml) && echo "contain pnpm-lock.yaml"
# }

# END FILE: core/functions/-00001-init-projects.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/00010-upnboot.sh
# FULL PATH: /projects/ahmyzsh/core/functions/00010-upnboot.sh
# =============================================================================
#!/usr/bin/env bash

export WAITTIME=2
export SLEEPTIME=1
# update and reboot
source "${AHMYZSH}"/core/aliases/11001-dnf.sh
source "${AHMYZSH}"/core/aliases/12012-ALS-sounds.sh

function upnboot() {
  source "${AHMYZSH}"/core/aliases/12012-ALS-sounds.sh
  play_014
  _get_updates
  _dnfup "${1}"
  (
    _play_down_sound "reboot"
  ) &
  sleep ${SLEEPTIME}
  bye

}

# update and reboot --assumeyes
function upnbooty() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # play_014
  # _get_updates
  upnboot "--assumeyes ${1}"
  # (
  #    _play_down_sound "reboot"
  # ) &
  # sleep ${SLEEPTIME}
  # bye
}

# update and reboot
function boot() {
  source "${AHMYZSH}"/core/aliases/12012-ALS-sounds.sh
  play_014
  (
    _play_down_sound "reboot"
  ) &
  sleep ${SLEEPTIME}
  bye
}

# update and shutdown
function upnshutdown() {
  source "${AHMYZSH}"/core/aliases/12012-ALS-sounds.sh
  play_014
  _get_updates
  _dnfup
  (
    _play_down_sound "shutdown"
  ) &
  sleep ${SLEEPTIME}
  bye

}

function _play_down_sound() {
  (
    (
      (nohup enable_systemctl down &) >/dev/null
    ) 2>/dev/null
    # sleep 8 # for information pupose only should be disabled
  ) &
  sleep ${WAITTIME}
  (
    (nohup play_shutdown "$1" 4 &) >/dev/null
  ) 2>/dev/null
}

# END FILE: core/functions/00010-upnboot.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/00021-update.sh
# FULL PATH: /projects/ahmyzsh/core/functions/00021-update.sh
# =============================================================================
#!/bin/bash

function cc_update() {
  conda update -n base -c defaults conda -y
  conda update --all -y
}

function update_fnm() {
  CURRENT=20
  LATEST=21

  fnm install 14
  fnm install 16
  fnm install 18
  fnm install ${LATEST}
  fnm install ${CURRENT}
  fnm default ${CURRENT}
  fnm use default
  fnm list
}

all_update() {
  update_fnm
  pnpm add -g pnpm@latest
  pnpm -g i @microsoft/rush@latest create-next-app@latest eslint@latest five-server@latest jest@latest nodemon@latest postcss-cli@latest prettier@latest ts-node@latest tspath@latest typedoc@latest typescript@latest vitest@latest
  cc_update
  sudo dnf distro-sync --refresh -y
}

alias update_all=all_update

update_nboot() {
  update_all
  (
    sleep 1.45
    /sbin/reboot
  ) &
  killcodemore
}

# † Scientia es lux principium✨ ™

# Copyright © 2020 Luxcium (Benjamin Vincent Kasapoglu)

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# « †Scientia es lux principium✨ » IS A TRADEMARK OF BENJAMIN VINCENT (Luxcium)
# (™ & © 2016-2020 ALL RIGHT RESERVED)

# END FILE: core/functions/00021-update.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/00090-dedup_pathvarfn.sh
# FULL PATH: /projects/ahmyzsh/core/functions/00090-dedup_pathvarfn.sh
# =============================================================================
#!/bin/bash

function dedup_pathvar_X_() {
  # #region Deduplicate path variables =========================================¹
  # https://unix.stackexchange.com/a/149054/431235
  # © 2014 by https://unix.stackexchange.com/users/1010
  # © CC BY-SA 3.0 ¹ (User: Ryan C. Thompson ― Aug 7 '14 at 17:35)

  ## If you want some more structure around it,
  ## as well as the ability to deduplicate other variables as well,
  ## try this snippet, which I'm currently using in my own config:

  _get_var() {
    eval 'printf "%s\n" "${'"$1"'}"'
  }

  _set_var() {
    eval "$1=\"\$2\""
  }

  _dedup_pathvar() {
    pathvar_name="$1"
    pathvar_value="$(_get_var "$pathvar_name")"
    deduped_path="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$pathvar_value")"
    _set_var "$pathvar_name" "$deduped_path"
  }

  ## That code will deduplicate both PATH and MANPATH,
  ##  and you can easily call dedup_pathvar on other variables that hold
  ##  colon-separated lists of paths (e.g. PYTHONPATH).

  # #endregion Deduplicate path variables ======================================¹
  _dedup_pathvar "${@}"

  unset -f _dedup_pathvar
  unset -f _get_var
  unset -f _set_var

}

# END FILE: core/functions/00090-dedup_pathvarfn.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/00100-git.sh
# FULL PATH: /projects/ahmyzsh/core/functions/00100-git.sh
# =============================================================================
#!/bin/bash

# ##################
# ## GIT / GITHUB ##
# ##################

# alias check='git checkout master'
# alias add='git add -u --renormalize -v .'
# alias addall='git add --all --renormalize -v .'
# alias check-master='git checkout master'
# alias check-luxcium='git checkout luxcium'
# alias push='git push --tags --progress; git push --all --progress; fetch'
# alias gs='git fetch -t;  git gc; git status'
# alias pull='git pull --all -t'
# alias fetch='git fetch -t; git fetch --all -v -u'
# alias lb='git branch -a -v --color | cat'
# alias pullmaster='git checkout master; git pull -S --stat --progress --signoff --tags origin master'
# alias firstcommit='git add .; git commit -am "Scientia is lux principium✨™"; git push -u origin master'
# alias pullnext='hub pull-request && hub merge' #git pull -S --stat --progress --signoff --squash --tags origin next/version'
# alias commitpullnext='git commit -am "merging from origin next/version into local master"; push'
# alias deletenext='git branch -d next/version; git push origin --delete next/version; lb'
# alias newnext='git checkout -b next/version; push; git branch --set-upstream-to=origin/next/version next/version'
# alias gitcleannext='rm -rf ./dist; rm -rf ./build; rm -f ./package.1.json; git add .; git commit -m "getting ready to build next/version"; push'
# alias nextcycle='push; pullmaster; pullnext; commitpullnext; deletenext; newnext; gitcleannext; lb'

# #region ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# https://github.com/ohmyzsh/ohmyzsh/blob/93c837fec8e9fe61509b9dff9e909e84f7ebe32d/plugins/git/git.plugin.zsh#L1-L293

# Copyright (c) 2009-2020 Robby Russell and [contributors](https://github.com/ohmyzsh/ohmyzsh/contributors)
# this is the work of 106+ contributors over the last 10 years I will customize it to suit the needs of my project
# I am greatfull for all the people making opensource and free software possible...
#
# Functions
#

# The name of the current branch
# Back-compatibility wrapper for when this function was defined here in
# the plugin, before being pulled in to core lib/git.zsh as git_current_branch()
# to fix the core -> git plugin dependency.
function current_branch() {
  git_current_branch
}

# Pretty log messages
function _git_log_prettily() {
  if [ -n "$1" ]; then
    git log --pretty="$1"
  fi
}
########## compdef _git _git_log_prettily=git-log

# Warn if the current branch is a WIP
function work_in_progress() {
  if git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"; then
    echo "WIP!!"
  fi
}

# Check if main exists and use instead of master
function git_main_branch() {
  if [[ -n "$(git branch --list main)" ]]; then
    echo main
  else
    echo master
  fi
}

alias save_configs='(cd /home/luxcium/.config;git status; gaa; git commit -am "Check-point $(date)" ;push; git status)'
#
# Aliases
# (sorted alphabetically)
#

# alias g='git'

# alias ga='git add'
# alias gaa='git add --all'
# alias gapa='git add --patch'
# alias gau='git add --update'
# alias gav='git add --verbose'
# alias gap='git apply'
# alias gapt='git apply --3way'

# alias gb='git branch'
# alias gba='git branch -a'
# alias gbd='git branch -d'
# alias gbda='git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d'
# alias gbD='git branch -D'
# alias gbl='git blame -b -w'
# alias gbnm='git branch --no-merged'
# alias gbr='git branch --remote'
# alias gbs='git bisect'
# alias gbsb='git bisect bad'
# alias gbsg='git bisect good'
# alias gbsr='git bisect reset'
# alias gbss='git bisect start'

# alias gc='git commit -v'
# alias gc!='git commit -v --amend'
# alias gcn!='git commit -v --no-edit --amend'
# alias gca='git commit -v -a'
# alias gca!='git commit -v -a --amend'
# alias gcan!='git commit -v -a --no-edit --amend'
# alias gcans!='git commit -v -a -s --no-edit --amend'
# alias gcam='git commit -a -m'
# alias gcsm='git commit -s -m'
# alias gcb='git checkout -b'
# alias gcf='git config --list'
# alias gcl='git clone --recurse-submodules'
# alias gclean='git clean -id'
# alias gpristine='git reset --hard && git clean -dffx'
# alias gcm='git checkout $(git_main_branch)'
# alias gcd='git checkout develop'
# alias gcmsg='git commit -m'
# alias gco='git checkout'
# alias gcount='git shortlog -sn'
# alias gcp='git cherry-pick'
# alias gcpa='git cherry-pick --abort'
# alias gcpc='git cherry-pick --continue'
# alias gcs='git commit -S'

# alias gd='git diff'
# alias gdca='git diff --cached'
# alias gdcw='git diff --cached --word-diff'
# alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
# alias gds='git diff --staged'
# alias gdt='git diff-tree --no-commit-id --name-only -r'
# alias gdw='git diff --word-diff'

function gdnolock() {
  git diff "$@" ":(exclude)package-lock.json" ":(exclude)*.lock"
}
########## compdef _git gdnolock=git-diff

# function gdv() { git diff -w "$@" | view - }
########## compdef _git gdv=git-diff

# alias gf='git fetch'
# alias gfa='git fetch --all --prune'
# alias gfo='git fetch origin'

# alias gfg='git ls-files | grep'

# alias gg='git gui citool'
# alias gga='git gui citool --amend'

function ggf() {
  [[ "$#" != 1 ]] && b="$(git_current_branch)"
  git push --force origin "${b:=$1}"
}
########## compdef _git ggf=git-checkout
function ggfl() {
  [[ "$#" != 1 ]] && b="$(git_current_branch)"
  git push --force-with-lease origin "${b:=$1}"
}
########## compdef _git ggfl=git-checkout

function ggl() {
  if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
    git pull origin "${*}"
  else
    [[ "$#" == 0 ]] && b="$(git_current_branch)"
    git pull origin "${b:=$1}"
  fi
}
########## compdef _git ggl=git-checkout

function ggp() {
  if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
    git push origin "${*}"
  else
    [[ "$#" == 0 ]] && b="$(git_current_branch)"
    git push origin "${b:=$1}"
  fi
}
########## compdef _git ggp=git-checkout

function ggpnp() {
  if [[ "$#" == 0 ]]; then
    ggl && ggp
  else
    ggl "${*}" && ggp "${*}"
  fi
}
########## compdef _git ggpnp=git-checkout

function ggu() {
  [[ "$#" != 1 ]] && b="$(git_current_branch)"
  git pull --rebase origin "${b:=$1}"
}
########## compdef _git ggu=git-checkout

# alias ggpur='ggu'
# alias ggpull='git pull origin "$(git_current_branch)"'
# alias ggpush='git push origin "$(git_current_branch)"'

# alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
# alias gpsup='git push --set-upstream origin $(git_current_branch)'

# alias ghh='git help'

# alias gignore='git update-index --assume-unchanged'
# alias gignored='git ls-files -v | grep "^[[:lower:]]"'
# alias git-svn-dcommit-push='git svn dcommit && git push github $(git_main_branch):svntrunk'

# alias gk='\gitk --all --branches'
# alias gke='\gitk --all $(git log -g --pretty=%h)'

# alias gl='git pull'
# alias glg='git log --stat'
# alias glgp='git log --stat -p'
# alias glgg='git log --graph'
# alias glgga='git log --graph --decorate --all'
# alias glgm='git log --graph --max-count=10'
# alias glo='git log --oneline --decorate'
# alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
# alias glols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat"
# alias glod="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
# alias glods="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
# alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"
# alias glog='git log --oneline --decorate --graph'
# alias gloga='git log --oneline --decorate --graph --all'
# alias glp="_git_log_prettily"

# alias gm='git merge'
# alias gmom='git merge origin/$(git_main_branch)'
# alias gmt='git mergetool --no-prompt'
# alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
# alias gmum='git merge upstream/$(git_main_branch)'
# alias gma='git merge --abort'

# alias gp='git push'
# alias gpd='git push --dry-run'
# alias gpf='git push --force-with-lease'
# alias gpf!='git push --force'
# alias gpoat='git push origin --all && git push origin --tags'
# alias gpu='git push upstream'
# alias gpv='git push -v'

# alias gr='git remote'
# alias gra='git remote add'
# alias grb='git rebase'
# alias grba='git rebase --abort'
# alias grbc='git rebase --continue'
# alias grbd='git rebase develop'
# alias grbi='git rebase -i'
# alias grbm='git rebase $(git_main_branch)'
# alias grbs='git rebase --skip'
# alias grev='git revert'
# alias grh='git reset'
# alias grhh='git reset --hard'
# alias groh='git reset origin/$(git_current_branch) --hard'
# alias grm='git rm'
# alias grmc='git rm --cached'
# alias grmv='git remote rename'
# alias grrm='git remote remove'
# alias grs='git restore'
# alias grset='git remote set-url'
# alias grss='git restore --source'
# alias grt='cd "$(git rev-parse --show-toplevel || echo .)"'
# alias gru='git reset --'
# alias grup='git remote update'
# alias grv='git remote -v'

# alias gsb='git status -sb'
# alias gsd='git svn dcommit'
# alias gsh='git show'
# alias gsi='git submodule init'
# alias gsps='git show --pretty=short --show-signature'
# alias gsr='git svn rebase'
# alias gss='git status -s'
# alias gst='git status'

# # use the default stash push on git 2.13 and newer
# autoload -Uz is-at-least
# is-at-least 2.13 "$(git --version 2>/dev/null | awk '{print $3}')" \
#   && alias gsta='git stash push' \
#   || alias gsta='git stash save'

# alias gstaa='git stash apply'
# alias gstc='git stash clear'
# alias gstd='git stash drop'
# alias gstl='git stash list'
# alias gstp='git stash pop'
# alias gsts='git stash show --text'
# alias gstu='git stash --include-untracked'
# alias gstall='git stash --all'
# alias gsu='git submodule update'
# alias gsw='git switch'
# alias gswc='git switch -c'

# alias gts='git tag -s'
# alias gtv='git tag | sort -V'
# alias gtl='gtl(){ git tag --sort=-v:refname -n -l "${1}*" }; noglob gtl'

# alias gunignore='git update-index --no-assume-unchanged'
# alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
# alias gup='git pull --rebase'
# alias gupv='git pull --rebase -v'
# alias gupa='git pull --rebase --autostash'
# alias gupav='git pull --rebase --autostash -v'
# alias glum='git pull upstream $(git_main_branch)'

# alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
# alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'

# alias gam='git am'
# alias gamc='git am --continue'
# alias gams='git am --skip'
# alias gama='git am --abort'
# alias gamscp='git am --show-current-patch'

function grename() {
  if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: $0 old_branch new_branch"
    return 1
  fi

  # Rename branch locally
  git branch -m "$1" "$2"
  # Rename branch in origin remote
  if git push origin :"$1"; then
    git push --set-upstream origin "$2"
  fi
}

# https://github.com/ohmyzsh/ohmyzsh/blob/93c837fec8e9fe61509b9dff9e909e84f7ebe32d/plugins/git/git.plugin.zsh#L1-L293
# #endregion ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# END FILE: core/functions/00100-git.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/00150-vscode.sh
# FULL PATH: /projects/ahmyzsh/core/functions/00150-vscode.sh
# =============================================================================
#!/bin/bash

function codeprioritymore() {
  sudo ionice -c 1 -n 2 -p "$(pidof -w -x code)"
  sudo renice -n -15 -p "$(pidof -w -x code)"
}
function codepriorityless() {
  sudo ionice -c 2 -n 1 -p "$(pidof -w -x code)"
  sudo renice -n 10 -p "$(pidof -w -x code)"
}

function insidersprioritymore() {
  sudo ionice -c 1 -n 2 -p "$(pidof -w -x code-insiders)"
  sudo renice -n -15 -p "$(pidof -w -x code-insiders)"
}
function insiderspriorityless() {
  sudo ionice -c 2 -n 1 -p "$(pidof -w -x code-insiders)"
  sudo renice -n 10 -p "$(pidof -w -x code-insiders)"
}

# END FILE: core/functions/00150-vscode.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/00299-iptables.sh
# FULL PATH: /projects/ahmyzsh/core/functions/00299-iptables.sh
# =============================================================================
#!/bin/bash

function eno1_ping_test() {

  echo -e '\u001b[7m\u001b[35m LOOP BACK (lo) \u001b[0m\u001b[35m ----------------------------------------------------------- \u001b[0m'
  _ping_test 127.0.0.1 lo
  echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[34m ---------------------------------------------------------------\u001b[0m'
  _ping_test 1.1.1.1 eno1
  _ping_test 1.0.0.1 eno1
  _ping_test 1.1.1.2 eno1
  _ping_test 1.0.0.2 eno1
  _ping_test 1.1.1.3 eno1
  _ping_test 1.0.0.3 eno1
  echo -e '\u001b[7m\u001b[34m BLUE LINK (eno1) \u001b[0m\u001b[34m ---------------------------------------------------------------\u001b[0m'
  _ping_test 8.8.8.8 eno1
  _ping_test 8.8.4.4 eno1
  echo ''
  ipinfos
}

function _ping_test() {

  echo ''
  echo "\u001b[0m\u001b[36m--- ping to ${1} --------------\u001b[0m"
  sudo ping -W 0.25 -I "${2}" -c 3 "${1}" && echo -e "\u001b[0m\u001b[1m\u001b[32;1mping to ${1} (ACCEPTED)\u001b[0m" || echo -e "\u001b[0m\u001b[1m\u001b[31;1mping to ${1} (DROPED)\u001b[0m"
  echo ''

}

# _ping_test 1.1.1.1 eno1
# _ping_test 1.0.0.1 eno1
# _ping_test 1.1.1.2 eno1
# _ping_test 1.0.0.2 eno1
# _ping_test 1.1.1.3 eno1
# _ping_test 1.0.0.3 eno1
# echo "\u001b[0m\u001b[31m--- ping to 31X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[32m--- ping to 32X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[33m--- ping to 33X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[34m--- ping to 34X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[35m--- ping to 35X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[36m--- ping to 36X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[37m--- ping to 37X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[38m--- ping to 38X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[39m--- ping to 39X.XXX.XXX.XXX --------------\u001b[0m"
# echo "\u001b[0m\u001b[30m--- ping to 30X.XXX.XXX.XXX --------------\u001b[0m"

function ipinfos() {
  ##
  ## List connections informations and status
  ##
  echo 'LINK ---------------------------------------------------------------------------'
  sudo ip -c -br -0 addres show
  echo 'IP v6 --------------------------------------------------------------------------'
  sudo ip -c -br -6 addres show
  echo 'IP v4 --------------------------------------------------------------------------'
  sudo ip -c -br -4 addres show
  echo 'DNS (name) ---------------------------------------------------------------------'
  sudo ip -c -br -4 -r addres show
}

# END FILE: core/functions/00299-iptables.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/00300-brio-web-cam.sh
# FULL PATH: /projects/ahmyzsh/core/functions/00300-brio-web-cam.sh
# =============================================================================
#!/bin/bash

function brio-settings() {
  echo -n '[?] brightness: '
  v4l2-ctl --get-ctrl=brightness
  echo -en "    0x00980900 (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=brightness=128\n\n"
  echo -n '[?] contrast: '
  v4l2-ctl --get-ctrl=contrast
  echo -en "    0x00980901 (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=contrast=128\n\n"
  echo -n '[?] saturation: '
  v4l2-ctl --get-ctrl=saturation
  echo -en "    0x00980902 (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=saturation=128\n\n"
  echo -n '[?] white_balance_temperature_auto: '
  v4l2-ctl --get-ctrl=white_balance_temperature_auto
  echo -en "    0x0098090c (bool)   : default=1 value=1 \n    [!] v4l2-ctl --set-ctrl=white_balance_temperature_auto=1\n\n"
  echo -n '[?] gain: '
  v4l2-ctl --get-ctrl=gain
  echo -en "    0x00980913 (int)    : min=0 max=255 step=1 default=0 value=0 \n    [!] v4l2-ctl --set-ctrl=gain=0\n\n"
  echo -n '[?] power_line_frequency: '
  v4l2-ctl --get-ctrl=power_line_frequency
  echo -en "    0x00980918 (menu)   : min=0 max=2 default=2 value=2 \n    [!] v4l2-ctl --set-ctrl=power_line_frequency=2\n\n"
  echo -n '[?] white_balance_temperature: '
  v4l2-ctl --get-ctrl=white_balance_temperature
  echo -en "    0x0098091a (int)    : min=2000 max=7500 step=10 default=4000 value=6500 flags=inactive \n    [!] v4l2-ctl --set-ctrl=white_balance_temperature=4000\n\n"
  echo -n '[?] sharpness: '
  v4l2-ctl --get-ctrl=sharpness
  echo -en "    0x0098091b (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=sharpness=128\n\n"
  echo -n '[?] backlight_compensation: '
  v4l2-ctl --get-ctrl=backlight_compensation
  echo -en "    0x0098091c (int)    : min=0 max=1 step=1 default=1 value=1 \n    [!] v4l2-ctl --set-ctrl=backlight_compensation=1\n\n"
  echo -n '[?] exposure_auto: '
  v4l2-ctl --get-ctrl=exposure_auto
  echo -en "    0x009a0901 (menu)   : min=0 max=3 default=3 value=3 \n    [!] v4l2-ctl --set-ctrl=exposure_auto=3\n\n"
  echo -n '[?] exposure_absolute: '
  v4l2-ctl --get-ctrl=exposure_absolute
  echo -en "    0x009a0902 (int)    : min=3 max=2047 step=1 default=250 value=312 flags=inactive \n    [!] v4l2-ctl --set-ctrl=exposure_absolute=250\n\n"
  echo -n '[?] exposure_auto_priority: '
  v4l2-ctl --get-ctrl=exposure_auto_priority
  echo -en "    0x009a0903 (bool)   : default=0 value=1 \n    [!] v4l2-ctl --set-ctrl=exposure_auto_priority=0\n\n"
  echo -n '[?] pan_absolute: '
  v4l2-ctl --get-ctrl=pan_absolute
  echo -en "    0x009a0908 (int)    : min=-36000 max=36000 step=3600 default=0 value=0 \n    [!] v4l2-ctl --set-ctrl=pan_absolute=0\n\n"
  echo -n '[?] tilt_absolute: '
  v4l2-ctl --get-ctrl=tilt_absolute
  echo -en "    0x009a0909 (int)    : min=-36000 max=36000 step=3600 default=0 value=0 \n    [!] v4l2-ctl --set-ctrl=tilt_absolute=0\n\n"
  echo -n '[?] focus_absolute: '
  v4l2-ctl --get-ctrl=focus_absolute
  echo -en "    0x009a090a (int)    : min=0 max=255 step=5 default=0 value=0 flags=inactive \n    [!] v4l2-ctl --set-ctrl=focus_absolute=0\n\n"
  echo -n '[?] focus_auto: '
  v4l2-ctl --get-ctrl=focus_auto
  echo -en "    0x009a090c (bool)   : default=1 value=1 \n    [!] v4l2-ctl --set-ctrl=focus_auto=1\n\n"
  echo -n '[?] zoom_absolute: '
  v4l2-ctl --get-ctrl=zoom_absolute
  echo -en "    0x009a090d (int)    : min=100 max=500 step=1 default=100 value=100 \n    [!] v4l2-ctl --set-ctrl=zoom_absolute100\n\n"
  v4l2-ctl --list-devices
}

# END FILE: core/functions/00300-brio-web-cam.sh
# =============================================================================


# =============================================================================
# LOAD ORDER: 9-FUNCTIONS-SAMPLE
# FILE: core/functions/01000-03000_saybye.sh
# FULL PATH: /projects/ahmyzsh/core/functions/01000-03000_saybye.sh
# =============================================================================
#!/bin/bash

# END FILE: core/functions/01000-03000_saybye.sh
# =============================================================================


# =============================================================================
# EXTRACTION COMPLETE
# =============================================================================
# Total files: 20
# Mode: MINIMAL
# Generated: 2025-11-02T12:51:32Z
# Snapshot: /projects/ahmyzsh/snapshots/bundle/ahmyzsh-bundle-20251102-075132.sh
# =============================================================================
