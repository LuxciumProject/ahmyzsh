function firtstage() {
  : ${AHMYZSH:="${HOME}/ahmyzsh"}
  export AHMYZSH

  : ${PATH_FILE:="${HOME}/.cache/path.env"}
  export PATH_FILE

  # Set you locale here
  LANG="fr_CA.UTF-8"

  : ${LANG:="fr_CA.UTF-8"}
  : ${LC_CTYPE:="fr_CA.UTF-8"}
  : ${LC_NUMERIC:="fr_CA.UTF-8"}
  : ${LC_TIME:="fr_FR.UTF-8"}
  : ${LC_COLLATE:="fr_CA.UTF-8"}
  : ${LC_MONETARY:="fr_CA.UTF-8"}
  : ${LC_MESSAGES:="fr_CA.UTF-8"}
  : ${LC_PAPER:="fr_CA.UTF-8"}
  : ${LC_NAME:="fr_CA.UTF-8"}
  : ${LC_ADDRESS:="fr_CA.UTF-8"}
  : ${LC_TELEPHONE:="fr_CA.UTF-8"}
  : ${LC_MEASUREMENT:="fr_CA.UTF-8"}
  : ${LC_IDENTIFICATION:="fr_CA.UTF-8"}

  export LANG
  export LC_CTYPE
  export LC_NUMERIC
  export LC_TIME
  export LC_COLLATE
  export LC_MONETARY
  export LC_MESSAGES
  export LC_PAPER
  export LC_NAME
  export LC_ADDRESS
  export LC_TELEPHONE
  export LC_MEASUREMENT
  export LC_IDENTIFICATION

  # fall back
  source "${HOME}/.env"

  : ${VERBOSA:=0}
  : ${EDITOR:=code}
  : ${ENV_LOADED:="false"}
  : ${ZLE_RPROMPT_INDENT:=0}
  : ${SHOW_LOAD_CUTLS:="true"}

}

function compile_all() {
  (find "${AHMYZSH}/" -name '*.*sh' | foreachline zcompile) 2>/dev/null
}
# compile_all
