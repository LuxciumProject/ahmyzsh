function firtstage() {
  : ${AHMYZSH:="${HOME}/ahmyzsh"}
  export AHMYZSH

  : ${PATH_FILE:="${HOME}/.cache/path.env"}
  export PATH_FILE

  # Set you locale here
  LANG="fr_CA.UTF-8"
  : ${LANG:="fr_CA.UTF-8"}
  export LANG

  # fall back
  source "${HOME}/.env"

  : ${VERBOSA:=0}
  : ${EDITOR:=code}
  : ${ENV_LOADED:="false"}
  : ${ZLE_RPROMPT_INDENT:=0}
  : ${SHOW_LOAD_CUTLS:="true"}

}
