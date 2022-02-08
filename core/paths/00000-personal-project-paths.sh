## Drives
export SDC1_SEAGATE="/media/sdc1/seagate"
alias sdc1_seagate="cd ${SDC1_SEAGATE}"
export SDB2_ARCHIVE="/media/sdb2/archive"
alias sdb2_archive="cd ${SDB2_ARCHIVE}"
export WSD_250="${HOME}/WSD_250"
alias wsd250="cd ${WSD_250}"

PROJECT_PATHS=( ~/src ~/projects )
## pj my-project:
#  cd to the directory named "my-project" found in one of the $PROJECT_PATHS directories. If there are several directories named the same, the first one to appear in $PROJECT_PATHS has preference.

# pjo my-project
# Open the project directory with your defined $EDITOR. This follows the same directory rules as the pj command above.

# Note: pjo is an alias of pj open.

function localMount(){
    (
        sudo mkdir -p /media/sdc1/seagate
        sudo mount /dev/sdc1 /media/sdc1/seagate
        sudo mkdir -p /media/sdb2/archive
        sudo mount /dev/sdb2 /media/sdb2/archive
    ) 2>/dev/null
    sudo df -H
}


export AHMYZSH="${HOME}/ahmyzsh"
alias ahmyzsh="cd ${AHMYZSH}"
export CACHE_FOLDER_="${HOME}/envs/cache/p10k-${USER}"
alias cache_folder="cd ${CACHE_FOLDER_}"


export REDIS_DATA="${WSD_250}/redis/data"
alias redis_data="cd ${REDIS_DATA}"
export REDIS_6382=${WSD_250}/redis/6382/data
alias redis_6382="cd ${REDIS_6382}"

export DEV_FOLDER="${HOME}/dev"
alias cddev="cd ${DEV_FOLDER}"
export LXI_PROJCT="${DEV_FOLDER}/luxcium-projects"
alias lxi_projct="cd ${LXI_PROJCT}"
export TEMP_PROJCT="${DEV_FOLDER}/temporary-projects"
alias temp_projct="cd ${TEMP_PROJCT}"

export LXIO="${LXI_PROJCT}/luxcium.io"
alias lxio="cd ${LXIO}"
export QSTRD="${LXI_PROJCT}/questrade-ts"
alias qstrd="cd ${QSTRD}"

export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
alias path_insdr_code_ext="cd ${PATH_INSDR_CODE_EXT}"
export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
alias path_lxio_prj="cd ${PATH_LXIO_PRJ}"
export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
alias path_lxio="cd ${PATH_LXIO}"
export PATH_OH_MY_ZSH="${ZSH}"
alias path_oh_my_zsh="cd ${PATH_OH_MY_ZSH}"
export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
alias path_iexcloud_api_wrapper="cd ${PATH_IEXCLOUD_API_WRAPPER}"
export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"
alias path_iex_api="cd ${PATH_IEX_API}"

export PATH_LXIO="${LXIO}"
alias path_lxio="cd ${PATH_LXIO}"
export PATH_QUESTRADE="${QSTRD}"
alias path_questrade="cd ${PATH_QUESTRADE}"
export PATH_LXIO_PRJ="${LXI_PROJCT}"
alias path_lxio_prj="cd ${PATH_LXIO_PRJ}"
