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
    [[ "${PRINT_VERSIONS}" = 1 ]] && promptversions
    set +m
  fi
}

# [[ "${BOOTTIME}" != 1 ]] || echo "" >>"${BOOTTIME_LOGFILE}"
# [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} Fully ready in                           $(timer_all) ms" >>"${BOOTTIME_LOGFILE}"
# [[ 1 = "${BOOTTIME}" && 1 = "${PRINT_BOOTTIME}" ]] && cat "${BOOTTIME_LOGFILE}"
# [[ "${PRINT_VERSIONS}" = 2 ]] && echo ""
# [[ "${PRINT_VERSIONS}" = 2 ]] && promptversions
# [[ 1 = "${BOOTTIME}" && 1 = "${PRINT_BOOTTIME}" ]] && echo "${BEGIN_BOOTTIME} Done!                                    $(timer_all) ms" #>>"${BOOTTIME_LOGFILE}"
# echo -e '\a\u001b[37m'
