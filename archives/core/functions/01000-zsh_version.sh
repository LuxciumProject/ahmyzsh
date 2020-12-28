function zsh_version() {
  local ZSH_X=$(echo $0)
  local ZSH_V=$($(echo "${ZSH_X/'-'/}" --version))
  export MY_ZSH_VERSION=" ${TERM_ICO}  ${ZSH_V%%' (x86)'*}"
  echo "${normal}$CLRLN$BYL9K_TERM$(tput setaf 2)${MY_ZSH_VERSION} ${BKBK}${normal}"
}
