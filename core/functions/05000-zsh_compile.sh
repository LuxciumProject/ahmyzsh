#!/bin/bash

function zsh_compile_all_R() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read -r line; do eval "zcompile -R ${line}"; done) 2>/dev/null
}

function zsh_compile_all_M() {
  # (find "${AHMYZSH}/core" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done ) 2>/dev/null
  (find "${AHMYZSH}/" -name '*.*sh' | while read -r line; do eval "zcompile -M  ${line}"; done) 2>/dev/null
  # (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done ) 2>/dev/null
  # (find "${AHMYZSH}/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done ) 2>/dev/null
  # clearzshwordcode
  # (find "${AHMYZSH}/archive/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/archives/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/core/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/MAIN.zsh" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/MAIN_SETTINGS.zsh" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/MAIN-FUNCTIONS.zsh" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/services.sh" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/plugins/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/templates/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/themes/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/ohmyzsh/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)
  # (find "${AHMYZSH}/powerlevel10k/" -name '*.*sh' | while read line; do eval "zcompile -M  ${line}"; done)

}

function zsh_compile_all() {
  (find "${AHMYZSH}/" -name '*.*sh' | while read -r line; do eval "zcompile ${line}"; done) 2>/dev/null

}

# ${AHMYZSH}/ohmyzsh/
# ${AHMYZSH}/powerlevel10k/
