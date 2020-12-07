function fnm_() {
  # (rm -f /tmp/fnm-shell*) &>/dev/null
  # eval "$(fnm env --multi)"
  export PATH=/home/luxcium/.fnm:$PATH
  eval "$(fnm env --use-on-cd)"
  # eval "$(fnm completions --shell=zsh)"

}

function rbenv_() {
  export PATH="$HOME/.rbenv/bin:$PATH"
  # export PATH="$HOME/.rbenv/shims:$PATH"
  eval "$(rbenv init -)"

}

function rust_up_() {

  # Rust is installed now. Great!

  # To get started you need Cargo's bin directory in your PATH
  echo -n $HOME/.cargo/bin

  # To configure your current shell environment variable run:
  source $HOME/.cargo/env

}

function nvm_() {
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

function conda_() {
  load_ "${AHMYZSH}/core/compute-path/conda-initialize.sh" "conda_init"

}
function compute_path() {

  export MINICONDA3="${HOME}/miniconda3"
  export DOTNET_ROOT="/usr/lib64/dotnet/"

  # - ${PATH}
  export PATH_BAK2="${PATH}"
  # echo $PATH_BAK2

  # export PATH="/sbin"
  # add_to_path_ "/usr/sbin"
  # add_to_path_ "/usr/local/sbin"

  export PATH="/bin"
  add_to_path_ "/usr/bin"
  add_to_path_ "/usr/local/bin"

  add_to_path_ "/usr/lib64/qt-3.3/bin"
  add_to_path_ "/usr/lib64/ccache"

  add_to_path_ "${HOME}/bin"

  add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  add_to_path_ "${HOME}/.yarn/bin"

  # add_to_path_ "${AHMYZSH_BIN}"
  # add_to_path_ "${ZSH_BIN}"

  add_to_path_ "${HOME}/.local/bin"
  # add_to_path_ "${HOME}/.fnm"
  call_ fnm_

  add_to_path_ $(rust_up_)

  # add_to_path_ "${HOME}/.rbenv/bin"
  call_ rbenv_

  add_to_path_ "/opt/vlang"

  # add_to_path_ "${MINICONDA3}/bin"
  # add_to_path_ "${MINICONDA3}/condabin"
  call_ conda_

  add_to_path_ "${DOTNET_ROOT}"

  ## Environment Setup
  #+ -----------------------------------------------------------------------------
  # The PATH variable needs to include
  export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}
  # Nsight Compute has moved to /opt/nvidia/nsight-compute/ only in rpm/deb
  # installation method. When using .run installer it is still located under
  # /usr/local/cuda-11.0/.

  # To add this path to the PATH variable:

  export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}
  # In addition, when using the runfile installation method, the LD_LIBRARY_PATH
  # variable needs to contain /usr/local/cuda-11.0/lib64 on a 64-bit system, or
  # /usr/local/cuda-11.0/lib on a 32-bit system

  # To change the environment variables for 64-bit operating systems:

  export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
  export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
  # To change the environment variables for 32-bit operating systems:

  # $ export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib\
  #                          ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
  # Note that the above paths change when using a custom install path with the
  # runfile installation method.

  export PATH="${PATH}:${AHMYZSH}/core/bin"

  # dedup_path
  mkdir -p "${AHMYZSH_CACHE}"
  echo "export PATH=\"$PATH\"" >"${CACHED_PATH}"
  zcompile "${CACHED_PATH}"
}
# if [ "$WITH_ANACONDA" = 'true' ]; then
# fi

# add_to_path_ "/usr/local/opt/ncurses/bin"
# add_to_path_ "${HOME}/perl5/bin"
# add_to_path_ "/usr/local/opt/gettext/bin"
# add_to_path_ "/usr/local/share/zsh/site-functions"
# add_to_path_ "/home/luxcium/.nvm/versions/node/v14.4.0/bin"

## https://security.stackexchange.com/a/117548
# #Gilles 'SO- stop being evil'
# # CC BY-SA 3.0

# PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin (or PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin) is usually the right setting for jobs running as root,

# and PATH=/usr/local/bin:/usr/bin:/bin for jobs not running as root.

## https://security.stackexchange.com/a/117548
