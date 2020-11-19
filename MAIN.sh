#!/dev/env sh

#† Scientia es lux principium✨™

#+ AHMYZSH first entry point
#+ =============================================================================≈
#!! MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose
#‽ =============================================================================≈
#‽ @author Benjamin Vincent Kasapoglu (LUXCIUM)
#‽ @copyright © 2020 - LUXCIUM (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#‽ @license MIT
#‽ =============================================================================≈
#‽ Scientia es lux principium✨ ™ - SEE THE BOTTOM OF THIS FILES FOR MORE INFO
#+ =============================================================================≈

function AHMYZSH_TOP_CONFIG_OPTIONS() {

    : ${VERBOSA=00}
    export AHMYZSH_CACHE="${HOME}/.cache/ahmyzsh"
    export CACHED_PATH="${AHMYZSH_CACHE}/path.env"
    export AHMYZSH="${HOME}/ahmyzsh"
    export ZSH_CUSTOM="${AHMYZSH}" # /custom-zsh"
    export AHMYZSH_CORE="${AHMYZSH}/core"
    export AH_LIBRARIES="${AHMYZSH}/libraries"

    export PAGER="/usr/bin/most -s"
    # export PAGER="/usr/bin/less"

    fpath=(${AHMYZSH_CORE}/functions ${fpath})

    function load_all_config_and_settings_files() {
        Load_all_files_d "${AHMYZSH_CORE}/misc"
        Load_all_files_d "${AHMYZSH_CORE}/aliases"
        Load_all_files_d "${AHMYZSH_CORE}/configs"
        Load_all_files_d "${AHMYZSH_CORE}/functions"
        Load_all_files_d "${AHMYZSH_CORE}/layouts"
        Load_all_files_d "${AHMYZSH_CORE}/paths"
        Load_all_files_d "${AHMYZSH_CORE}/env"
    }
    load_all_config_and_settings_files
    alias reload_alias_and_conf="load_all_config_and_settings_files"
    {
        personal_projects_paths
        init_paths
        init_projects_paths
    }

}

function Load_all_files_d() {
    local SD1="$1"
    if [ -d "${SD1}" ]; then
        for f in "${SD1}/"*.sh; do
            [ -f "${f}" ] && source "${f}"
        done
    else
        [ "${VERBOSA}" -gt 0 ] && echo "Error loading files in '${SD1}'... Directory or path can not be resolved"
    fi
}

IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

function SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N  -  B O O T S T R A P - +#

    AHMYZSH_TOP_CONFIG_OPTIONS

    if [[ -n "${IS_ZSH_}" ]]; then
        if [ -z "${MAIN_INIT}" ]; then
            MAIN_INIT="start"
        fi
    fi

    local S1="${CUSTOM_ZSH}/MAIN.zsh"
    if [ -f "${S1}" ]; then
        . "${S1}"

        load_zshenv
        load_zshrc
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

# -------------------------- !!! SECURITY WARNING !!! --------------------------≈
# !!AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD / INSTALL / USE
# Please asses security risks by yourself befor to use the product and report
# any security issues or vulnerability on the issues page of the main repo site:
# [AHMYZSH project issues]{@link https://github.com/Luxcium/ahmyzsh/issues}
# ==============================================================================≈
#† MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose!
#‽
#† Copyright © 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
#† and contributors (https://github.com/Luxcium/ahmyzsh/contributors)
#‽
#‽ Permission is hereby granted, free of charge, to all person obtaining a copy
#‽ of this software and associated documentation files (the "Software"), to deal
#‽ in the Software without restriction, including without limitation the rights
#‽ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#‽ copies of the Software, and to permit persons to whom the Software is
#‽ furnished to do so, subject to the following conditions:
#‽
#‽ The above copyright notice and this permission notice shall be included
#‽ in all copies or substantial portions of the Software.
#‽
#‽ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
#‽ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#‽ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#‽ THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR
#‽ OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
#‽ ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#‽ DEALINGS IN THE SOFTWARE.
# ==============================================================================≈
#† Scientia es lux principium✨™ is a Tread Mark of Benjamin Vincent Kasapoglu
#† © & ™ Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
# ------------------------------------------------------------------------------
