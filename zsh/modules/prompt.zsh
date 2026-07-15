# zsh/modules/prompt.zsh
# Colorful prompt with a native fallback and optional vendored Powerlevel10k.

ahm_basic_prompt() {
  typeset -g PROMPT='%F{cyan}%n%f@%F{blue}%m%f %F{green}%~%f %(?..%F{red}[%?]%f )%# '
  typeset -g RPROMPT='%F{yellow}%D{%H:%M}%f'
}

if [[ $AHMYZSH_PROMPT == powerlevel10k && -t 0 && -t 1 &&
      -r $AHMYZSH_P10K_DIR/powerlevel10k.zsh-theme ]]; then
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
  source $AHMYZSH_P10K_DIR/powerlevel10k.zsh-theme
  source $AHMYZSH_ROOT/zsh/config/p10k.zsh
else
  ahm_basic_prompt
  [[ $AHMYZSH_PROMPT == powerlevel10k ]] &&
    ahm_module_note prompt 'using native prompt because Powerlevel10k or a TTY is unavailable'
fi

return 0
