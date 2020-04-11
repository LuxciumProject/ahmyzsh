function init_functions() {
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

    function call_() {
        if [ -z $1 ]; then
            return 1
        else
            TIMER_THEN=$(/usr/local/bin/gdate +%s%N)
            eval ${1}
            [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
            return 0
        fi
    }

    function source_() {
        if [ -z $1 ]; then
            return 1
            [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing $1"
        else
            TIMER_THEN=$(/usr/local/bin/gdate +%s%N)
            . "${1}"
            [ "${VERBOSA}" -gt 2 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
            return 0
        fi
    }

    function load_() {
        source_ "${1}" &&
            call_ ${2}
    }
}
