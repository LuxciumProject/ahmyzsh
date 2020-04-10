function personal_projects_paths() {
    export LXIO="${HOME}/Developer/LuxciumProject/luxcium.io"
    export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
    export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
    export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
    export PATH_OH_MY_ZSH="${ZSH}"
    export PATH_QUESTRADE="${PATH_LXIO_PRJ}/questrade-ts"
    export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
    export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"

    # /Users/neb_401/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode
    export DEV_POPNLOCK="${PATH_INSDR_CODE_EXT}/dev-pop-n-lock-theme-vscode"
}

function init_paths() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then

        init_projects_paths
        personal_projects_paths

        export CACHE_FOLDER="${HOME}/.cache/p10k-${USER}"
        export AHMYZSH="${HOME}/ahmyzsh"
        export NODE_REPL="${AHMYZSH}/node-repl"
        {
            export NODE_REPL_SCRIPT="${NODE_REPL}/repl.js"
        }
        export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        # export PYTHON_REPL="${AHMYZSH}/python-repl"
        export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        {
            export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"

            {

            }

            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
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
            export OHMYZSH="${AHMYZSH}/ohmyzsh"
            {
                export ZSH="${OHMYZSH}"
            }
        }
    fi
}

function init_projects_paths() {

    export AHMYZSH=${AHMYZSH}

    export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
    source "${CUSTOM_TMUX}/paths.sh"

    export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
    source "${CUSTOM_ZSH}/paths.sh"

    export NODE_REPL="${AHMYZSH}/node-repl"
    source "${NODE_REPL}/paths.sh"

    export OHMYZSH="${AHMYZSH}/ohmyzsh"
    source "${OHMYZSH}/paths.sh"

    export POWERLEVLE10K="${AHMYZSH}/powerlevel10k"
    source "${POWERLEVLE10K}/paths.sh"

    export POWERLINE="${AHMYZSH}/powerline"
    source "${POWERLINE}/paths.sh"

    export PYTHON_REPL="${AHMYZSH}/python-repl"
    source "${PYTHON_REPL}/paths.sh"

}
