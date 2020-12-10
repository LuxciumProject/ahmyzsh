function compute_path() {

  # export PATH="/sbin"
  # add_to_path_ "/usr/sbin"
  # add_to_path_ "/usr/local/sbin"

  export MINICONDA3="${HOME}/miniconda3"
  export DOTNET_ROOT="/usr/lib64/dotnet/"

  export PATH_BAK="${PATH}"

  export PATH="/bin"
  add_to_path_ "/usr/bin"
  add_to_path_ "/usr/local/bin"

  # add_to_path_ "/usr/lib64/qt-3.3/bin"
  # add_to_path_ "/usr/lib64/ccache"

  add_to_path_ "/usr/local/cuda-11.1/bin"

  add_to_path_ "/opt/vlang"

  add_to_path_ "${DOTNET_ROOT}"

  add_to_path_ "${MINICONDA3}/bin"
  add_to_path_ "${MINICONDA3}/condabin"
  call_ conda_

  add_to_path_ "${HOME}/.rbenv/bin"
  add_to_path_ "${HOME}/.rbenv/shims"
  call_ rbenv_

  add_to_path_ "${HOME}/.cargo/bin"
  call_ rust_up_

  add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  add_to_path_ "${HOME}/.yarn/bin"
  add_to_path_ "${HOME}/.fnm"

  add_to_path_ "${HOME}/.local/bin"
  add_to_path_ "${HOME}/bin"

  export LD_LIBRARY_PATH=/usr/local/cuda-11.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

  export PATH="${PATH}:${AHMYZSH}/core/bin"

  dedup_pathvar_ PATH
  export NEW_PATH_HASH=$(set_path_hash_ ${PATH})
  echo "NEW_PATH_HASH:          ${NEW_PATH_HASH}"
  echo ""
  echo ${PATH}
  echo ""
  export NEW_PATH_HASH_B=$(set_path_hash_ ${PATH_B})
  echo "NEW_PATH_HASH_B:        ${NEW_PATH_HASH_B}"
  echo "PATH_HASH:              ${PATH_HASH}"

  if [[ "${NEW_PATH_HASH}" != "${PATH_HASH}" ]]; then
    mkdir -p "${AHMYZSH_CACHE}"
    echo "export PATH=\"$PATH\"; export PATH_HASH=$(set_path_hash_ ${PATH}); export PATH_B=\"$PATH\"" >"${CACHED_PATH}"

  fi

  export NO_FNM_PATH=${PATH}
  call_ fnm_
  export FNM_PATH=${PATH}

}

function fnm_() {
  eval "$(fnm env --use-on-cd)"
}

function rbenv_() {
  eval "$(rbenv init -)"

}

function rust_up_() {
  source $HOME/.cargo/env

}

function nvm_() {
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

function conda_() {
  load_ "${AHMYZSH}/core/compute-path/conda-initialize.sh" "conda_init"
}

function getstamp_() {

  #- $1 = length (default 8)
  #- $2 = leading chars (default 'Z')
  #- $3 = trailing chars  (default 'x')
  #- $4 = seed (default current seconds since 1970-01-01 00:00:00 UTC with nanoseconds)

  if [ -z $4 ]; then
    echo -n "${2-Z}$(sha512hmac <<<$(date +%D%s%N) | cut -c -${1:-'8'} | tr \[a-z\] \[A-Z\])${3-x}"
  else
    echo -n "${2-Z}$(sha512hmac <<<${@} | cut -c -${1:-'8'} | tr \[a-z\] \[A-Z\])${3-x}"
  fi

}

function set_path_hash_() {
  export LAST_PATH_HASH="$(getstamp_ 4 '' '-path-hash' $@)"
  echo -n "${LAST_PATH_HASH}"
}

function get_path_hash_() {
  set_path_hash_ "${PATH}"
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

# function dedup_pathvar_() {
#   # #region Deduplicate path variables =========================================¹
#   # https://unix.stackexchange.com/a/149054/431235
#   # © 2014 by https://unix.stackexchange.com/users/1010
#   # © CC BY-SA 3.0 ¹ (User: Ryan C. Thompson ― Aug 7 '14 at 17:35)

#   ## If you want some more structure around it,
#   ## as well as the ability to deduplicate other variables as well,
#   ## try this snippet, which I'm currently using in my own config:

#   _get_var() {
#     eval 'printf "%s\n" "${'"$1"'}"'
#   }

#   _set_var() {
#     eval "$1=\"\$2\""
#   }

#   _dedup_pathvar() {
#     pathvar_name="$1"
#     pathvar_value="$(_get_var "$pathvar_name")"
#     deduped_path="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$pathvar_value")"
#     _set_var "$pathvar_name" "$deduped_path"
#   }

#   ## That code will deduplicate both PATH and MANPATH,
#   ##  and you can easily call dedup_pathvar on other variables that hold
#   ##  colon-separated lists of paths (e.g. PYTHONPATH).

#   # #endregion Deduplicate path variables ======================================¹
#   _dedup_pathvar "${@}"

#   unset -f _dedup_pathvar
#   unset -f _get_var
#   unset -f _set_var

# }
