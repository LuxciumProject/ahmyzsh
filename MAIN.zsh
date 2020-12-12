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

# will be working on simplification in a new feature branch

function SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N - B O O T S T R A P - +#

  export IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"

  [[ -z "${IS_ZSH_}" ]] &&  return 1
  [[ -z "${MAIN_INIT}" ]] || reload_alias_and_conf
  [[ -z "${MAIN_INIT}" ]] || (prompt_ "Reloaded alias files functions and conf" && return)
  # if [[ -z "${MAIN_INIT}" ]]; then
  MAIN_INIT="start"

  local S1="${AHMYZSH}/MAIN-FUNCTIONS.zsh"
  [[ -f "${S1}" ]] && source "${S1}" || load_error_ "${S1}"
  load_ "${AHMYZSH}/MAIN_SETTINGS.zsh" "MAIN_SETTINGS"
  call_ load_all_config_and_settings_files

  call_ load_zshenv

  isinteractive || return 0 #-――――――――― Interactive,login,non-login ――――――――――-#

  set +m

  call_ "compute_path &"

  call_ load_oh_my_zsh
  call_ activate_prompt
  call_ load_options_list
  call_ load_options_main
  call_ load_autosuggest
  call_ load_autocomplete

  right_prompt_off

}

function prompt_() {
  isinteractive && echo "${@}"
}

function load_error_() {
  prompt_ "Error: '${1}' path can not be resolved"
  return 1
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
