#!/bin/bash
## Drives
export x2TB_SEAGATE="/media/luxcium/2TB-Seagate"
alias x2tb_seagate='cd ${x2TB_SEAGATE}'
export ARCHIVE_LOCAL="/media/luxcium/Archive_Local"
alias archive_local='cd ${ARCHIVE_LOCAL}'
export PROJECTS_PATH="${HOME}/projects"
alias projects_folder='cd ${PROJECTS_PATH}'

# /home/luxcium/projects

# Archived/
# boxed-list/
# configs/
# .directory
# luxcium.io/
# main-POP-N-LOCK-x1DF2/
# maybelist/
# misc/
# monorepo-one/
# parallel-mapping/
# phash-scout/
# questrade-ts/
# trusted/
# vscode-portable~keep~/

export MONOREPO_ONE="${PROJECTS_PATH}/monorepo-one"
export monorepo="${PROJECTS_PATH}/monorepo-one"
alias monorepo_one='cd ${MONOREPO_ONE}'

export RPC_WORKER_POOL="${MONOREPO_ONE}/services/rpc-worker-pool"

export mbkend="${MONOREPO_ONE}/backend/"
export mcommon="${MONOREPO_ONE}/common/"
export mdcs="${MONOREPO_ONE}/docs/"
export mexpl="${MONOREPO_ONE}/examples/"
export mfrtend="${MONOREPO_ONE}/frontend/"
export mlib="${MONOREPO_ONE}/library/"
export mpub="${MONOREPO_ONE}/public/"
export mscrpt="${MONOREPO_ONE}/scripts/"
export msvc="${MONOREPO_ONE}/services/"

function mrshort() {
  echo '~mbkend → backend'
  echo '~mcommon → common'
  echo '~mdcs → docs'
  echo '~mexpl → examples'
  echo '~mfrtend → frontend'
  echo '~mlib → library'
  echo '~mpub → public'
  echo '~mscrpt → scripts'
  echo '~msvc → services'
}
alias mrshorts=mrshort

# ~mbkend;pwd;ls -1AF;pwd
# ~mcommon;pwd;ls -1AF;pwd
# ~mdcs;pwd;ls -1AF;pwd
# ~mexpl;pwd;ls -1AF;pwd
# ~mfrtend;pwd;ls -1AF;pwd
# ~mlib;pwd;ls -1AF;pwd
# ~mpub;pwd;ls -1AF;pwd
# ~mscrpt;pwd;ls -1AF;pwd
# ~msvc;pwd;ls -1AF;pwd

# backend ${MONOREPO_ONE}/backend/
# api # ${MONOREPO_ONE}/backend/api/
# scratch # ${MONOREPO_ONE}/backend/scratch/
# common ${MONOREPO_ONE}/common/
# config # ${MONOREPO_ONE}/common/config/
# deploy # ${MONOREPO_ONE}/common/deploy/
# performance # ${MONOREPO_ONE}/common/performance/
# scripts # ${MONOREPO_ONE}/common/scripts/
# temp # ${MONOREPO_ONE}/common/temp/
# examples ${MONOREPO_ONE}/examples/
# phash-scout # ${MONOREPO_ONE}/examples/phash-scout/
# typescript # ${MONOREPO_ONE}/examples/typescript/
# frontend ${MONOREPO_ONE}/frontend/
# cart # ${MONOREPO_ONE}/frontend/cart/
# federal-container # ${MONOREPO_ONE}/frontend/federal-container/
# home # ${MONOREPO_ONE}/frontend/home/
# home-bak # ${MONOREPO_ONE}/frontend/home-bak/
# home-ejector # ${MONOREPO_ONE}/frontend/home-ejector/
# products # ${MONOREPO_ONE}/frontend/products/
# library ${MONOREPO_ONE}/library/
# bigintString # ${MONOREPO_ONE}/library/bigintString/
# boxed # ${MONOREPO_ONE}/library/boxed-list/
# colors-tools # ${MONOREPO_ONE}/library/colors-tools/
# human-size # ${MONOREPO_ONE}/library/human-size/
# parallel-mapper # ${MONOREPO_ONE}/library/parallel-mapper/
# restraining-zalgo # ${MONOREPO_ONE}/library/restraining-zalgo/
# tools # ${MONOREPO_ONE}/library/tools/
# typescript # ${MONOREPO_ONE}/library/typescript/
# services ${MONOREPO_ONE}/services/
# image-scout # ${MONOREPO_ONE}/services/image-scout/
# phash-compute # ${MONOREPO_ONE}/services/phash-compute/
# questrade-ts # ${MONOREPO_ONE}/services/questrade-ts/
# redis-services # ${MONOREPO_ONE}/services/redis-services/
# scan-directories # ${MONOREPO_ONE}/services/scan-directories/
# service-one # ${MONOREPO_ONE}/services/service-one/
# service-two # ${MONOREPO_ONE}/services/service-two/

# material-colors.yml
# nginx.md
# pomodoro.txt
# LICENSE
# README.md
# animation.js
# h.html
# index.html
# keep-ui-reposive.html
# life-final.html
# life.html
# main.js
# resize-image.1.js
# resize-image.html
# resize-image.js
# worker.js
# install-all.rush.sh*
# install-more.rush.sh*
# install-ts-eslint.sh*
# npm-global-install.sh
# purge-rebuild.rush.sh*
# reset-all.sh
# start_6383.sh*
# start-minikube.sh*
# wd.src.zsh*

