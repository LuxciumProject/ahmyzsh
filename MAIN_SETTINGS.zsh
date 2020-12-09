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
  # : ${VERBOSA:=10000}
  : ${VERBOSA:=0000}

  : ${PATH_FILE:="${CACHED_PATH}"}
  : ${EDITOR:=code}
  : ${ENV_LOADED:="false"}
  : ${ZLE_RPROMPT_INDENT:=0}
  : ${SHOW_LOAD_CUTLS:="true"}
  : ${AHMYZSH:="${HOME}/ahmyzsh"}
  : ${ZSH_CUSTOM:="${AHMYZSH}"}
  : ${AHMYZSH_CORE:="${AHMYZSH}/core"}
  : ${AH_LIBRARIES:="${AHMYZSH}/libraries"}
  : ${EDITOR:="nano"}
  : ${PAGER:="/usr/bin/most -s"}
  : ${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}
  : ${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}

  # Set you locale here
  # LANG="fr_CA.UTF-8"
  : ${LANG:="fr_CA.UTF-8"}
  : ${LC_CTYPE:="${LANG}"}
  : ${LC_NUMERIC:="${LANG}"}
  : ${LC_TIME:="fr_FR.UTF-8"}
  : ${LC_COLLATE:="${LANG}"}
  : ${LC_MONETARY:="${LANG}"}
  : ${LC_MESSAGES:="${LANG}"}
  : ${LC_PAPER:="${LANG}"}
  : ${LC_NAME:="${LANG}"}
  : ${LC_ADDRESS:="${LANG}"}
  : ${LC_TELEPHONE:="${LANG}"}
  : ${LC_MEASUREMENT:="${LANG}"}
  : ${LC_IDENTIFICATION:="${LANG}"}

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
  source "${HOME}/.env"
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
