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

source /home/luxcium/ahmyzsh/MAIN-FUNCTIONS.zsh
fpath=("/home/luxcium/ahmyzsh/functions" "${fpath[@]}")
export fpath
autoload -Uz $fpath[1]/*(.:t)
function SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N - B O O T S T R A P - +#
  # for now temporary work around to keep all the same until this function
  # function fnm_() {
  #   if [[ -d "${HOME}/.fnm" ]]; then
  #     prefix_path_ "${HOME}/.fnm"
  #     eval "$(fnm env --use-on-cd)"
  #   fi
  # }
  join_path_ "${AHMYZSH}/core/bin"
  source /home/luxcium/ahmyzsh/oh-myzsh-zshrc.zsh

  # # call_ fnm_
  # unset -f fnm_
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

# echo '' >"${BOOTTIME_LOGFILE}"

# [[ "${PATH_HASH}" == "0" ]] && call_ "compute_path" && export PATH_HASH="$(set_path_hash_ ${PATH})" && echo '' && echo '' && echo ''
# [[ "${BOOTTIME}" = 1 && "${PATH_HASH}" == "0" ]] && echo "${BEGIN_BOOTTIME} Loaded all and compute cached path ..... $(timer_all) ms" >>"${BOOTTIME_LOGFILE}" &
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Loaded zshenv (equivalent) ............. $(timer_all) ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Load fnm_ .............................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}"

# TIME_NOW=$(/usr/bin/date +%s%N)

# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} ${END_FUNCTION}Load oh_my_zsh .........................\u001b[0m\u001b[33;1m\u001b[1m ---  -- ${END_FUNCTION}+$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Load activate_prompt ................... $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Load load_options_ ..................... $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOW=$(/usr/bin/date +%s%N)
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Load load_autosuggest .................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
# TIME_NOWx=$(/usr/bin/date +%s%N)

# TIME_NOW=$TIME_NOWx
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Load load_autocomplete ................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &

# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Loaded zshrc (equivalent) .............. $(timer_all) ms" >>"${BOOTTIME_LOGFILE}" &
