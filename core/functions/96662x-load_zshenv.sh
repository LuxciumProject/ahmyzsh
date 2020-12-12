function load_zshenv() {
  #   #$ Interactive,Script,login,non-login

  ## load_path_now
  call_ load_path

  ## load_functions_now
  # call_ load_functions_definitions
  [ "${VERBOSA}" -gt 0 ] && echo "\n${LD_COLR}${BEGIN_HOURGLASS_END_1}     load_zshenv in $(timer_all)ms!${END_FUNCTION}\n"
}
