function my_envs() {

    : ${ENV_LOADED:="false"}
    : ${SHOW_LOAD_CUTLS:="true"}
    : ${VERBOSA:=1}
    : ${EDITOR:='code'}

    local S1="${AHMYZSH}/paths.sh"
    . "${S1}"
    init_paths

    export BASE_LAYOUTS="${ZSH_SOURCES}/layouts/base-layouts.sh"
    . ${BASE_LAYOUTS}
    load_layouts

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

function lux_principium() {

    my_envs
    # reversed יְהִי אוֹר due to lack of support in my terminal
    [ "${VERBOSA}" -gt 0 ] && echo "      \u001b[1m    רֹוא יִהְי \u001b[0m" # 'LET THERE BE LIGHT ...'
    # https://en.wikipedia.org/wiki/Let_there_be_light
    # 'LET THERE BE LIGHT ...'
    [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_LBULB_ON}> LET THERE BE LIGHT ... ${END_SOURCING}"

    local S1="${CUSTOM_ZSH}/MAIN.zsh"
    . "${S1}"
    source_all

}
