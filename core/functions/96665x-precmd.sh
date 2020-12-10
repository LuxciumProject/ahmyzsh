function precmd() {

  #   #$ Executed before each prompt. Note that precommandfunctions are not
  #   #$ re-executed simply because the command line is redrawn, as happens, for
  #   #$ example, when a notification about an exiting job is displayed.

  if [ "$ENV_LOADED" != 'true' ]; then
    export PARENT_ENV_LOADED='true'
    ENV_LOADED='true'

    right_prompt_off
    # hardcls
    export TIME_TO_PATH_STR="${TIME_TO_PATH} ms  to  'PATH'"
    source_ "${AHMYZSH}/themes/ahmyzhs.sh"
    echo "${BEGIN_HOURGLASS_END_1} READY in $(timer_all) ms !${END_FUNCTION}"
    promptversions
    # compute_path
  fi
  # exit
}
