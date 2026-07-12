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

  [[ -r $AHMYZSH_ROOT/ohmyzsh/oh-my-zsh.sh ]] ||
    print -P -- '%F{yellow}optional:%f vendored Oh My Zsh is unavailable'
  [[ -r $AHMYZSH_ROOT/powerlevel10k/powerlevel10k.zsh-theme ]] ||
    print -P -- '%F{yellow}optional:%f vendored Powerlevel10k is unavailable'

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
