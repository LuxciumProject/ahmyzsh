#!/bin/bash

function activate_prompt() {
  typeset -g ZSH_THEME="../../powerlevel10k/powerlevel10k"
  source_ "${POWERLEVEL10K}/powerlevel10k.zsh-theme"
  call_ load_my_powerlevel10k_now

}
