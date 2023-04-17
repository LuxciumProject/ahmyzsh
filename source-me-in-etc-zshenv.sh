#!/usr/bin/env bash
# [[ "$(ps -p "$PPID" -o comm= | awk '{print $1}')" != "konsole" ]] && [[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash" && echo -n pre_block
echo -n -e '\u001b[0m\u001b[32;1m\u001b[1m'
export TIMER_ALL_THEN="${TIMER_ALL_THEN:="$(/usr/bin/date +%s%N)"}"
export AHMYZSH="${AHMYZSH:="/ahmyzsh"}"
export AHMYZSH_CACHE="${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}"
export CACHED_PATH="${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}"
export LANG=fr_CA.utf8
export KDEDIR=/etc/kde
export KDEHOME=/home/luxcium/.kde
export QTDIR=/usr/lib64/qt5
export _XKB_CHARSET=UTF-8
export LC_ALL=fr_CA.UTF-8
export LINGUAS=fr_CA:en_US

#* 1) LOAD PATH

# export PATH_HASH=999
if [ -f "${CACHED_PATH}" ]; then
    # shellcheck source=/home/luxcium/.cache/ahmyzsh/path.env
    . "${CACHED_PATH}"
    TIMER_NOW=$(/usr/bin/date +%s%N)
    TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"
    HEADPART=${TIMER_VALUE:0:-3}
    TIME_TO_PATH="${HEADPART:-0}.${TIMER_VALUE:${#TIMER_VALUE}-3}"
else
    TIME_TO_PATH='INFINITE'
    . "${AHMYZSH}/core/compute-path/path.sh"
    mkdir -p "${AHMYZSH_CACHE}"
    cache_path

    TIMER_NOW=$(/usr/bin/date +%s%N)
    TIMER_VALUE="$(((TIMER_NOW - TIMER_ALL_THEN) / 1000))"
    HEADPART=${TIMER_VALUE:0:-3}
    TIME_TO_PATH="${HEADPART:-0}.${TIMER_VALUE:${#TIMER_VALUE}-3}"
fi
export TIME_TO_PATH

source "${AHMYZSH}/MAIN-FUNCTIONS.sh"
source "${AHMYZSH}/core/compute-path/path.sh"
source "${AHMYZSH}/core/compute-path/conda-initialize.sh"
__compute_extended_path

#* 2) LOAD AHMYZSH  B O O T S T R A P
export MAIN_BOOTSTRAP="${MAIN_BOOTSTRAP="${AHMYZSH}/MAIN.sh"}"
if [ -f "${MAIN_BOOTSTRAP}" ]; then
    # shellcheck source=./MAIN.sh
    . "${MAIN_BOOTSTRAP}"

    SCIENTIA_ES_LUX_PRINCIPIUM

else
    [ -o interactive ] && echo "Error: Path to file: '${MAIN_BOOTSTRAP}' can not be resolved"
    unset -v MAIN_BOOTSTRAP
fi

# # Fig post block. Keep at the bottom of this file.
# [[ "$(ps -p "$PPID" -o comm= | awk '{print $1}')" != "konsole" ]] && [[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash" && echo -n post_block
