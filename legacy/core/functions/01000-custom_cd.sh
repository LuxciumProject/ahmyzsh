#!/bin/bash

function cd() {
  catchupPATH="$(/bin/pwd)"
  local tentativePath="${*:-${HOME}}"
  effectivePATH="$( (builtin cd "${tentativePath}" >/dev/null 2>&1 &&
    echo -n "${tentativePath}") ||
    echo -n "${catchupPATH}")"
  _MESSAGE=$(
    [[ "${effectivePATH}" = "${tentativePath}" ]] ||
      echo "ERROR: Path not found or not a directory cd back to ${effectivePATH}"
  )

  [[ "${effectivePATH}" = "${HOME}" ]] && [[ "${catchupPATH}" != "${HOME}" ]] &&
    echo "cd to $HOME"

  echo ''
  builtin cd "${effectivePATH}" || return 2
  echo ''
  echo -n "$LBOLD $FRD $_MESSAGE $RSET"
  ([[ -x $(which lolcat) ]] && (pwd | lolcat)) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
  ([[ -x $(which colorls) ]] && (colorls -lA --sd -d --gs)) || ([[ -x $(which /bin/ls) ]] && /bin/ls --color=auto -hal)
  ([[ -x $(which lolcat) ]] && (pwd | lolcat)) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
  echo -n "$LBOLD $FRD $_MESSAGE $RSET"
  echo ''

  [[ -z "$_MESSAGE" ]] || return 4

}
