export TIMER_ALL_THEN=$(/usr/bin/date +%s%N)
#$ Verry first entry point
## load_path
. $HOME/envs/cache/path.env
local TIMER_NOW=$(/usr/bin/date +%s%N)
local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
echo "\u001b[1m      רֹוא יִהְי \u001b[0m"
echo " ${TIMER_VALUE}   ms   to   'PATH'"

export GPG_TTY=$(tty)
export AHMYZSH="${HOME}/ahmyzsh"
. "${AHMYZSH}/initial_load.zsh"
# 'LET THERE BE LIGHT "יְהִי אוֹר" ... '
lux_principium
