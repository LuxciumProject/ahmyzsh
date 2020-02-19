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

    local S1="${AHMYZSH}/functions.sh"
    . "${S1}"
    init_functions

}

function lux_principium() {

    my_envs
    # reversed יְהִי אוֹר due to lack of support in my terminal
    # [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_HOURGLASS_END_0} load_zshenv in $(timer_all) ms !${END_FUNCTION}"
    #
    # [ "${VERBOSA}" -gt 0 ] && echo "      \u001b[1m    רֹוא יִהְי \u001b[0m" # 'LET THERE BE LIGHT ...'
    # https://en.wikipedia.org/wiki/Let_there_be_light
    # 'LET THERE BE LIGHT ...'
    [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_LBULB_ON}> $(timer_all) 'LET THERE BE LIGHT' ... ${END_SOURCING}"

    local S1="${CUSTOM_ZSH}/MAIN.zsh"
    . "${S1}"
    source_all
    source_ "${TMUX_FUNCTIONS_INDEX}"

}
