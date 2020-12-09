function MAIN_SETTINGS() {
  # : ${VERBOSA:=10000}
  : ${VERBOSA:=0000}

  : ${PATH_FILE:="${CACHED_PATH}"}
  : ${EDITOR:=code}
  : ${ENV_LOADED:="false"}
  : ${ZLE_RPROMPT_INDENT:=0}
  : ${SHOW_LOAD_CUTLS:="true"}
  : ${AHMYZSH:="${HOME}/ahmyzsh"}
  : ${ZSH_CUSTOM:="${AHMYZSH}"}
  : ${AHMYZSH_CORE:="${AHMYZSH}/core"}
  : ${AH_LIBRARIES:="${AHMYZSH}/libraries"}
  : ${EDITOR:="nano"}
  : ${PAGER:="/usr/bin/most -s"}
  : ${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}
  : ${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}

  # Set you locale here
  # LANG="fr_CA.UTF-8"
  : ${LANG:="fr_CA.UTF-8"}
  : ${LC_CTYPE:="${LANG}"}
  : ${LC_NUMERIC:="${LANG}"}
  : ${LC_TIME:="fr_FR.UTF-8"}
  : ${LC_COLLATE:="${LANG}"}
  : ${LC_MONETARY:="${LANG}"}
  : ${LC_MESSAGES:="${LANG}"}
  : ${LC_PAPER:="${LANG}"}
  : ${LC_NAME:="${LANG}"}
  : ${LC_ADDRESS:="${LANG}"}
  : ${LC_TELEPHONE:="${LANG}"}
  : ${LC_MEASUREMENT:="${LANG}"}
  : ${LC_IDENTIFICATION:="${LANG}"}

  export VERBOSA
  export PATH_FILE
  export EDITOR
  export ENV_LOADED
  export ZLE_RPROMPT_INDENT
  export SHOW_LOAD_CUTLS
  export AHMYZSH
  export ZSH_CUSTOM
  export AHMYZSH_CORE
  export AH_LIBRARIES
  export EDITOR
  export PAGER
  export AHMYZSH_CACHE
  export CACHED_PATH

  # fall back
  source "${HOME}/.env"
}
