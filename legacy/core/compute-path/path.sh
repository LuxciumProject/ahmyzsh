#!/bin/bash
CUDA_VERSION="cuda-11.8"
export _CONDA3="${HOME}/minerva3"
export DOTNET_ROOT="/usr/lib64/dotnet/"
export DOTNET_CLI_TELEMETRY_OPTOUT=true
export PATH_BAK_0="${PATH}"
export LD_LIBRARY_PATH=/usr/local/${CUDA_VERSION}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export PNPM_HOME="${HOME}/.local/share/pnpm"
export NVM_DIR="$HOME/.nvm"
# export PATH=/usr/local/cuda-11.8/bin${PATH:+:${PATH}}
# function nvm_() {
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
#   [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
# }
# alias usenvm
function usenvm() {

  # /home/luxcium/.fnm/node-versions/v18.12.0/installation/lib
  # ├── corepack@0.14.2
  # => If you wish to uninstall them at a later point (or re-install them under your
  # => `nvm` Nodes), you can remove them from the system Node as follows:

  #      $ nvm use system
  # npm  install -g corepack

  # => Close and reopen your terminal to start using nvm or run the following to use it now:

  export NVM_DIR="$HOME/.nvm"
  # shellcheck source=/dev/null
  # This loads nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

  # shellcheck source=/dev/null
  # This loads nvm bash_completion
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

function __append_sbin_to_path() {
  export PATH="/usr/local/sbin"
  append_to_path_ "/usr/local/bin"
  append_to_path_ "/usr/sbin"
  append_to_path_ "/usr/bin"
  append_to_path_ "/sbin"
  append_to_path_ "/bin"
  append_to_path_ "${AHMYZSH}/core/bin"
  return
}

function __append_bin_to_path() {
  export PATH="/usr/local/bin"
  append_to_path_ "/usr/bin"
  append_to_path_ "/app/bin"
  append_to_path_ "/bin"
  append_to_path_ "${AHMYZSH}/core/bin"
  append_to_path_ "/snap/bin"
  return
}

function __compute_extended_path() {
  add_to_path_ "/usr/lib64/ccache"
  add_to_path_ "/usr/lib64/qt5/bin"
  add_to_path_ "/usr/local/go/bin"
  add_to_path_ "$(go env GOPATH)/bin"
  add_to_path_ "/usr/local/${CUDA_VERSION}/bin"
  add_to_path_ "/opt/nvidia/nsight-compute"
  add_to_path_ "/app/bin"
  add_to_path_ "${HOME}/.yarn/bin"
  add_to_path_ "${HOME}/spx:$PATH"
  call_ rust_up_
  add_to_path_ "${HOME}/.rbenv/shims"
  add_to_path_ "${HOME}/.rbenv/bin"
  call_ rbenv_
  add_to_path_ "${HOME}/.nvm"
  # call_ __NVM
  call_ conda_
  add_to_path_ "$PNPM_HOME"
  add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  add_to_path_ "${HOME}/.local/bin"
  add_to_path_ "${HOME}/.fnm"
  add_to_path_ "${HOME}/bin"

  return
}

function __dedup_path() {
  dedup_pathvar_ PATH
  export PATH
  return
}

function set_path() {
  # __compute_base_path
  __append_bin_to_path
  __compute_extended_path
  add_to_path_ '/home/luxcium/.local/share/pnpm/'
  __dedup_path
  return
}
# PATH=$PATH:$(go env GOPATH)/bin
function set_sbin_path() {
  # __compute_base_path
  __append_sbin_to_path
  __compute_extended_path
  __dedup_path
  return
}

alias add_sbin=set_sbin_path
alias sbin_path=set_sbin_path
alias set_sbin=set_sbin_path

# add_to_path_ "/usr/local/opt/ncurses/bin"
# add_to_path_ "${HOME}/perl5/bin"
# add_to_path_ "/usr/local/opt/gettext/bin"
# add_to_path_ "/usr/local/share/zsh/site-functions"
# add_to_path_ "/home/luxcium/.nvm/versions/node/v14.4.0/bin"
