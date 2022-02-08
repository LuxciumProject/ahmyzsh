function activate_instant_prompt() {

  ## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  ## Initialization code that may require console input (password prompts, [y/n]
  ## confirmations, etc.) must go above this block; everything else may go below.
  # if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  # fi
  source_ "${AHMYZSH_CORE}/instant-prompt"

  # # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # # Initialization code that may require console input (password prompts, [y/n]
  # # confirmations, etc.) must go above this block, everything else may go below.
  #   if [[ -r "${XDG_CACHE_HOME:-$HOME/envs/cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #   source "${XDG_CACHE_HOME:-$HOME/envs/cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  # fi
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

  typeset -g ZSH_THEME="../../powerlevel10k/powerlevel10k"

  source_ "${POWERLEVEL10K}/powerlevel10k.zsh-theme"
  call_ load_my_powerlevel10k_now

}
