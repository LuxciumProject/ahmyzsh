source ${PATH_ZSH_FLAGS}/flg-AUTO_LOAD_ALL.sh
# source ${PATH_ZSH_FLAGS}/flg-AUTO_LOAD_nv-m.sh
source ${PATH_ZSH_FLAGS}/flg-GNU_COREUTILS.sh

AUTO_LOAD_ALL='true'
# AUTO_LOAD_nv-m='true'
GNU_COREUTILS='true'

if [ -f ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL ]; then
    source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
fi

# if [ -f ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m ]; then
# source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m
# fi

if [ -f ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS ]; then
    source ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
fi

function reload() {
    AUTO_LOAD_ALL_ON
}

function deload() {
    AUTO_LOAD_ALL_OFF
}

function loadon() {
    AUTO_LOAD_ALL_ON
}

function loadoff() {
    AUTO_LOAD_ALL_OFF
}

# function nv-mon() {
#     AUTO_LOAD_nv-m_ON
# }

# function nv-moff() {
#     AUTO_LOAD_nv-m_OFF
# }

function gnuon() {
    GNU_COREUTILS_ON
}

function gnuoff() {
    GNU_COREUTILS_OFF
}
function allon() {
    echo "AUTO_LOAD_ALL='true'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    # echo "AUTO_LOAD_nv-m='true'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m
    # source "${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m"
    # source "${PATH_ZSH_FUNCTIONS}/load_nv-m.zsh"
    echo "GNU_COREUTILS='true'" >${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
    source ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
    zsh

}
function alloff() {
    echo "AUTO_LOAD_ALL='false'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    export COMPUTE_P9K_ON='false'
    # echo "AUTO_LOAD_nv-m='false'" >"${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m"
    # source "${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m"
    # source "${PATH_ZSH_FUNCTIONS}/load_nv-m.zsh"
    echo "GNU_COREUTILS='false'" >${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
    source ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
    # zsh
}
