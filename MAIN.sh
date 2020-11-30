#?& Scientia es lux principium

#?+ ============================================================================
#? PROVIDED "AS IS" WITHOUT WARRANTY *NOT* fit for any particular use or purpose
#?!!! See the bottom of this file for *IMPORTANT INFORMATIONS* ― MIT LICENSE !!!
#? Copyright © 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
#?+ ============================================================================
#?* AHMYZSH first entry point

function AHMYZSH_TOP_CONFIG_OPTIONS() {

    : ${VERBOSA:=0000}

    export ZSH_CUSTOM="${AHMYZSH}" #/custom-zsh"
    export AHMYZSH_CORE="${AHMYZSH}/core"
    export AH_LIBRARIES="${AHMYZSH}/libraries"

    export PAGER="/usr/bin/most -s"
    # export PAGER="/usr/bin/less"

    # fpath=(${AHMYZSH_CORE}/functions ${fpath})

    function load_all_config_and_settings_files() {

        if [ "${VERBOSA}" -gt 10 ]; then
            export BEGIN_SOURCING_FILES="\u001b[0m\u001b[34m#   \u001b[0m\u001b[33m\uf085\u001b[0m\u001b[34m  >"
            export END_SOURCING_FILES="\u001b[0m\u001b[31;1m\u001b[1m"
            TIMER_THEN=$(/usr/bin/date +%s%N)
            S2="${AHMYZSH}/core/aliases/00000-misc-all-in-one.zsh"
            source $S2
            [ "${VERBOSA}" -gt 10 ] && echo "${BEGIN_SOURCING_FILES} $(timer_now) ${S2} ${END_SOURCING_FILES}"
            Load_all_files_d_v "${AHMYZSH_CORE}/compute-path"
            Load_all_files_d_v "${AHMYZSH_CORE}/functions"
            Load_all_files_d_v "${AHMYZSH_CORE}/aliases"
            Load_all_files_d_v "${AHMYZSH_CORE}/layouts"
            Load_all_files_d_v "${AHMYZSH_CORE}/paths"
            # Load_all_files_d_v "${AHMYZSH_CORE}/env"
        else
            S2="${AHMYZSH}/core/aliases/00000-misc-all-in-one.zsh"
            source $S2
            Load_all_files_d "${AHMYZSH_CORE}/compute-path"
            Load_all_files_d "${AHMYZSH_CORE}/functions"
            Load_all_files_d "${AHMYZSH_CORE}/aliases"
            Load_all_files_d "${AHMYZSH_CORE}/layouts"
            Load_all_files_d "${AHMYZSH_CORE}/paths"
            # Load_all_files_d "${AHMYZSH_CORE}/env"
        fi

        # Created by newuser for 5.8

    }

    load_all_config_and_settings_files
    alias reload_alias_and_conf="load_all_config_and_settings_files"

}

function SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N  -  B O O T S T R A P - +#

    local S1="${AHMYZSH}/main-functions.sh"
    if [ -f "${S1}" ]; then
        . "${S1}"

        AHMYZSH_TOP_CONFIG_OPTIONS

        if [[ -n "${IS_ZSH_}" ]]; then
            if [ -z "${MAIN_INIT}" ]; then
                MAIN_INIT="start"
            fi
        fi

        call_ load_zshenv
        if [[ -o interactive ]]; then
            call_ load_zshrc
        fi
    else
        if [[ -o interactive ]]; then

            echo "Error loading '${S1}'... File or path can not be resolved canot source_all_zsh"
        fi
    fi

    if [ -n "${IS_BASH_}" ]; then
        if [ -z "${MAIN_INIT}" ]; then
            MAIN_INIT="start"
            echo pwd=$(pwd)
            echo 'using bash'
        fi
    fi
}

IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

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
