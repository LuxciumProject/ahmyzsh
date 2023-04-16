#!/bin/bash

function precmd() {

  #* Executed before each prompt. Note that pre-command functions are not
  #* re-executed simply because the command line is redrawn, as happens, for
  #* example, when a notification about an exiting job is displayed.

  if [ "$LOAD_ENV_COMPLETED" != 'true' ]; then
    export PARENT_ENV_LOADED='true'
    LOAD_ENV_COMPLETED='true'
    set +m
    export TIME_TO_PATH_STR="${TIME_TO_PATH} ms  to  'PATH'"
    START_UP_TIME="${BEGIN_HOURGLASS_END_1} READY in $(timer_all) ms !${END_FUNCTION}"
    export START_UP_TIME
    source_ "${AHMYZSH}/themes/leaderboard.sh"
  fi
  echo -e "${LRESETALL}"
}
