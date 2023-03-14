#!/bin/sh
set +m

SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N - B O O T S T R A P - +#
    export LOAD_ENV_COMPLETED='not yet'
    export ENVIRONNEMENT_LOADED='not yet'
    export LOGIN_ENV_LOADED='not yet'
    export INTERACTIVE_ENV_LOADED='not yet'

    : "${LOAD_ENV_COMPLETED_ONCE:='not yet'}"
    : "${ENVIRONNEMENT_LOADED_ONCE:='not yet'}"
    : "${LOGIN_ENV_LOADED_ONCE:= 'not yet'}"
    : "${INTERACTIVE_ENV_LOADED_ONCE:='not yet'}"

    IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
    export IS_ZSH_
    [ -z "${IS_ZSH_}" ] && return 1

    [ -z "${MAIN_INIT}" ] || reload_alias_and_conf
    [ -z "${MAIN_INIT}" ] || { prompt_ "Reloaded alias files functions and conf" && return; }
    MAIN_INIT="start"

    S1="${AHMYZSH}/MAIN-FUNCTIONS.sh"
    # shellcheck source=./MAIN-FUNCTIONS.sh
    # shellcheck disable=SC2015
    { [ -f "${S1}" ] && . "${S1}"; } || load_error_ "${S1}"

    load_ "${AHMYZSH}/MAIN_SETTINGS.sh" "MAIN_SETTINGS"

    call_ load_all_config_and_settings_files

    call_ load_zshenv
    source_ "${HOME}/.env"
    call_ fnm_

    isinteractive || return 0

    call_ activate_prompt

    call_ load_oh_my_zsh

    call_ load_options_list
    call_ load_options_main

    call_ load_autosuggest
    call_ load_autocomplete
    (
        (compaudit | xargs chmod g-w,o-w 2>/dev/null) &
        (zsh_compile_all_R) &
    )
    bindkey -v
    return 0
}

prompt_() {
    isinteractive && echo "${@}"
}

load_error_() {
    prompt_ "Error: '${*}' path can not be resolved"
    return 1
}

my_term="$(ps -p "$PPID" -o comm= | awk '{print $1}')"
export my_term
