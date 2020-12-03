function precmd() {

  #   #$ Executed before each prompt. Note that precommandfunctions are not
  #   #$ re-executed simply because the command line is redrawn, as happens, for
  #   #$ example, when a notification about an exiting job is displayed.

  if [ "$ENV_LOADED" != 'true' ]; then
    export PARENT_ENV_LOADED='true'
    ENV_LOADED='true'

    right_prompt_off
    # hardcls
    source_ "${AHMYZSH}/themes/ahmyzhs.sh"
    echo "${BEGIN_HOURGLASS_END_1} READY in $(timer_all) ms !${END_FUNCTION}"
    call_ prompt_versions
  fi
  # exit
}
