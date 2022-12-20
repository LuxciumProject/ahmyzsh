#!/bin/bash

## TODO: Duplicate CONSTANTS with ../functions/getvscodeportable.zsh \
##  should be set a part ...
function get_latest_ms_vscode_sources() {
  (
    VSCODEURL_STABLE_RPM='https://go.microsoft.com/fwlink/?LinkID=760867'
    VSCODEURL_STABLE_TAR_GZ='https://go.microsoft.com/fwlink/?LinkID=620884'
    VSCODEURL_INSIDERS_RPM='https://go.microsoft.com/fwlink/?LinkID=760866'
    VSCODEURL_INSIDERS_TAR_GZ='https://go.microsoft.com/fwlink/?LinkId=723968'

    base_dirname="/etc/vscode-portable/sources"
    new_dirname="${base_dirname}/$(date +%C%y-%m-%d)"
    latest_dirname="${base_dirname}/latest"

    mkdir -p "${base_dirname}"
    mkdir -p "${new_dirname}"
    mkdir -p "${latest_dirname}"

    rm -f --interactive=never ${latest_dirname}/*.*

    cd "${latest_dirname}" || exit

    sudo nice -n 5 ionice -c 3 curl -O -L -J -#S "${VSCODEURL_STABLE_RPM}"
    sudo nice -n 5 ionice -c 3 curl -O -L -J -#S "${VSCODEURL_STABLE_TAR_GZ}"
    sudo nice -n 5 ionice -c 3 curl -O -L -J -#S "${VSCODEURL_INSIDERS_RPM}"
    sudo nice -n 5 ionice -c 3 curl -O -L -J -#S "${VSCODEURL_INSIDERS_TAR_GZ}"

    (
      (
        sudo ln -P ${latest_dirname}/*.* "${new_dirname}"
        sudo rm -f --interactive=never ${base_dirname}/*.*
        sudo ln -P ${latest_dirname}/*.* "${base_dirname}"
      ) &>/dev/null
    )

    (zsh -c vsbackup) &>/dev/null

    sudo chown -R "$(whoami)" "${base_dirname}/.."
  )
}
