function parse_options() {
    o_port=(-p 9999)
    o_root=(-r WWW)
    o_log=(-d ZWS.log)
    zparseopts -K -- p:=o_port r:=o_root l:=o_log h=o_help
    if [[ $? != 0 || "$o_help" != "" ]]; then
        echo Usage: $(basename "$0") "[-p PORT] [-r DIRECTORY]"
        exit 1
    fi
    port=$o_port[2]
    root=$o_root[2]
    log=$o_log[2]
    if [[ $root[1] != '/' ]]; then root="$PWD/$root"; fi
}

function mkramdir() {
    # LASTVIRTUALRAM
    if [ -d "${MYVIRTUALRAM_PATH}" ]; then

        LASTVIRTUALRAM="${MYVIRTUALRAM_PATH}/${1}"
        mkdir -p "${LASTVIRTUALRAM}"
        chmod 1777 "${LASTVIRTUALRAM}"
        # cd "${LASTVIRTUALRAM}"
        # ln -s LASTVIRTUALRAM -v
        export LASTVIRTUALRAM

    fi
    # echo "'\$@:' $@, \n'\$1:' $1, \n'\$2:' $2, \n'\$3:' $3, \n'\$4:' $4"

}

function add_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function affix_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function perpend_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function append_to_path_() {
    [ -z $1 ] || export PATH="${PATH}:${1}"
}

function timer_() {
    # local TIMER_NOW=$(/bin/date +%s%N)
    local MICROSEC='1000000'
    local TIMER_NOW=$(date +%s%N)
    local timecalc=$((${TIMER_NOW} - ${1:=TIMER_NOW}))
    local TIMER_VALUE=$((${timecalc} / ${MICROSEC}))
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
    # local TIMER_NOW=$(/usr/bin/date +%s%N)
    # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
    timer_ "${TIMER_THEN}"
    # echo -n "${TIMER_VALUE} "
    # return 0
}

function timer_all() {
    # local TIMER_NOW=$(/usr/bin/date +%s%N)
    # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
    timer_ "${TIMER_ALL_THEN}"
    # echo -n "${TIMER_VALUE} "
}

# function call_() {
#     if [ -z $1 ]; then
#         [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no function call provided"
#         return 1
#     else
#         TIMER_THEN=$(/usr/bin/date +%s%N)
#         eval ${1}
#         returnval=$?
#         [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
#         return "${returnval}"
#     fi
# }

# function source_() {
#     if [ -z $1 ]; then
#         [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no file provided"
#         return 1
#     else
#         TIMER_THEN=$(/usr/bin/date +%s%N)
#         if [[ -f $1 ]]; then
#             if [[ -r $1 ]]; then
#                 source "${1}"
#                 [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
#                 return 0
#             else
#                 [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
#                 return 3
#             fi
#         else
#             [ "${VERBOSA}" -gt 2 ] && echo "Error sourcing '$1' file provided does not exist"
#             return 2
#         fi
#     fi
# }

# function load_() {
#     source_ "${1}" &&
#     call_ ${2}
# }

