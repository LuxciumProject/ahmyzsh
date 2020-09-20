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
