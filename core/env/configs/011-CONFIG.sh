function firtstage() {
    # CACHED_PATH

    export AHMYZSH_CACHE="${HOME}/.cache/ahmyzsh"
    export CACHED_PATH="${AHMYZSH_CACHE}/path.env"
    # : ${VERBOSA=100}
    : ${VERBOSA:=10}
    : ${EDITOR:=code}
    : ${ENV_LOADED:="false"}
    : ${ZLE_RPROMPT_INDENT:=0}
    : ${SHOW_LOAD_CUTLS:="true"}

    : ${AHMYZSH:="${HOME}/ahmyzsh"}
    export AHMYZSH

    : ${PATH_FILE:="${CACHED_PATH}"}
    export PATH_FILE

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

    # fall back
    source "${HOME}/.env"

}

function zsh_compile_all_R() {
    (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -R ${line}"; done) 2>/dev/null
}
function zsh_compile_all_M() {
    (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -M ${line}"; done) 2>/dev/null
}
function zsh_compile_all() {
    (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile ${line}"; done) 2>/dev/null

}
