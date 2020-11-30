eval "$(gh completion -s zsh)"

export EDITOR="nano"
IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (echo 'zsh'; exit 0) || (echo 'not zsh'; exit 1))"
alias isbash="([[ -n ${IS_BASH_:-''} ]] && (echo 'bash'; exit 0) || (echo 'not bash'; exit 1))"

alias iszsh_="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
alias isbash_="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"

function init_functions() {
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

    function call_() {
        if [ -z $1 ]; then
            [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no function call provided"
            return 1
        else
            TIMER_THEN=$(/usr/bin/date +%s%N)
            eval ${1}
            returnval=$?
            [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
            return "${returnval}"
        fi
    }

    function source_() {
        if [ -z $1 ]; then
            [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no file provided"
            return 1
        else
            TIMER_THEN=$(/usr/bin/date +%s%N)
            if [[ -f $1 ]]; then
                if [[ -r $1 ]]; then
                    source "${1}"
                    [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
                    return 0
                else
                    [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
                    return 3
                fi
            else
                [ "${VERBOSA}" -gt 2 ] && echo "Error sourcing '$1' file provided does not exist"
                return 2
            fi
        fi
    }

    function load_() {
        source_ "${1}" &&
            call_ ${2}
    }
}
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

function load_functions_definitions() {

    function cls() {
        print "${clearall}"
        pw

    }

    function cd() {
        local catchupPATH=$(/bin/pwd)
        local tentativePath=${@:-${HOME}}
        local effectivePATH="$(builtin cd ${tentativePath} 2>/dev/null && echo -n "${tentativePath}" || echo -n ${catchupPATH})"
        local _MESSAGE=$(
            [[ "${effectivePATH}" = "${tentativePath}" ]] ||
                echo "ERROR: Path not found or not a directory cd back to ${effectivePATH}"
        )

        [[ "${effectivePATH}" = "${HOME}" ]] && [[ "${catchupPATH}" != "${HOME}" ]] &&
            echo "cd to $HOME"

        builtin cd "${effectivePATH}"
        echo ''
        echo -n "$LBOLD $FRD $_MESSAGE $RSET"
        echo ''
        [[ -x $(which lolcat) ]] && (pwd | lolcat) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
        [[ -x $(which colorls) ]] && (colorls -lA --sd -d --gs) || ([[ -x $(which /bin/ls) ]] && /bin/ls --color=auto -hal)
        [[ -x $(which lolcat) ]] && (pwd | lolcat) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
        echo -n "$LBOLD $FRD $_MESSAGE $RSET"
        echo ''

        [[ -z "$_MESSAGE" ]] || return 1

    }

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

}

function Load_Intearctive_Login_State() {
    export Login_Start_Did_Execute=false
    export Non_Login_Start_Did_Execute=false
    export Interactive_Start_Did_Execute=false
    export Non_Interactive_Start_Did_Execute=false
    function Login_Start() {
        if [[ Login_Start_Did_Execute != true ]]; then
            export Login_Start_Did_Execute=true
            if [[ -o login ]]; then
            # echo "I'm a login shell"
            fi
        fi

    }

    function Non_Login_Start() {
        if [[ Non_Login_Start_Did_Execute != true ]]; then
            export Non_Login_Start_Did_Execute=true
            if [[ -o login ]]; then; else #+ !! ELSE !!
                # echo "I'm a non login shell"
            fi
        fi
    }

    function Interactive_Start() {
        if [[ Interactive_Start_Did_Execute != true ]]; then
            export Interactive_Start_Did_Execute=true
            if [[ -o interactive ]]; then
            # echo "I'm interactive shell"
            fi
        fi

    }

    function Non_Interactive_Start() {
        if [[ Non_Interactive_Start_Did_Execute != true ]]; then
            export Non_Interactive_Start_Did_Execute=true
            if [[ -o interactive ]]; then; else #+ !! ELSE !!
                # echo "I'm non interactive shell"
                export VERBOSA=0
            fi
        fi
    }
    Login_Start
    Non_Login_Start
    Interactive_Start
    Non_Interactive_Start
}