function load_functions_definitions() {

    function source_notice_now() {
        source_ "${CUSTOM_ZSH}/notice.sh"
    }

    function update() {
        (update_ >/dev/null)
        (ls node_modules 1>/dev/null 2>&1)
        if [ $? ]; then
            if [ -f yarn.lock ]; then
                S1='package-lock.json'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='yarn-error.log'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='yarn-error.log'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='pnpm-lock.yaml'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='node_modules/'
                [ -d "${S1}" ] && (rm -r "${S1}" 1>/dev/null 2>&1)

                (yarn install --force --audit --link-duplicates --check-files)

                [ -f '.yarnclean' ] && (yarn autoclean --force) || (yarn autoclean --init && yarn autoclean --force)

                # yarn add -D eslint@latest typescript@latest ts-node@latest @types/node@latest
                # yarn global add eslint@latest typescript@latest ts-node@latest @types/node@latest
                # install-peerdeps -Y -D @typescript-eslint/eslint-plugin@latest
                # install-peerdeps -Y -D @typescript-eslint/parser@latest
                # install-peerdeps -Y -D eslint-config-airbnb-base@latest
                # install-peerdeps -Y -D eslint-config-airbnb-typescript@latest
                # install-peerdeps -Y -D eslint-config-airbnb@latest
                # install-peerdeps -Y -D eslint-config-prettier@latest
                # install-peerdeps -Y -D eslint-plugin-import@latest
                # install-peerdeps -Y -D eslint-plugin-jsx-a11y@latest
                # install-peerdeps -Y -D eslint-plugin-react-hooks@latest
                # install-peerdeps -Y -D eslint-plugin-react@latest
                # install-peerdeps -Y -D eslint-plugin-node@latest
                # install-peerdeps -Y -D eslint-plugin-unicorn@latest

                #                 warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-import@^2.20.1".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-jsx-a11y@^6.2.3".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-react@^7.19.0".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-react-hooks@^2.5.0 || ^1.7.0".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb-base@14.1.0" has unmet peer dependency "eslint-plugin-import@^2.20.1".
            fi
        fi
        return 0
    }
    function update_() {
        (fnm-update_ 2>/dev/null)
        (yarn-update_ 2>/dev/null)
        (eslint_global 2>/dev/null)
        (conda-update_ 2>/dev/null)
        return 0
    }

    function cabal-update_() {
        cabal update &
        # conda update --all -y &
        return 0
    }

    autoload conda-update_
    alias conda-update=conda-update_
    # function conda-update_() {
    #     conda update conda -y &
    #     conda update --all -y &
    #     return 0
    # }

    function fnm-update_() {
        fnm install latest-dubnium &
        fnm install latest-carbon &
        fnm install latest-boron &
        fnm install latest-argon &
        fnm install latest-erbium && fnm use latest-erbium && fnm default $(node -v) && fnm install latest &
        return 0

    }

    autoload yarn-update_
    alias yarn-update=yarn-update_
    # function yarn-update_() {
    #     yarn global add \
    #         create-react-app@latest \
    #         eslint-config-prettier@latest \
    #         eslint@latest \
    #         prettier@latest \
    #         install-peerdeps@latest \
    #         npm@latest \
    #         pnpm@latest \
    #         serve@latest \
    #         shelljs@latest \
    #         shx@latest \
    #         ts-node@latest \
    #         typescript@latest \
    #         yarn@latest &
    #     return 0

    # }

    function eslint_global() {
        npx install-peerdeps -g @typescript-eslint/parser@latest
        npx install-peerdeps -g @typescript-eslint/eslint-plugin@latest
        npx install-peerdeps -g eslint-config-airbnb-base@latest
        npx install-peerdeps -g eslint-config-prettier@latest
        npx install-peerdeps -g eslint-plugin-flowtype@latest
        npx install-peerdeps -g eslint-plugin-import@latest
        npx install-peerdeps -g eslint-plugin-jest@latest
        npx install-peerdeps -g eslint-plugin-jsx-a11y@latest
        npx install-peerdeps -g eslint-plugin-node@latest
        npx install-peerdeps -g eslint-plugin-prettier@latest
        npx install-peerdeps -g eslint-plugin-react-hooks@latest
        npx install-peerdeps -g eslint-plugin-react@latest
        npx install-peerdeps -g eslint-plugin-unicorn@latest
        yarn-update_ &
        return 0

    }

    #     /home/luxcium/.fnm/node-versions/v12.18.2/installation/lib
    # ├── @typescript-eslint/parser@3.6.1
    # ├── UNMET PEER DEPENDENCY eslint@^5.0.0 || ^6.0.0 || ^7.0.0
    # ├── npm@6.14.6
    # ├── pnpm@5.4.0
    # └── yarn@1.22.4

    # npm ERR! peer dep missing: eslint@^5.0.0 || ^6.0.0 || ^7.0.0, required by @typescript-eslint/parser@3.6.1
    # npm ERR! peer dep missing: eslint@*, required by @typescript-eslint/experimental-utils@3.6.1
    # npm ERR! peer dep missing: typescript@>=2.8.0 || >= 3.2.0-dev || >= 3.3.0-dev || >= 3.4.0-dev || >= 3.5.0-dev || >= 3.6.0-dev || >= 3.6.0-beta || >= 3.7.0-dev || >= 3.7.0-beta, required by tsutils@3.17.1
    # yarn global v1.22.4
    # info "create-react-app@3.4.1" has binaries:
    #    - create-react-app
    # info "eslint@7.5.0" has binaries:
    #    - eslint
    # info "eslint-config-prettier@6.11.0" has binaries:
    #    - eslint-config-prettier-check
    # info "install-peerdeps@2.0.3" has binaries:
    #    - install-peerdeps
    # info "npm@6.14.6" has binaries:
    #    - npm
    #    - npx
    # info "pnpm@5.4.0" has binaries:
    #    - pnpm
    #    - pnpx
    # info "prettier@2.0.5" has binaries:
    #    - prettier
    # info "serve@11.3.2" has binaries:
    #    - serve
    # info "shelljs@0.8.4" has binaries:
    #    - shjs
    # info "shx@0.3.2" has binaries:
    #    - shx
    # info "ts-node@8.10.2" has binaries:
    #    - ts-node
    #    - ts-script
    #    - ts-node-script
    #    - ts-node-transpile-only
    # info "typescript@3.9.7" has binaries:
    #    - tsc
    #    - tsserver
    # info "yarn@1.22.4" has binaries:
    #    - yarn
    #    - yarnpkg
    # Done in 0.48s.

    function tsu() {
        yarn add -D yarn@latest &&
            yarn add -D eslint@latest typescript@latest ts-node@latest @types/node@latest &
        yarn global add yarn@latest &&
            yarn global add eslint@latest typescript@latest ts-node@latest @types/node@latest &
    }
    function ts-nightly() {
        yarn add -D typescript@next ts-node@latest @types/node@latest tslib@latest &
        yarn global add typescript@next ts-node@latest @types/node@latest tslib@latest &
    }

    function tmcode() {

        source $TMUX_BIN/tmux-functions.sh
        tmp-set-cache
        TMUX_SESSION="Default"
        TMUX_WINDOW_0="dev-pop-n-lock"
        PATH_TMUX_SESSION="${DEV_POPNLOCK}"
        insdr "${DEV_POPNLOCK}"
        tmux has-session -t $TMUX_SESSION 2>/dev/null
        if [ $? != 0 ]; then
            tmux new -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
            tmux-config
        else
            tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
        fi
        tmux-attach
        tmp-reset-to-cache
    }

    autoload pw_
    alias pw=pw_
    # function pw() {
    #     (pwd | lolcat "${@}")

    # }

    autoload lsf_
    alias lsf=lsf_
    # function lsf() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls --almost-all --gs -f
    #         pw
    #         echo ''
    #     )
    # }

    autoload lsd_
    alias lsd=lsd_
    # function lsd() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls --all -d
    #         pw
    #         echo ''
    #     )
    # }

    autoload ll_
    alias ll=ll_
    # function ll() {
    #     (

    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls -lA --sd --gs
    #         pw
    #         echo ''
    #     )
    # }

    autoload lf_
    alias lf=lf_
    # function lf() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls -lA --sf -f
    #         pw
    #         echo ''
    #     )
    # }

    autoload ld_
    alias ld=ld_
    # function ld() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls -lA --sd -d
    #         pw
    #         echo ''
    #     )
    # }

    autoload lc_
    alias lc=lc_
    # function lc() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         builtin cd "${mypath}"
    #         colorls -a --sd --gs -S
    #         pw -ta -d 20
    #         echo ''
    #     )
    # }

    autoload cls_
    alias cls=cls_
    # function cls() {
    #     print "${clearall}"
    #     pw

    # }

    autoload cd_
    alias cd=cd_
    # function cd() {

    #     local mypath="${@:-$HOME}"
    #     echo ''
    #     builtin cd "${mypath}"
    #     pw
    #     colorls -lA --sd -d
    #     pw
    #     echo ''
    # }

    # brew configurations

    function perseus() {
        export WITH_ANACONDA=false
        reload_path && echo "The sleeping Medusa decapitated."
    }

    function medusa() {
        export WITH_ANACONDA=true
        reload_path && echo "Perseus turning to stone."
    }

    function brewdoc() {
        # FROM: (SOURCE) https://hashrocket.com/blog/posts/keep-anaconda-from-constricting-your-homebrew-installs
        # (C) 2018 HASHROCKET (used without permision)
        perseus
        command echo '>     UPDATING BREW  . . . '
        command brew update
        command echo '>     UPGRADING BREW  . . . '
        command brew upgrade
        command echo '>     Remove old symlinks  . . . '
        command brew cleanup --prune-prefix
        command echo ">     If nothing is returned to the terminal you're up-to-date  . . . "
        command brew outdated
        command echo '>     List forumlas that can be cleaned up  . . . '
        command brew cleanup -n
        command echo '>     Remove all old formulae from brew and cask  . . . '
        command brew cleanup
        command echo '>     Show the individual packages installed  . . . '
        command brew list
        command echo '>     Looking if everything is working correctly  . . . '
        command brew doctor
        command echo '>     UPGRADING NPM   . . . '
        npm install -g npm@latest
        command echo '>     UPGRADING YARN   . . . '
        npm install -g yarn@latest
        command echo '>     UPGRADING PNPM   . . . '
        npm install -g pnpm@latest
        # command echo '>     Will also uninstall && reinstall all Globals NPM and PNPM  . . . '
        # reinstallNPMGlobal
        medusa

    }

    function brew() {
        perseus
        command brew "$@"
        medusa
    }

    function brewx() {
        command brew "$@"
    }

    function ts-react-app() {
        npx create-react-app $1 --typescript
    }

    function git_add_comit_push() {
        git add .
        git commit -am "${1:=adding functionalities}"
        git push --tags --progress
        git push --all --progress
        git fetch
    }

    function ahmyzsh_git_update() {
        (
            builtin cd $AHMYZSH
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $CUSTOM_TMUX
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $CUSTOM_ZSH
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $NODE_REPL
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $POWERLINE
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $PYTHON_REPL
            git_add_comit_push "${1}" &
        ) &>/dev/null
        # AHMYZSH="${HOME}/ahmyzsh"
        # CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
        # CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        # NODE_REPL="${AHMYZSH}/node-repl"
        # OHMYZSH="${AHMYZSH}/ohmyzsh"
        # POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        # POWERLINE="${AHMYZSH}/powerline"
        # PYTHON_REPL="${AHMYZSH}/python-repl"
    }

    function mytty() {
        tty >~/.tty
        tty >~/.tty1
        tty >~/.tty2
    }

    function mytty0() {
        tty >~/.tty
    }

    function mytty1() {
        tty >~/.tty1
    }

    function mytty2() {
        tty >~/.tty2
    }

    function notmytty() {
        echo -n '' >~/.tty
        echo -n '' >~/.tty1
        echo -n '' >~/.tty2
    }

    function notmytty0() {
        echo -n '' >~/.tty
    }

    function notmytty1() {
        echo -n '' >~/.tty1
    }

    function notmytty2() {
        echo -n '' >~/.tty2
    }

    function cattty() {
        local myTY_=$(cat $HOME/.tty)
        if [ "$myTY_" != "" ]; then
            if [ "${1:-0}" = 1 ]; then
                cattty1 $@
                return 0
            fi
            if [ "${1:-0}" = 2 ]; then
                cattty2 $@
                return 0
            fi
            echo "$(cat $HOME/.tty)"
            return 0
        fi
        return 1
    }

    function cattty1() {
        local myTY_=$(cat $HOME/.tty1)
        if [ "$myTY_" != "" ]; then
            if [ "${1:-0}" = 1 ]; then
                echo -n " 1>$(cat $HOME/.tty1)"
                return 0
            fi
            if [ "${1:-0}" = 2 ]; then
                cattty2 $@
                return 0
            fi
            echo -n " 1>$(cat $HOME/.tty1)"
            # echo "$(cat $HOME/.tty1)"
            return 0
        fi
        return 1
    }

    function cattty2() {
        local myTY_=$(cat $HOME/.tty2)
        if [ "$myTY_" != "" ]; then
            if [ "${1:-0}" = 1 ]; then
                cattty1 $@
                return 0
            fi
            if [ "${1:-0}" = 2 ]; then
                echo -n " 2>$(cat $HOME/.tty2)"
                return 0
            fi
            echo -n " 2>$(cat $HOME/.tty2)"
            # echo "$(cat $HOME/.tty2)"
            return 0
        fi
        return 1
    }

    function toSD1n2() {
        # local myTY_=$(cat $HOME/.tty)
        # if [ "$myTY_" != "" ]; then
        eval $(echo "${@:-echo nothing to do} $(cattty2) $(cattty1)")
        return 0
        # fi
        eval $(echo "${@:-echo nothing to do}")
        return 0

    }

    function toSDOUT1() {
        local myTY_=$(cat $HOME/.tty1)
        if [ "$myTY_" != "" ]; then
            eval $(echo "${@:-echo nothing to do} $(cattty1)")
            return 0
        fi
        eval $(echo "${@:-echo nothing to do}")
    }

    function toSDERR2() {
        local myTY_=$(cat $HOME/.tty2)
        if [ "$myTY_" != "" ]; then
            eval $(echo "${@:-echo nothing to do} $(cattty2)")
            return 0
        fi
        eval $(echo "${@:-echo nothing to do}")
        return 0
    }

    alias to0="toSD1n2"
    alias to1="toSDOUT1"
    alias to2="toSDERR2"

    function ahmyzsh-update() {
        (ahmyzsh-update_ &)
    }

    function ahmyzsh-update_() {

        eval $(echo "(
            toSDERR2 custom-zsh-update
            toSDERR2 custom-tmux-update
            toSDERR2 node-repl-update
            toSDERR2 python-repl-update
            toSDERR2 ohmyzsh-update
            toSDERR2 powerlevel10k-update
            toSDERR2 powerline-update


        )")
        toSD1n2 "custom-update ${AHMYZSH}/"

        return 0
    }

    function custom-update() {
        eval $(echo "(
            builtin cd ${1};
            git add .;
            git commit -am "refresh/update";
            push;
            git checkout ${2:-'master'};
            pull;
            git pull origin ${2:-'master'} -t --ff;
            push;
            git checkout luxcium;
            pull;
            git pull origin ${2:-'master'} -t --ff;
            push;)")
        return 0
    }

    function custom-upstream-update() {
        eval $(echo "(
            builtin cd ${1};
            git add .;
            git commit -am "refresh/update";
            push;
            git checkout ${2:-'master'};
            pull;
            git pull upstream ${2:-'master'} -t --ff;
            push;
            git checkout luxcium;
            pull;
            git pull origin ${2:-'master'} -t --ff;
            push;)")
        return 0
    }

    function ohmyzsh-update() {
        toSDOUT1 "custom-upstream-update ${OHMYZSH}/"
    }

    function powerlevel10k-update() {
        toSDOUT1 "custom-upstream-update ${POWERLEVLE10K}/"
    }

    function powerline-update() {
        toSDOUT1 "custom-upstream-update ${POWERLINE}/ develop"
    }

    function custom-zsh-update() {
        toSDOUT1 "custom-update ${CUSTOM_ZSH}/"
    }

    function node-repl-update() {
        toSDOUT1 "custom-update ${NODE_REP}/"
    }

    function python-repl-update() {
        toSDOUT1 "custom-update ${PYTHON_REPl}/"
    }

    function custom-tmux-update() {
        toSDOUT1 "custom-update ${CUSTOM_TMUX}/"
    }

    # function useful_functions() {

    # Functions ==============================================

    # return 1 if global command line program installed, else 0
    # example
    # echo "node: $(program_is_installed node)"
    function program_is_installed() {
        # set to 1 initially
        local return_=1
        # set to 0 if not found
        type $1 >/dev/null 2>&1 || { local return_=0; }
        # return value
        echo "$return_"
    }

    # return 1 if local npm package is installed at ./node_modules, else 0
    # example
    # echo "gruntacular : $(npm_package_is_installed gruntacular)"
    function npm_package_is_installed() {
        # set to 1 initially
        local return_=1
        # set to 0 if not found
        ls node_modules | grep $1 >/dev/null 2>&1 || { local return_=0; }
        # return value
        echo "$return_"
    }

    # display a message in red with a cross by it
    # example
    # echo echo_fail "No"
    function echo_fail() {
        # echo first argument in red
        printf "\e[31m✘ ${1}"
        # reset colours back to normal
        printf "\033\e[0m"
    }

    # display a message in green with a tick by it
    # example
    # echo echo_fail "Yes"
    function echo_pass() {
        # echo first argument in green
        echo -n "\e[32m✔ ${1}"
        # reset colours back to normal
        printf "\033\e[0m"
    }

    # echo pass or fail
    # example
    # echo echo_if 1 "Passed"
    # echo echo_if 0 "Failed"
    function echo_if() {
        if [ $1 = 1 ]; then
            echo_pass $2
        else
            echo_fail $2
        fi
    }

    # ============================================== Functions

    # command line programs
    function versions() {
        printf "\033\e[0m"
        env echo "  $(echo_if $(program_is_installed node))  Node $(env node -v)"
        env echo "  $(echo_if $(program_is_installed npm))  NPM v$(env npm -v)"
        env echo "  $(echo_if $(program_is_installed fnm))  FNM v$(env fnm -v)"
        env echo "  $(echo_if $(program_is_installed yarn))  Yarn v$(env yarn -v)"
        env echo "  $(echo_if $(program_is_installed pnpm))  PNPM v$(env pnpm -v)"
        env echo "  $(echo_if $(program_is_installed tmux))  $(env tmux -V)"
        env echo "  $(echo_if $(program_is_installed eslint))  eslint $(env eslint -v)"
        env echo "  $(echo_if $(program_is_installed tsc))  TypeScript $(env tsc -v)"
        env echo "  $(echo_if $(program_is_installed conda))  $(env conda -V)"
        env echo "  $(echo_if $(program_is_installed python))  $(env python -V)"
        # env echo "  $(echo_if $(program_is_installed python3))  $(env python3 -V)"
        # Python2Version=$(echo -n $(python2 -V))
        # env echo "  $(echo_if $(program_is_installed python2))  ${Python2Version}"
        env echo "  $(echo_if $(program_is_installed rbenv))  $(env rbenv -v)"
        env echo "  $(echo_if $(program_is_installed gem))  gem v$(env gem -v)"
        env echo "  $(echo_if $(program_is_installed ruby))  $(env ruby -v)"
        env echo "  $(echo_if $(program_is_installed zsh))  $(env zsh --version)"
        env echo "  $(echo_if $(program_is_installed uname))  Kernel $(env uname -r)"
        #  uname -r
        # env echo "  $(echo_if $(program_is_installed brew))  $(env command brew -v)"

        # echo "gulp    $(echo_if $(program_is_installed gulp))  "
        # echo "webpack $(echo_if $(program_is_installed webpack))  "
        # echo "conda $(echo_if $(program_is_installed conda))
        # echo "  $(echo_if $(program_is_installed redis))  redis"
        # echo "grep2   $(echo_if $(program_is_installed grep2))"

        # local npm packages
        # echo "lodash  $(echo_if $(npm_package_is_installed lodash))"
        # echo "react   $(echo_if $(npm_package_is_installed react))"
        # echo "angular $(echo_if $(npm_package_is_installed angular))"
    }

    function zsh_version() {
        local ZSH_X=$(echo $0)
        local ZSH_V=$($(echo "${ZSH_X/'-'/}" --version))
        export MY_ZSH_VERSION=" ${TERM_ICO}  ${ZSH_V%%' (x86)'*}"
        echo "${normal}$CLRLN$BYL9K_TERM$(tput setaf 2)${MY_ZSH_VERSION} ${BKBK}${normal}"
    }

    alias reload="source_load_all"
    alias load="source_load_all"
    function source_load_all() {
        toSD1n2 source_load_all_
    }

    function source_load_all_() {
        TIMER_THEN=$(/usr/bin/date +%s%N)

        AHMYZSH="${HOME}/ahmyzsh"

        . "${AHMYZSH}/initial_load.zsh"

        . "${AH_LIBRARIES}/paths.sh"

        . "${CUSTOM_ZSH}/notice.sh"

        init_paths

        source_all_zsh
        load_fab_four

        source_TMUX

        source_path_now
        load_oh_my_zsh_now
        load_autocomplete_now

        load_oh_my_zsh
        compute_path

        echo "${BEGIN_FUNCTION} $(timer_now) 'source_load_all()' ${END_FUNCTION}"

    }

    # if [[ ! -o norcs ]]; then
    #     echo "... <commands to run if NO_RCS is not set,"
    #     echo "                    such as setting options> ..."
    # fi
    # }

    # yarn global v1.22.4
    # info "eslint@7.5.0" has binaries:
    #    - eslint
    # info "prettier@2.0.5" has binaries:
    #    - prettier
    # info "ts-node@8.10.2" has binaries:
    #    - ts-node
    #    - ts-script
    #    - ts-node-script
    #    - ts-node-transpile-only
    # info "typescript@3.9.7" has binaries:
    #    - tsc
    #    - tsserver
    # info "yarn@1.22.4" has binaries:
    #    - yarn
    #    - yarnpkg
    # Done in 0.15s.

    # function npmupdate

}
