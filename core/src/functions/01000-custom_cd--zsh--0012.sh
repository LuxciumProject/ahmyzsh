function cd() {
  local catchupPATH=$(/bin/pwd)
  local tentativePath=${@:-${HOME}}
  local effectivePATH="$(builtin cd ${tentativePath} 2>/dev/null && echo -n "${tentativePath}" || echo -n ${catchupPATH})"
  local _MESSAGE=$(
    [[ "${effectivePATH}" = "${tentativePath}" ]] \
      || echo "ERROR: Path not found or not a directory cd back to ${effectivePATH}"
  )

  [[ "${effectivePATH}" = "${HOME}" ]] && [[ "${catchupPATH}" != "${HOME}" ]] \
    && echo "cd to $HOME"

  builtin cd "${effectivePATH}"
  echo ''
  echo -n "$LBOLD $FRD $_MESSAGE $RSET"
  echo ''
  [[ -x $(which lolcat) ]] && (pwd | lolcat) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
  [[ -x $(which colorls) ]] && (colorls -lA --sd -d --gs) || ([[ -x $(which /bin/ls) ]] && /bin/ls --color=auto -hal)
  [[ -x $(which lolcat) ]] && (pwd | lolcat) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
  echo -n "$LBOLD $FRD $_MESSAGE $RSET"
  echo ''

  [[ -z "$_MESSAGE" ]] || return 1

}
