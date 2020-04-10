# !! ~/ahmyzsh/functions.sh
function init_functions() {
    function call_() {
        if [ -z $1 ]; then; else
            TIMER_THEN=$(/usr/local/bin/gdate +%s%N)
            eval ${1}
            [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
        fi
    }

    function source_() {
        if [ -z $1 ]; then; else
            TIMER_THEN=$(/usr/local/bin/gdate +%s%N)
            . "${1}"
            [ "${VERBOSA}" -gt 2 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
        fi
    }

    function load_() {
        source_ "${1}"
        call_ ${2}
    }

    function add_to_path_() {
        [ -z $1 ] || export PATH="${1}:${PATH}"
    }

    function timer_() {
        local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        local TIMER_VALUE=$(((${TIMER_NOW} - ${1}) / 1000000))
        if [ ${#TIMER_VALUE} = 0 ]; then
            local spacing_="    "
        elif [ ${#TIMER_VALUE} = 1 ]; then
            local spacing_="   "
        elif [ ${#TIMER_VALUE} = 2 ]; then
            local spacing_="  "
        elif [ ${#TIMER_VALUE} = 3 ]; then
            local spacing_=" "
        else
            local spacing_=""
        fi
        echo "${TIMER_VALUE}${spacing_}"
        return 0
    }

    function timer_now() {
        # local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
        timer_ "${TIMER_THEN}"
        # echo -n "${TIMER_VALUE} "
        # return 0
    }

    function timer_all() {
        # local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
        timer_ "${TIMER_ALL_THEN}"
        # echo -n "${TIMER_VALUE} "
        # return 0
    }
}

# !! ~/ahmyzsh/initial_load.zsh
# ¬ !! /etc/zshenv
# export TIMER_ALL_THEN2=$(/usr/local/bin/gdate +%s%N)

#export AHMYZSH="${HOME}/ahmyzsh"
#. "${AHMYZSH}/initial_load.zsh"
#__loader__

# function __loader__() {
#     export TIMER_ALL_THEN=$(/usr/local/bin/gdate +%s%N)

#     # must put this code in /etc/zshenv
#     # then call the __loader__ function

#     # https://en.wikipedia.org/wiki/Let_there_be_light
#     # 'LET THERE BE LIGHT ...'
#     echo "\u001b[1m      רֹוא יִהְי \u001b[0m"
#     # reversed יְהִי אוֹר due to lack of support in my terminal

#     ## load_path
#     local PATH_FILE="${HOME}/.cache/path.env"
#     if [ -f "$PATH_FILE" ]; then
#         . $HOME/.cache/path.env
#         local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
#         local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
#         echo " ${TIMER_VALUE}   ms   to   'PATH'"
#     fi

#     # Set you locale here
#     : ${LANG:="fr_CA.UTF-8"}
#     export LANG
#     # : ${LC_COLLATE:="fr_CA.UTF-8"}
#     # : ${LC_CTYPE:="fr_CA.UTF-8"}
#     # : ${LC_MESSAGES:="fr_CA.UTF-8"}
#     # : ${LC_MONETARY:="fr_CA.UTF-8"}
#     # : ${LC_NUMERIC:="fr_CA.UTF-8"}
#     # : ${LC_TIME:="fr_CA.UTF-8"}

#     # uncomment the folowing two lines
#     # export AHMYZSH="${HOME}/ahmyzsh"
#     # . "${AHMYZSH}/initial_load.zsh"

#     # 'LET THERE BE LIGHT "יְהִי אוֹר" ... '
#     lux_principium
# }

# function my_envs() {

#     : ${ENV_LOADED:="false"}
#     : ${SHOW_LOAD_CUTLS:="true"}
#     : ${VERBOSA:=1}
#     : ${EDITOR:='code'}

#     # local TIMER_NOW4=$(/usr/local/bin/gdate +%s%N)
#     # local TIMER_VALUE2=$(((${TIMER_NOW4} - ${TIMER_ALL_THEN2}) / 1000000))
#     # echo " ${TIMER_VALUE2}   ms   prior to load'init_paths'"

#     local TIMER_NOW3=$(/usr/local/bin/gdate +%s%N)
#     # local TIMER_VALUE2=$(((${TIMER_NOW3} - ${TIMER_NOW4}) / 1000000))
#     # echo " ${TIMER_VALUE2}   ms   after to load'init_paths'"
#     local TIMER_VALUE2=$(((${TIMER_NOW3} - ${TIMER_ALL_THEN2}) / 1000000))
#     echo " ${TIMER_VALUE2}   ms   total after to load'init_paths'"

# }

# function lux_principium() {

#     my_envs

#     [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_LBULB_ON}> $(timer_all) 'LET THERE BE LIGHT' ... ${END_SOURCING}"
#     local TIMER_NOW2=$(/usr/local/bin/gdate +%s%N)
#     local TIMER_VALUE2=$(((${TIMER_NOW2} - ${TIMER_ALL_THEN2}) / 1000000))
#     echo " ${TIMER_VALUE2}   ms   prior to 'source_all'"
#     local S1="${CUSTOM_ZSH}/MAIN.zsh"
#     if [ -f "$S1" ]; then
#         . "${S1}"
#         source_all
#     else
#         echo "Can not load 'source_all' from '${S1}' please verify path or file"
#     fi

# }

# !! ~/ahmyzsh/path.sh
personal_projects_paths() {
    export LXIO="${HOME}/Developer/LuxciumProject/luxcium.io"
}
init_projects_paths() {

    personal_projects_paths

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

init_paths() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then
        export CACHE_FOLDER="${HOME}/.cache/p10k-${USER}"
        export AHMYZSH="${HOME}/ahmyzsh"
        export NODE_REPL="${AHMYZSH}/node-repl"
        export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        export PYTHON_REPL="${AHMYZSH}/python-repl"
        export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        {
            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
            {
                export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                export ZSH_COMPUTE="${ZSH_SOURCES}/compute"
                export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
            }

            export ZSH_BIN="${CUSTOM_ZSH}/bin"
            {
                export ZSH_BIN_ETC="${ZSH_BIN}/etc"
            }
        }
        export OHMYZSH="${AHMYZSH}/ohmyzsh"
        {
            export ZSH="${OHMYZSH}"
        }
        export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
        {
            export TMUX_BIN="${CUSTOM_TMUX}/bin"
            export TMUX_LOADER="${TMUX_BIN}/tmux-loader.sh"
            export TMUX_CONFIGS="${CUSTOM_TMUX}/configs"
            export TMUX_COMMON_CONF="${TMUX_CONFIGS}/common.tmux.config"
            export TMUX_COMMON_THEME="${TMUX_CONFIGS}/theme.tmux.config"
        }
        export POWERLINE="${AHMYZSH}/powerline"
        {
            export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"
            {
                export PWRLN_TMUX_CONF="${POWERLINE_BINDINGS}/tmux/powerline.conf"
            }
        }
    fi

    # load_my_envs
    # init_projects_paths
}

# source "${AHMYZSH}/paths.sh"
load_my_envs() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then

        {
            {

                # { #* FPATH +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                #     local _FPATH="${CUSTOM_ZSH}"
                #     local _FPATH="${_FPATH}:${ZSH_SOURCES}"
                #     local _FPATH="${_FPATH}:${ZSH_COMPLETION}"
                #     local _FPATH="${_FPATH}:${ZSH_COMPUTE}"
                #     local _FPATH="${_FPATH}:${ZSH_FLAGS}"
                #     local _FPATH="${_FPATH}:${ZSH_LAYOUTS}"

                #     export fpath="${_FPATH}:${fpath}"
                # } #* FPATH +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

            }
        }

        ## fnm
        export FNM_ALIASES="${HOME}/.fnm/aliases"
        {
            export NODEDEFAULT="${FNM_ALIASES}/default/bin"
            export NODELATEST="${FNM_ALIASES}/latest/bin"
            export NODELATEST_ARGON="${FNM_ALIASES}/latest-argon/bin"
            export NODELATEST_BORON="${FNM_ALIASES}/latest-boron/bin"
            export NODELATEST_CARBON="${FNM_ALIASES}/latest-carbon/bin"
            export NODELATEST_DUBNIUM="${FNM_ALIASES}/latest-dubnium/bin"
            export NODELATEST_ERBIUM="${FNM_ALIASES}/latest-erbium/bin"

            alias node-default="${NODEDEFAULT}/node"
            alias node-latest="${NODELATEST}/node"
            alias node-argon="${NODELATEST_ARGON}/node"
            alias node-boron="${NODELATEST_BORON}/node"
            alias node-carbon="${NODELATEST_CARBON}/node"
            alias node-dubnium="${NODELATEST_DUBNIUM}/node"
            alias node-erbium="${NODELATEST_ERBIUM}/node"
        }

        export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"

        export PS2="$(tput setab 7)$(tput setaf 0)  "

        # Ruby
        export WITH_RBENV='true'
        export PATH_RBENV='/Users/neb_401/.rbenv/shims'

        # GEM
        export WITH_BIN_GEM='true'
        export PATH_BIN_GEM='/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin'

        export PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"

        export PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
        export PERL_MB_OPT='--install_base "${HOME}/perl5"'
        export PERL_MM_OPT='INSTALL_BASE=/Users/neb_401/perl5'
        export PATH_PKG_CONFIG='/usr/local/opt/sqlite/lib/pkgconfig'
        # export PATH_PKG_CONFIG="/usr/local/opt/openssl/lib/pkgconfig"
        export WITH_ANACONDA='true'
        export PATH_ANACONDA3="${HOME}/anaconda3/tungsten/bin"

        export LOAD_ONCE_00="true"

        export NODE_DEPLOYEMENT_ENV='false'
        export NODE_ENV='development'
        export NODE_LOCAL_ENV='true'
        export NODE_NO_READLINE=1
        export NODE_REMOTE_ENV='true'
        export NODE_REPL_HISTORY_SIZE=10000
        export NODE_REPL_HISTORY="${HOME}/.node_repl_history"
        export NODE_REPL_MODE='sloppy'
        export NODE_TEST_ENV='false'
        export NPM_CHECK_INSTALLER='pnpm'
        export PYTHONSTARTUP="${HOME}/.pythonrc"

        export GITHUB_TOKEN="${MAC_BOOK_PRO_ENV_REPO_GIST_HOOK_NOTIFICATIONS}"
        export GITHUB_PASSWORD="${GITHUB_TOKEN}"
        export GITHUB_USER='Luxcium'

        export LOCALPORT=80
        export PORT=80
        export SERVER='dev-server'
        {
            {
                export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"
                {
                    export PWRLN_ZSH_CONF="${PWRLN_BINDINGS}/zsh/powerline.zsh"

                }

                {
                    export NODE_REPL_SCRIPT="${NODE_REPL}/repl.js"

                    {
                    }
                    {
                    }
                }

                {
                    export SOURCE_ALL="${ZSH_SOURCES}/.source_all.sh"
                    export SOURCE_FUNCTIONS="${ZSH_SOURCES}/.source_functions.zsh"
                    export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                    export ZSH_LUXCIUM="${ZSH_SOURCES}"
                    export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                    {
                        export ZSH_SRC="${ZSH_LUXCIUM}"
                        {
                            export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
                            export PATH_COMPLETION="${ZSH_LUXCIUM}/completion"
                            export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
                        }
                    }
                }

            }

        }

        export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
        export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"

        export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
        export PATH_OH_MY_ZSH="${ZSH}"
        export PATH_QUESTRADE="${PATH_LXIO_PRJ}/questrade-ts"
        export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
        export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"

        # /Users/neb_401/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode
        export DEV_POPNLOCK="${PATH_INSDR_CODE_EXT}/dev-pop-n-lock-theme-vscode"
    fi

}
