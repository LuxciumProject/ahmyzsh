#!/usr/bin/env sh

function Load_all_files_d() {
  local SD1="$1"
  if [ -d "${SD1}" ]; then
    for f in "${SD1}/"*.sh; do
      [ -f "${f}" ] && source "${f}"
    done
  else
    [ "${VERBOSA}" -gt 0 ] && echo "Error loading files in '${SD1}'... Directory or path can not be resolved"
  fi
}
