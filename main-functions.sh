#† Scientia es lux principium

#+ AHMYZSH custom options
#+ =============================================================================≈
#? MIT LICENSE ― *NOT* fit for any particular use or purpose ― PROVIDED "AS IS"
#? =============================================================================≈
#? @author Benjamin Vincent Kasapoglu (LUXCIUM)
#? @copyright (c) 2020 - LUXCIUM (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#? @license MIT
#? =============================================================================≈
#† Scientia es lux principium is a Tread Mark of Benjamin Vincent Kasapoglu
#† (c) & tm Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
#+ =============================================================================≈

function activate_normal_prompt() {

  typeset -g ZSH_THEME="../../powerlevel10k/powerlevel10k"
  source_ "${POWERLEVEL10K}/powerlevel10k.zsh-theme"

}

function activate_instant_prompt() {
  # # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # # Initialization code that may require console input (password prompts, [y/n]
  # # confirmations, etc.) must go above this block, everything else may go below.

  typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
  typeset -g ZSH_THEME="../../powerlevel10k/powerlevel10k"

  source_ "${CUSTOM_ZSH}/sources/instant-prompt"
  source_ "${POWERLEVEL10K}/powerlevel10k.zsh-theme"

}

function load_my_powerlevel10k_now() {
  ## load_my_pl10K_layout_now
  source_ "${CUSTOM_ZSH}/sources/pl10K-Layout.zsh"
  load_my_powerlevel10k
  pl10k_prompt_on

}

function compute_pl10K_now() {
  call_ "compute_pl10k"
}

function load_path() {
  ## source_ path.zsh
  source_ "${ZSH_COMPUTE}/path.zsh"
  ## load_path
  if [ -f "${CACHED_PATH}" ]; then
    source_ "${CACHED_PATH}"
    (compute_path &) >/dev/null
  else
    compute_path
  fi
}

function re_load_path() {
  source_ "${ZSH_COMPUTE}/path.zsh"
  compute_path
}

alias reloadpath="re_load_path"

function load_zlogout() {
  ##$  Interactive,login

  ( 
    (builtin cd $AHMYZSH &&
      find $(pwd) | grep .zwc | foreachline rm -f &&
      zsh_compile_all_R) &
  )                                           # 1.2385s
  ( (_p9k_dump_instant_prompt 2>/dev/null) &) # 0.0310s
  ( (compute_path 2>/dev/null) &)             # 0.4123s
  say_bye
  exit
}

function load_autocomplete_now() {
  load_ "${ZSH_COMPLETION}/autocomplete.sh" "load_autocomplete"
}

function load_aliases() {
  call_ Load_all_files_d "${AHMYZSH_CORE}/aliases"
}

function load_oh_my_zsh() {

  # Uncomment the following line to disable bi-weekly auto-update checks.
  DISABLE_AUTO_UPDATE="true"

  # Uncomment the following line to disable auto-setting terminal title.
  DISABLE_AUTO_TITLE="true"

  # Uncomment the following line to enable command auto-correction.
  # ENABLE_CORRECTION="true"

  # Uncomment the following line to display red dots whilst waiting for completion.
  COMPLETION_WAITING_DOTS="true"

  # Uncomment the following line if you want to disable marking untracked files
  # under VCS as dirty. This makes repository status check for large repositories
  # much, much faster.
  DISABLE_UNTRACKED_FILES_DIRTY="true"
  plugins=(
    # zsh-autosuggestions
    # zsh-syntax-highlighting
    zsh-better-npm-completion
    yarn-autocompletions
    zsh-completions
    git
    redis-cli
  )
  # alias-finder
  # colorize
  # dnf
  # emoji
  # gem
  # git
  # git-auto-fetch
  # git-hubflow
  # git-prompt
  # github
  # man
  # node
  # npm
  # rbenv
  # redis-cli
  # ruby
  # safe-paste
  # systemadmin
  # systemd
  # vscode
  # yarn
  source $ZSH/oh-my-zsh.sh
  unalias ll
  # echo -n "${normal}$CLRLN$LDLCLR$(tput setaf 2) \uf013 ${bold} DONE! load_oh_my_zsh()${normal}"
}

function load_zshenv() {
  #   #$ Interactive,Script,login,non-login

  ## load_path_now
  call_ load_path

  ## load_functions_now
  source_ "${ZSH_SOURCES}/functions.zsh"
  call_ load_functions_definitions

  [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_HOURGLASS_END_1} load_zshenv in $(timer_all) ms !${END_FUNCTION}"
}

function load_zshrc() {
  #   #$ Interactive,login,non-login

  call_ load_my_powerlevel10k_now
  # call_ activate_instant_prompt
  call_ activate_normal_prompt

  if [ "${PARENT_ENV_LOADED}" != 'true' ]; then
    (compute_path &) # >/dev/null
  fi

  source_ "${CUSTOM_ZSH}/sources/options-list.zsh"
  call_ load_oh_my_zsh
  call_ load_options_list
  call_ load_options
  call_ load_autocomplete_now

  # autoload -U compinit && compinit

}
