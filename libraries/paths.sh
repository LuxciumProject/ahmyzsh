function personal_projects_paths() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then

        export AHMYZSH="${HOME}/ahmyzsh"
        alias ahmyzsh="cd ${AHMYZSH}"
        export CACHE_FOLDER_="${HOME}/envs/cache/p10k-${USER}"
        alias cache_folder="cd ${CACHE_FOLDER_}"

        export DEV_FOLDER="${HOME}/development"
        alias dev_folder="cd ${DEV_FOLDER}"
        export LXI_PROJCT="${DEV_FOLDER}/luxcium-projects"
        alias lxi_projct="cd ${LXI_PROJCT}"
        export TEMP_PROJCT="${DEV_FOLDER}/temporary-projects"
        alias temp_projct="cd ${TEMP_PROJCT}"

        export LXIO="${LXI_PROJCT}/luxcium.io"
        alias lxio="cd ${LXIO}"
        export QSTRD="${LXI_PROJCT}/questrade-ts"
        alias qstrd="cd ${QSTRD}"

        export DEV_POPNLOCK="${HOME}/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode"
        alias dev_popnlock="cd ${DEV_POPNLOCK}"

        export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
        alias path_insdr_code_ext="cd ${PATH_INSDR_CODE_EXT}"
        export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
        alias path_lxio_prj="cd ${PATH_LXIO_PRJ}"
        export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
        alias path_lxio="cd ${PATH_LXIO}"
        export PATH_OH_MY_ZSH="${ZSH}"
        alias path_oh_my_zsh="cd ${PATH_OH_MY_ZSH}"
        export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
        alias path_iexcloud_api_wrapper="cd ${PATH_IEXCLOUD_API_WRAPPER}"
        export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"
        alias path_iex_api="cd ${PATH_IEX_API}"

        export PATH_LXIO="${LXIO}"
        alias path_lxio="cd ${PATH_LXIO}"
        export PATH_QUESTRADE="${QSTRD}"
        alias path_questrade="cd ${PATH_QUESTRADE}"
        export PATH_LXIO_PRJ="${LXI_PROJCT}"
        alias path_lxio_prj="cd ${PATH_LXIO_PRJ}"

    fi
}

function init_paths() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then

        export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
        {
            export TMUX_BIN="${CUSTOM_TMUX}/bin"
            export TMUX_CONFIGS="${CUSTOM_TMUX}/configs"
        }
        export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        {
            export ZSH_BIN="${CUSTOM_ZSH}/bin"
            {
                export ZSH_BIN_ETC="${ZSH_BIN}/etc"
            }

            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
            {
                export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                export ZSH_COMPUTE="${ZSH_SOURCES}/compute"
                export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
                export ZSH_LUXCIUM="${ZSH_SOURCES}"
                {
                    export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
                    export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
                }

            }
        }
        export NODE_REPL="${AHMYZSH}/node-repl"
        export OHMYZSH="${AHMYZSH}/ohmyzsh"
        {
            export ZSH="${OHMYZSH}"
        }
        export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        export PYTHON_REPL="${AHMYZSH}/python-repl"
        export POWERLINE="${AHMYZSH}/powerline"
        {
            export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"
            export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"
        }

    fi

}

function init_projects_paths() {

    local S1="${CUSTOM_TMUX}/paths.sh"
    source_ ${S1}

    local S1="${CUSTOM_ZSH}/paths.sh"
    source_ ${S1}

    local S1="${NODE_REPL}/paths.sh"
    source_ ${S1}

    local S1="${OHMYZSH}/paths.sh"
    source_ ${S1}

    local S1="${POWERLEVEL10K}/paths.sh"
    source_ ${S1}

    local S1="${POWERLINE}/paths.sh"
    source_ ${S1}

    local S1="${PYTHON_REPL}/paths.sh"
    source_ ${S1}

}
