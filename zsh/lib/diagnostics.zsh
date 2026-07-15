# zsh/lib/diagnostics.zsh
# Interactive status, reload, and profiling commands.

ahm_doctor() {
  emulate -L zsh
  local failures=0 command_name module

  print -P -- '%F{cyan}AhMyZSH doctor%f'
  print -- "root:     $AHMYZSH_ROOT"
  print -- "state:    ${AHMYZSH_BOOT_STATE:-not-loaded}"
  print -- "zsh:      $ZSH_VERSION"
  print -- "platform: ${OSTYPE:-unknown}"
  print -- "modules:  ${AHMYZSH_LOADED_MODULES[*]:-(none)}"

  if (( ${#AHMYZSH_SKIPPED_MODULES} )); then
    print -- "skipped:  ${AHMYZSH_SKIPPED_MODULES[*]}"
  fi
  if (( ${#AHMYZSH_FAILED_MODULES} )); then
    print -- "failed:   ${AHMYZSH_FAILED_MODULES[*]}"
    failures=1
  fi

  for module in ${(k)AHMYZSH_MODULE_NOTES}; do
    print -- "note:     $module — $AHMYZSH_MODULE_NOTES[$module]"
  done

  for command_name in zsh git; do
    if (( ! $+commands[$command_name] )); then
      print -P -- "%F{red}missing:%f  $command_name"
      failures=1
    fi
  done

  if [[ $AHMYZSH_USE_OMZ == 1 && ! -r $AHMYZSH_OMZ_DIR/oh-my-zsh.sh ]]; then
    print -P -- '%F{red}missing:%f  configured Oh My Zsh integration'
    failures=1
  fi
  if [[ $AHMYZSH_PROMPT == powerlevel10k &&
        ! -r $AHMYZSH_P10K_DIR/powerlevel10k.zsh-theme ]]; then
    print -P -- '%F{red}missing:%f  configured Powerlevel10k prompt'
    failures=1
  fi

  if [[ $AHMYZSH_PROMPT == powerlevel10k &&
        ${AHMYZSH_LAB:-0} != 1 &&
        $+commands[fc-match] -eq 1 ]]; then
    local font_family=$(fc-match -f '%{family}' 'MesloLGS NF' 2>/dev/null)
    if [[ $font_family != *'MesloLGS NF'* ]]; then
      print -P -- '%F{yellow}font:%f     MesloLGS NF is not available to fontconfig'
      failures=1
    fi
  fi

  if [[ ${AHMYZSH_LAB:-0} == 1 ]]; then
    print -- 'lab:      disposable container; terminal font is host-rendered'
  fi

  if [[ -n ${MAIN_INIT:-} || $+functions[SCIENTIA_ES_LUX_PRINCIPIUM] -eq 1 ]]; then
    print -P -- '%F{red}legacy:%f   the historical boot spine is also loaded'
    failures=1
  fi

  if [[ -o interactive ]]; then
    print -- "boot:     ${AHMYZSH_BOOT_TOTAL_MS:-0} ms"
    print -- "cache:    $AHMYZSH_CACHE_DIR"
  fi

  (( failures == 0 ))
}

ahm_reload() {
  emulate -L zsh
  print -P -- '%F{yellow}Starting a fresh login shell; existing definitions are not layered twice.%f'
  exec zsh -l
}

ahm_profile() {
  emulate -L zsh
  local root_q=${(q)AHMYZSH_ROOT}
  AHMYZSH_PROFILE=1 AHMYZSH_NO_INSTANT_PROMPT=1 AHMYZSH_PROMPT=basic \
    zsh -dfic "source $root_q/zsh/env.zsh; source $root_q/zsh/boot.zsh; exit"
}
