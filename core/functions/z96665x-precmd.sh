#!/bin/bash

function precmd() {

  #* Executed before each prompt. Note that pre-command functions are not
  #* re-executed simply because the command line is redrawn, as happens, for
  #* example, when a notification about an exiting job is displayed.

  if [ "$LOAD_ENV_COMPLETED" != 'true' ]; then
    # echo "done"
    export PARENT_ENV_LOADED='true'
    LOAD_ENV_COMPLETED='true'
    set +m
    # MAIN.sh normally exports TIME_TO_INTERACTIVE during interactive boot.
    # Keep a one-time fallback here only for legacy flows that reach precmd first.
    : "${TIME_TO_INTERACTIVE:=$(timer_all)}"
    export TIME_TO_PATH_STR="${TIME_TO_PATH} ms  to  'PATH'"
    export TIME_TO_INTERACTIVE_STR="${TIME_TO_INTERACTIVE} ms  to interactive"
    START_UP_TIME="${BEGIN_HOURGLASS_END_1} READY in ${TIME_TO_INTERACTIVE} ms !${END_FUNCTION}"
    export START_UP_TIME
    source_ "${AHMYZSH}/themes/leaderboard.sh"
  fi
  echo -e "${LRESETALL}"

}
