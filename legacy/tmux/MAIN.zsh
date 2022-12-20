function source_all_tmux() {
  source_ "${CUSTOM_TMUX}/paths.sh"
  source_ "${TMUX_ALIASES}"
  source_ "${TMUX_LIB_FNCT_MAIN}"
  call_ load_tmux_functions
  call_ loadTmuxAliases
}
