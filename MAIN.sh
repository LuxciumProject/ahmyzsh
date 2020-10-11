#† Scientia es lux principium✨™

#+ AHMYZSH first entry point
#+ =============================================================================≈
#? MIT LICENSE ― *NOT* fit for any particular use or purpose ― PROVIDED "AS IS"
#? =============================================================================≈
#? @author Benjamin Vincent Kasapoglu (LUXCIUM)
#? @copyright © 2020 - LUXCIUM (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#? @license MIT
#? =============================================================================≈
#? Scientia es lux principium✨ ™ - SEE THE BOTTOM OF THIS FILES FOR MORE INFO
#+ =============================================================================≈

IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (echo 'zsh'; exit 0) || (echo 'not zsh'; exit 1))"
alias isbash="([[ -n ${IS_BASH_:-''} ]] && (echo 'bash'; exit 0) || (echo 'not bash'; exit 1))"

alias iszsh_="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
alias isbash_="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"


function __AHMYZSH__BOOT__LOADER__() {

    export CACHED_PATH="${HOME}/.cache/path.env"
    export AHMYZSH="${HOME}/ahmyzsh"
    export AHMYZSH_CORE="${AHMYZSH}/core"
    export AHMYZSH_ENV="${AHMYZSH_CORE}/env"
    export AH_LIBRARIES="${AHMYZSH}/libraries"

    : ${VERBOSA=0}
    if [[ -o interactive ]]; then
    fi
    : ${VERBOSA=100}

    local S1="${CACHED_PATH}"
    if [ -f "${S1}" ]; then
        . ${S1}

    else
        echo "Error loading '${S1}'... File or path can not be resolved"
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
        source_all_zsh
    else
        echo "Error loading '${S1}'... File or path can not be resolved canot source_all_zsh"
    fi

    # local SD1="${AHMYZSH_CORE}/aliases"
    # if [ -d "${SD1}" ]; then
    #   for f in "${SD1}/"*; do
    #     [ -f "${f}" ] && source "${f}"
    #   done
    # else
    #   echo "Error loading files in '${SD1}'... Directory or path can not be resolved"
    # fi

    # local S1="${AH_LIBRARIES}/base-layouts.sh"
    # if [ -f "${S1}" ]; then
    #   . "${S1}"
    #   base_layouts_colors
    #   base_layouts_colors_olds
    #   base_layouts_cursors_moves
    #   base_layouts_icons
    #   base_layouts_icons_groups
    #   base_layouts
    #   load_layouts
    # else
    #   echo "Error loading '${S1}'... File or path can not be resolved"
    # fi

    # local S1="${AH_LIBRARIES}/functions.sh"
    # if [ -f "${S1}" ]; then
    #   . "${S1}"
    #   init_functions
    # else
    #   echo "Error loading '${S1}'... File or path can not be resolved"
    # fi

    # local S1="${CUSTOM_TMUX}/MAIN.zsh"
    # if [ -f "${S1}" ]; then
    #   . "${S1}"
    #   source_all_tmux
    # else
    #   echo "Error loading '${S1}'... File or path can not be resolved"
    # fi

}

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


function SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N  -  B O O T S T R A P - +#

    # echo "M A I N  -  B O O T S T R A P"
    # if [ "$0" = "zsh" -o "$0" = "-zsh" ] ; then
    if [[ -n "${IS_ZSH_}" ]]; then
        if [ -z "${MAIN_INIT}" ]; then
            MAIN_INIT="start"

            # export AHMYZSH="${HOME}/ahmyzsh"
            # . ${AHMYZSH}/libraries/functions.sh
            # . ${AHMYZSH}/libraries/paths.sh
            # . ${AHMYZSH}/libraries/initial_load.zsh
            __AHMYZSH__BOOT__LOADER__
            load_zshenv
            load_zshrc
        fi
    fi
    # fi # rwxrwxr-x  rw-rw-r--

    # if [ "$0" = "bash" -o "$0" = "-bash" ] ; then
    if [ -n "${IS_BASH_}" ]; then
        if [ -z "${MAIN_INIT}" ]; then
            MAIN_INIT="start"
            echo pwd=$(pwd)
            echo 'using bash'
        fi
    fi

} #+ - M A I N  -  B O O T S T R A P - +#

# ==============================================================================≈
#† MIT LICENSE ― *NOT* fit for any particular use or purpose ― PROVIDED "AS IS"
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
#
# -------------------------- !!! SECURITY WARNING !!! --------------------------≈
#! AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD / INSTALL / USE
# Please asses security rirks by yoursel befor to use the product and report
# any security issues or vulnerabilitie on the the main repo site issues page:
# [AHMYZSH project issues]{@link https://github.com/Luxcium/ahmyzsh/issues}
# ------------------------------------------------------------------------------
#† Scientia es lux principium✨™ is a Tread Mark of Benjamin Vincent Kasapoglu
#† © & ™ Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
# ==============================================================================≈

# #region TODO: Fix thiss mess                                                |
# export AHMYZSH_CONFIGS="${AHMYZSH}/config.d"
# ls -d1 ${AHMYZSH_CONFIGS}/*.sh | foreachline source
# source "${AHMYZSH_CORE}/config/00-PATHS.sh"
# source "${AHMYZSH_CORE}/config/11-CONFIG.sh"
# echo "M A I N  -  B O O T L O A D E R"
# #endregion TODO: Fix thiss mess                                             |
