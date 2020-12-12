function zsh_compile_all_R() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -R ${line}"; done) 2>/dev/null
}

function zsh_compile_all_M() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done) 2>/dev/null
}

function zsh_compile_all() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile ${line}"; done) 2>/dev/null

}
