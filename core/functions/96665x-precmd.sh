function precmd() {

  #   #$ Executed before each prompt. Note that precommandfunctions are not
  #   #$ re-executed simply because the command line is redrawn, as happens, for
  #   #$ example, when a notification about an exiting job is displayed.

  if [ "$ENV_LOADED" != 'true' ]; then
    export PARENT_ENV_LOADED='true'
    ENV_LOADED='true'

    # hardcls
    export TIME_TO_PATH_STR="${TIME_TO_PATH} ms  to  'PATH'"
    export START_UP_TIME="${BEGIN_HOURGLASS_END_1} READY in $(timer_all) ms !${END_FUNCTION}"
    source_ "${AHMYZSH}/themes/ahmyzhs.sh"
    promptversions

    # may (or may not) set -m later in core/functions/96665x-precmd.sh
    # set -m

  fi
}
