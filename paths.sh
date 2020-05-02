function personal_projects_paths() {
    # if [ "$PARENT_ENV_LOADED" != 'true' ]; then

    export AHMYZSH="${HOME}/ahmyzsh"
    export CACHE_FOLDER="${HOME}/.cache/p10k-${USER}"

    export DEVELOPER="${HOME}/Developer"
    export DEV_ARCHIVES="${DEVELOPER}/Archives"
    export LXI_PROJECT="${DEVELOPER}/LuxciumProject"
    {
        "${LXI_PROJECT}/.tmux-themepack"
        export LXI_LXI_LEARNING_FUNCTIONAL_JAVA_SCRIPT_V="${LXI_PROJECT}/Learning-Functional-JavaScript-v-"
        export LXI_LX_FUNCTIONS_ONE="${LXI_PROJECT}/LxFunctionsOne"
        export LXI_GITS="${LXI_PROJECT}/gits"
        export LXI_IEXCLOUD_API_WRAPPER="${LXI_PROJECT}/iexcloud-api-wrapper"
        export LXI_LIB_LUXCIUM="${LXI_PROJECT}/lib.luxcium.io"
        export LXI_LUXCIUM_2="${LXI_PROJECT}/luxcium 2.io"
        export LXI_LUXCIUM="${LXI_PROJECT}/luxcium.io"
        export LXI_LUXCIUM_TEMP="${LXI_PROJECT}/luxcium.io-temp"
        export LXI_QT_OLD="${LXI_PROJECT}/questrade-old"
        export LXI_QT_TS="${LXI_PROJECT}/questrade-ts"
        export LXI_REACT_APP_NEW="${LXI_PROJECT}/react-app-new"
        export LXI_SIMPLE_NPM_PACKAGES="${LXI_PROJECT}/simple-npm-packages"
    }

    export DEV_ZSH_SUB_MODULES="${DEVELOPER}/MyZsh-SubModules"
    export DEV_ZSH_CUSTOMISATION="${DEVELOPER}/TEMP-ZSH-CUSTOMISATION-SUB"
    export DEV_VS_CODE_INSTANCES="${DEVELOPER}/VSCode-Instances"
    export DEV_IEX_CLOUD="${DEVELOPER}/iex-cloud"
    export DEV_LXI="${DEVELOPER}/luxcium"
    export DEV_NEW_PORTABLE="${DEVELOPER}/newPortable"
    export DEV_TMP_PROJECTS="${DEVELOPER}/projets-temporaires"
    {
        export DECLARATIVE_JS="${DEV_TMP_PROJECTS}/-Building-Declarative-Apps-using-Functional-Javascript"
        export WEB_APP_JAVASCRIPT="${DEV_TMP_PROJECTS}/-Mastering-Your-Web-Application-Using-Functional-Javascript"
        export FLUTURE="${DEV_TMP_PROJECTS}/Fluture"
        export FUNCTIONAL_TYPESCRIPT="${DEV_TMP_PROJECTS}/Hands-On-Functional-Programming-with-Typescript"
        export WEB_APP_JS2="${DEV_TMP_PROJECTS}/Mastering-Your-Web-Application-Using-Functional-Javascript2"
        export MAYBE_LIST="${DEV_TMP_PROJECTS}/MaybeList"
        export TYPE_SCRIPT="${DEV_TMP_PROJECTS}/TypeScript"
        export COLORLS="${DEV_TMP_PROJECTS}/colorls"
        export DAGGY="${DEV_TMP_PROJECTS}/daggy"
        export FP_TS="${DEV_TMP_PROJECTS}/fp-ts"
        export MONET_JS="${DEV_TMP_PROJECTS}/monet.js"
        export NODE_JS="${DEV_TMP_PROJECTS}/node"
        export OHMYZSH="${DEV_TMP_PROJECTS}/ohmyzsh"
        export QUESTRADE_TS_LEGACY="${DEV_TMP_PROJECTS}/questrade-ts-legacy"
        export SANCTUARY="${DEV_TMP_PROJECTS}/sanctuary"
        export SANCTUARY_PAIR="${DEV_TMP_PROJECTS}/sanctuary-pair"
        export VSCODE="${DEV_TMP_PROJECTS}/vscode"
        export VSCODE_JAVASCRIPT="${DEV_TMP_PROJECTS}/vscode-javascript"
    }

    export DEV_VSCODE_ERROR_LENS="${DEVELOPER}/vscode-error-lens"

    # /Users/neb_401/.vscode-insiders/extensions
    export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
    # /Users/neb_401/.vscode/extensions
    export PATH_VS_CODE_EXT="${HOME}/.vscode/extensions"

    # /Users/neb_401/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode
    export DEV_POPNLOCK="${PATH_INSDR_CODE_EXT}/dev-pop-n-lock-theme-vscode"
    export LXIO="${HOME}/Developer/LuxciumProject/luxcium.io"

    export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
    export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
    export PATH_OH_MY_ZSH="${ZSH}"
    export PATH_QUESTRADE="${PATH_LXIO_PRJ}/questrade-ts"
    export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
    export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"
    # fi
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
