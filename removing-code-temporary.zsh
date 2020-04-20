# !! ~/ahmyzsh/functions.sh

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
# יְהִי אוֹר

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
