LANG="fr_CA.UTF-8"
LANGUAGE="fr_CA.UTßF-8"
function my_envs() {
    __LOCALE__
    # This variable determines the locale category for any category not specifically selected via a variable starting # with ‘LC_’.
    : ${ENV_LOADED:="false"}
    : ${SHOW_LOAD_CUTLS:="true"}
    : ${VERBOSA:=1}
    : ${EDITOR:='code'}
    : ${AHMYZSH:="$HOME/ahmyzsh"}

    local S1="${AHMYZSH}/paths.sh"
    . "${S1}"
    init_paths

    export BASE_LAYOUTS="${ZSH_SOURCES}/Layouts/base-layouts.sh"
    . ${BASE_LAYOUTS}
    load_layouts

    local S1="${AHMYZSH}/functions.sh"
    . "${S1}"
    init_functions

}

# reversed יְהִי אוֹר due to lack of support in my terminal
# [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_HOURGLASS_END_0} load_zshenv in $(timer_all) ms !${END_FUNCTION}"
# [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_LBULB_ON}> $(timer_all) 'LET THERE BE LIGHT' ... ${END_SOURCING}"
# [ "${VERBOSA}" -gt 0 ] && echo "      \u001b[1m    רֹוא יִהְי \u001b[0m" # 'LET THERE BE LIGHT ...'
# https://en.wikipedia.org/wiki/Let_there_be_light
# 'LET THERE BE LIGHT ...'
function lux_principium() {
    my_envs

    local S1="${CUSTOM_ZSH}/MAIN.zsh"
    . "${S1}"
    source_all
    reload_all_x
    source_ "${TMUX_FUNCTIONS_INDEX}"

}

function __LOCALE__() {

    # This variable overrides the value of the ‘LANG’ variable and the value of any of the other variables starting with # ‘LC_’.
    # LC_ALL="fr_CA.UTF-8"

    # This variable determines the locale category for character collation information within ranges in glob brackets and # for sorting.
    LC_COLLATE="fr_CA.UTF-8"

    # This variable determines the locale category for character handling functions. If the MULTIBYTE option is in effect # this variable or LANG should contain a value that reflects the character set in use, even if it is a single-byte # character set, unless only the 7-bit subset (ASCII) is used. For example, if the character set is ISO-8859-1, a # suitable value might be en_US.iso88591 (certain Linux distributions) or en_US.ISO8859-1 (MacOS).
    LC_CTYPE="fr_CA.UTF-8"

    # This variable determines the language in which messages should be written. Note that zsh does not use message # catalogs.
    LC_MESSAGES="fr_CA.UTF-8"

    # This variable affects the decimal point character and thousands separator character for the formatted input/output # functions and string conversion functions. Note that zsh ignores this setting when parsing floating point # mathematical expressions.
    LC_NUMERIC="fr_CA.UTF-8"

    # This variable determines the locale category for date and time formatting in prompt escape sequences.
    LC_TIME="fr_CA.UTF-8"

    LC_MONETARY="fr_CA.UTF-8"

}
