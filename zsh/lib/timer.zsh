# zsh/lib/timer.zsh
# High-resolution stage timing with a small always-on start/end cost.

typeset -gF AHMYZSH_TIMER_LAST_AT=$AHMYZSH_BOOT_STARTED_AT

ahm_timer_mark() {
  emulate -L zsh
  [[ ${AHMYZSH_PROFILE:-0} == 1 ]] || return 0
  local label=$1
  local -F now=${EPOCHREALTIME:-0}
  local -F elapsed_ms=$(( (now - AHMYZSH_TIMER_LAST_AT) * 1000.0 ))
  AHMYZSH_TIMING_ORDER+=($label)
  AHMYZSH_TIMINGS_MS[$label]=$elapsed_ms
  AHMYZSH_TIMER_LAST_AT=$now
}

ahm_timer_finish() {
  emulate -L zsh
  AHMYZSH_BOOT_FINISHED_AT=${EPOCHREALTIME:-0}
  AHMYZSH_BOOT_TOTAL_MS=$(( (AHMYZSH_BOOT_FINISHED_AT - AHMYZSH_BOOT_STARTED_AT) * 1000.0 ))
}

ahm_timer_report() {
  emulate -L zsh
  local label
  print -P -- '%F{cyan}AhMyZSH boot profile%f'
  for label in ${AHMYZSH_TIMING_ORDER[@]}; do
    printf '  %-22s %8.3f ms\n' $label ${AHMYZSH_TIMINGS_MS[$label]}
  done
  printf '  %-22s %8.3f ms\n' total $AHMYZSH_BOOT_TOTAL_MS
}
