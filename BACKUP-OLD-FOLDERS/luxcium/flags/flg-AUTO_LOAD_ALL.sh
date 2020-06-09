## AUTO_LOAD_ALL

function AUTO_LOAD_ALL_ON() {
    echo "AUTO_LOAD_ALL='true'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    zsh
}

function AUTO_LOAD_ALL_OFF() {
    echo "AUTO_LOAD_ALL='false'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    export COMPUTE_P9K_ON='false'
    zsh
}
