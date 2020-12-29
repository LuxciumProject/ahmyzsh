function load_zshrc() {
  #   #$ Interactive,login,non-login
  # source_ "${AHMYZSH}/themes/ahmyzhs.sh"

  # call_ activate_instant_prompt
  call_ activate_normal_prompt
  #  promptversions

  if [ "${PARENT_ENV_LOADED}" != 'true' ]; then
    (compute_path &) # >/dev/null
  fi

  call_ load_oh_my_zsh
  call_ load_options_list
  call_ load_options
  call_ load_autocomplete_now

}
