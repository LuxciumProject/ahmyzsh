# zsh/lib/loader.zsh
# Explicit, resilient module loader. The manifest order is the dependency order.

ahm_module_note() {
  emulate -L zsh
  AHMYZSH_MODULE_NOTES[$1]=$2
}

ahm_load_module() {
  local module=$1
  local module_file=$AHMYZSH_ROOT/zsh/modules/$module.zsh
  local -F started_at=${EPOCHREALTIME:-0}

  if [[ ! -r $module_file ]]; then
    AHMYZSH_SKIPPED_MODULES+=($module)
    AHMYZSH_MODULE_NOTES[$module]='module file is absent'
    return 0
  fi

  source $module_file
  local module_status=$?
  if (( module_status == 0 )); then
    AHMYZSH_LOADED_MODULES+=($module)
  else
    AHMYZSH_FAILED_MODULES+=($module)
    AHMYZSH_MODULE_NOTES[$module]="module returned status $module_status"
  fi

  if [[ ${AHMYZSH_PROFILE:-0} == 1 ]]; then
    local -F elapsed_ms=$(( (${EPOCHREALTIME:-0} - started_at) * 1000.0 ))
    AHMYZSH_TIMING_ORDER+=(module:$module)
    AHMYZSH_TIMINGS_MS[module:$module]=$elapsed_ms
    AHMYZSH_TIMER_LAST_AT=${EPOCHREALTIME:-0}
  fi
  return 0
}

ahm_load_modules() {
  local module
  for module in $@; do
    ahm_load_module $module
  done
}
