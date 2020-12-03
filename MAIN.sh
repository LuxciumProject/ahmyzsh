#?& Scientia es lux principium

#?+ ============================================================================
#? PROVIDED "AS IS" WITHOUT WARRANTY *NOT* fit for any particular use or purpose
#?!!! See the bottom of this file for *IMPORTANT INFORMATIONS* ― MIT LICENSE !!!
#? Copyright © 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
#?+ ============================================================================
#?* AHMYZSH first entry point

function AHMYZSH_TOP_CONFIG_OPTIONS() {

  : ${VERBOSA:=0}

  export ZSH_CUSTOM="${AHMYZSH}" #/custom-zsh"
  export AHMYZSH_CORE="${AHMYZSH}/core"
  export AH_LIBRARIES="${AHMYZSH}/libraries"

  export EDITOR="nano"
  export PAGER="/usr/bin/most -s"

  call_ load_all_config_and_settings_files

}

function SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N  -  B O O T S T R A P - +#

  if [[ -n "${IS_ZSH_}" ]]; then     #? IF IS_ZSH_
    if [[ -z "${MAIN_INIT}" ]]; then #? IF MAIN_INIT
      MAIN_INIT="start"

      local S1="${AHMYZSH}/main-functions.sh"
      if [[ -f "${S1}" ]]; then
        source "${S1}"

        call_ AHMYZSH_TOP_CONFIG_OPTIONS

        call_ load_zshenv
        [ "${VERBOSA}" -gt 0 ] && echo "\n${LD_COLR}${BEGIN_HOURGLASS_END_1}     load_zshenv in $(timer_all)ms!${END_FUNCTION}\n"

        [[ -o interactive ]] && call_ load_zshrc

      else #? NO SUCH FILE "${AHMYZSH}/main-functions.sh"
        [[ -o interactive ]] && echo \
          "Error loading '${S1}'... File or path can not be resolved canot source_all_zsh"
        return 1
      fi

    else #? IF NOT MAIN_INIT
      reload_alias_and_conf
      [[ -o interactive ]] && echo \
        "Reloaded alias files functions and conf"
    fi

  elif [[ -z "${IS_BASH_}" ]]; then #? IF NOT IS_BASH_
    if [ -z "${MAIN_INIT}" ]; then
      MAIN_INIT="start"
      echo pwd=$(pwd)
      echo 'using bash'
    else
      [[ -o interactive ]] && echo \
        "Already loaded reload not yet implemented"
      return 1
    fi
  fi
}

export IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
export IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

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
