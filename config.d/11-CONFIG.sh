function firtstage() {
  # CACHED_PATH

  export AHMYZSH_CACHE="${HOME}/.cache/ahmyzsh"
  export PATH_ENV_CACHE="${AHMYZSH_CACHE}/path.env"
  # : ${VERBOSA=100}
  : ${VERBOSA:=10}
  : ${EDITOR:=code}
  : ${ENV_LOADED:="false"}
  : ${ZLE_RPROMPT_INDENT:=0}
  : ${SHOW_LOAD_CUTLS:="true"}

  : ${AHMYZSH:="${HOME}/ahmyzsh"}
  export AHMYZSH

  : ${PATH_FILE:="${PATH_ENV_CACHE}"}
  export PATH_FILE

  # Set you locale here
  # LANG="fr_CA.UTF-8"

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

  # fall back
  source "${HOME}/.env"

}

function zsh_compile_all_R() {
  (find "${AHMYZSH}/" -name '*.*sh' | foreachline 'zcompile -R') 2>/dev/null
}
function zsh_compile_all_M() {
  (find "${AHMYZSH}/" -name '*.*sh' | foreachline 'zcompile -M') 2>/dev/null
}
function zsh_compile_all() {
  (find "${AHMYZSH}/" -name '*.*sh' | foreachline 'zcompile') 2>/dev/null

}