# .directory
# .editorconfig
# .env
# .gitattributes
# .gitignore
# .gitmodules
# LICENSE
#  listings.txt
# .nvmrc
# pnpm-workspace.yaml
# .prettierignore
# .prettierrc.cjs
# readme.md
# rush.json

##    alias sphash-convertor='cd "${MONOREPO_ONE}/services/phash-convertor/"'
##    alias sredis-services='cd "${MONOREPO_ONE}/services/redis-services/"'
##    alias ssone='cd "${MONOREPO_ONE}/services/service-one/"'
##    alias sstwo='cd "${MONOREPO_ONE}/services/service-two/"'
##    alias sqtrd='cd "${MONOREPO_ONE}/services/questrade-ts/"'
##    alias sscout='cd "${MONOREPO_ONE}/services/image-scout/"'

##    alias bscratch='cd "${MONOREPO_ONE}/backend/scratch/"'
##    alias bapi='cd "${MONOREPO_ONE}/backend/api/"'

##    alias fproducts='cd "${MONOREPO_ONE}/frontend/products/"'
##    alias fhome='cd "${MONOREPO_ONE}/frontend/home/"'
##    alias fhome2='cd "${MONOREPO_ONE}/frontend/home2/"'

##    alias lbigint='cd "${MONOREPO_ONE}/library/bigintString/"'
##    alias lboxed='cd "${MONOREPO_ONE}/library/boxed-list/"'
##    alias lhs='cd "${MONOREPO_ONE}/library/human-size/"'
##    alias lzalgo='cd "${MONOREPO_ONE}/library/restraining-zalgo/"'
##    alias ltools='cd "${MONOREPO_ONE}/library/tools/"'

export BOXED_LIST="${PROJECTS_PATH}/boxed-list"
alias boxed_list='chdir "${BOXED_LIST}";'
export MAIN_POP_LOCK="${PROJECTS_PATH}/main-POP-N-LOCK-x1DF2"
alias main_pop_lock='chdir "${MAIN_POP_LOCK}";'
export MAYBELIST="${PROJECTS_PATH}/maybelist"
alias maybelist='chdir "${MAYBELIST}";'
export PARALLEL_MAP="${PROJECTS_PATH}/parallel-mapping"
alias parallel_map='chdir "${PARALLEL_MAP}";'
export PHASH_SCOUT="${PROJECTS_PATH}/phash-scout"
alias phash_scout='chdir "${PHASH_SCOUT}";'
export QUESTRADE_TS="${PROJECTS_PATH}/questrade-ts"
alias questrade_ts='chdir "${QUESTRADE_TS}";'
export VSCODE_PORTABLE="${PROJECTS_PATH}/vscode-portable"
alias vscode_portable='chdir "${VSCODE_PORTABLE}";'
export LUXCIUM_IO="${PROJECTS_PATH}/luxcium.io"
alias luxcium_io='chdir "${LUXCIUM_IO}";'

# Archived/
# boxed-list/
# main-POP-N-LOCK-x1DF2/
# maybelist/
# monorepo-one/
# parallel-mapping/
# phash-scout/
# questrade-ts/
# vscode-portable/
# luxcium.io/

# export PROJECT_PATHS=(~/src ~/projects)
## pj my-project:
#  cd to the directory named "my-project" found in one of the $PROJECT_PATHS directories. If there are several directories named the same, the first one to appear in $PROJECT_PATHS has preference.

# pjo my-project
# Open the project directory with your defined $EDITOR. This follows the same directory rules as the pj command above.

# Note: pjo is an alias of pj open.

# /home/luxcium/projects
export AHMYZSH="/projects/ahmyzsh"
alias ahmyzsh='cd ${AHMYZSH}'
export CACHE_FOLDER_="${HOME}/envs/cache/p10k-${USER}"
alias cache_folder='cd ${CACHE_FOLDER_}'

export REDIS_DATA="${WSD_250}/redis/data"
alias redis_data='cd ${REDIS_DATA}'
export REDIS_6382=${WSD_250}/redis/6382/data
alias redis_6382='cd ${REDIS_6382}'

export DEV_FOLDER="${HOME}/dev"
alias cddev='cd ${DEV_FOLDER}'
export LXI_PROJCT="${DEV_FOLDER}/luxcium-projects"
alias lxi_projct='cd ${LXI_PROJCT}'
export TEMP_PROJCT="${DEV_FOLDER}/temporary-projects"
alias temp_projct='cd ${TEMP_PROJCT}'

export LXIO="${LXI_PROJCT}/luxcium.io"
alias lxio='cd ${LXIO}'
export QSTRD="${LXI_PROJCT}/questrade-ts"
alias qstrd='cd ${QSTRD}'

export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
alias path_insdr_code_ext='cd ${PATH_INSDR_CODE_EXT}'
export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
alias path_lxio_prj='cd ${PATH_LXIO_PRJ}'
export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
alias path_lxio='cd ${PATH_LXIO}'
export PATH_OH_MY_ZSH="${ZSH}"
alias path_oh_my_zsh='cd ${PATH_OH_MY_ZSH}'
export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
alias path_iexcloud_api_wrapper='cd ${PATH_IEXCLOUD_API_WRAPPER}'
export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"
alias path_iex_api='cd ${PATH_IEX_API}'

export PATH_LXIO="${LXIO}"
alias path_lxio='cd ${PATH_LXIO}'
export PATH_QUESTRADE="${QSTRD}"
alias path_questrade='cd ${PATH_QUESTRADE}'
export PATH_LXIO_PRJ="${LXI_PROJCT}"
alias path_lxio_prj='cd ${PATH_LXIO_PRJ}'
