#† Scientia es lux principium✨™

#+ AHMYZSH first entry point
#+ =============================================================================≈
#- MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose!
#? =============================================================================≈
#? @author Benjamin Vincent Kasapoglu (LUXCIUM)
#? @copyright © 2020 - LUXCIUM (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#? @license MIT
#? =============================================================================≈
#? Scientia es lux principium✨ ™ - SEE THE BOTTOM OF THIS FILES FOR MORE INFO
#+ =============================================================================≈

function SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N  -  B O O T S T R A P - +#

    source ${AHMYZSH}/main-options.sh

    if [[ -n "${IS_ZSH_}" ]]; then
        if [ -z "${MAIN_INIT}" ]; then
            MAIN_INIT="start"

            AHMYZSH__OPTIONS__LOADER

            if [[ -o interactive ]]; then

                local S1="${CACHED_PATH}"
                if [ -f "${S1}" ]; then
                    . ${S1}

                else
                    echo "Error loading '${S1}'... File or path can not be resolved"
                fi
            fi

            Load_all_files_d "${AHMYZSH_ENV}/aliases"
            Load_all_files_d "${AHMYZSH_ENV}/configs"
            Load_all_files_d "${AHMYZSH_ENV}/functions"
            Load_all_files_d "${AHMYZSH_ENV}/layouts"
            Load_all_files_d "${AHMYZSH_ENV}/paths"
            {
                personal_projects_paths
                init_paths
                init_projects_paths
            }

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

        fi
    fi

    if [ -n "${IS_BASH_}" ]; then
        if [ -z "${MAIN_INIT}" ]; then
            MAIN_INIT="start"
            echo pwd=$(pwd)
            echo 'using bash'
        fi
    fi

} #+ - M A I N  -  B O O T S T R A P - +#

function Load_all_files_d() {
    local SD1="$1"
    if [ -d "${SD1}" ]; then
        for f in "${SD1}/"*.sh; do
            [ -f "${f}" ] && source "${f}"
        done
    else
        echo "Error loading files in '${SD1}'... Directory or path can not be resolved"
    fi
}

IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (echo 'zsh'; exit 0) || (echo 'not zsh'; exit 1))"
alias isbash="([[ -n ${IS_BASH_:-''} ]] && (echo 'bash'; exit 0) || (echo 'not bash'; exit 1))"

alias iszsh_="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
alias isbash_="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"


# -------------------------- !!! SECURITY WARNING !!! --------------------------≈
#! AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD / INSTALL / USE
# Please asses security risks by yourself befor to use the product and report
# any security issues or vulnerability on the issues page of the main repo site:
# [AHMYZSH project issues]{@link https://github.com/Luxcium/ahmyzsh/issues}
# ==============================================================================≈
#† MIT LICENSE ― PROVIDED "AS IS" ― *NOT* fit for any particular use or purpose!
#
#† Copyright © 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
#† and contributors (https://github.com/Luxcium/ahmyzsh/contributors)
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
#† Scientia es lux principium✨™ is a Tread Mark of Benjamin Vincent Kasapoglu
#† © & ™ Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
# ------------------------------------------------------------------------------
