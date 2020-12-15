export MINICONDA3="${HOME}/miniconda3"
export DOTNET_ROOT="/usr/lib64/dotnet/"
export PATH_BAK_0="${PATH}"

function compute_base_path_() {
  export PATH="/bin"
  add_to_path_ "/usr/bin"
  add_to_path_ "/usr/local/bin"
  add_to_path_ "/usr/local/cuda-11.1/bin"
  add_to_path_ "/usr/lib64/ccache"
  add_to_path_ "${DOTNET_ROOT}"
  add_to_path_ "${MINICONDA3}/condabin"
  add_to_path_ "${MINICONDA3}/bin"
  add_to_path_ "${HOME}/.rbenv/bin"
  add_to_path_ "${HOME}/.rbenv/shims"
  add_to_path_ "${HOME}/.cargo/bin"
  add_to_path_ "${HOME}/.yarn/bin"
  add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  add_to_path_ "${HOME}/.fnm"
  add_to_path_ "${HOME}/.local/bin"
  add_to_path_ "${HOME}/bin"
  return
}

function compute_extended_path_() {
  call_ rust_up_
  add_to_path_ "/opt/vlang"
  call_ rbenv_
  call_ conda_
  return
}

function append_core_bin_to_path_() {
  append_to_path_ "${AHMYZSH}/core/bin"
  return
}

function append_sbin_to_path_() {
  append_to_path_ "/sbin"
  append_to_path_ "/usr/sbin"
  append_to_path_ "/usr/local/sbin"
  return
}

function dedup_path_() {
  append_core_bin_to_path_
  dedup_pathvar_ PATH
  export PATH
  export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
  return
}

function dedup_spath_() {
  append_sbin_to_path_
  append_core_bin_to_path_
  dedup_pathvar_ PATH
  export PATH
  export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
  return
}

function seting_cache_path_() {
  CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
  if [[ "${CURRENT_PATH_HASH}" != "${PATH_HASH}" ]]; then

    mkdir -p "${AHMYZSH_CACHE}"
    mkdir -p "${CACHED_PATH}-logs"

    CACHED_PATH_LOG="${CACHED_PATH}-logs/$(getstamp_ 8 'path-' 'x' "${PATH}")-$(getepochstamp)-$(getdateyy)-$(date +%A | tr \[a-z\] \[A-Z\])-$(gettimestampz).log"

    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH=\"${PATH}\"" >"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH=\"$(set_path_hash_ ${PATH})\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG=\"${CACHED_PATH_LOG}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_0=\"${PATH}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_0=\"${PATH_HASH}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_0=\"${PATH_HASH_LOG}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_1=\"${PATH_0}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_1=\"${PATH_HASH_0}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_1=\"${PATH_HASH_LOG_0}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_2=\"${PATH_1}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_2=\"${PATH_HASH_1}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_2=\"${PATH_HASH_LOG_1}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_3=\"${PATH_2}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_3=\"${PATH_HASH_2}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_3=\"${PATH_HASH_LOG_2}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_4=\"${PATH_3}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_4=\"${PATH_HASH_3}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_4=\"${PATH_HASH_LOG_3}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_5=\"${PATH_4}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_5=\"${PATH_HASH_4}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_5=\"${PATH_HASH_LOG_4}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_6=\"${PATH_5}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_6=\"${PATH_HASH_5}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_6=\"${PATH_HASH_LOG_5}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_7=\"${PATH_6}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_7=\"${PATH_HASH_6}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_7=\"${PATH_HASH_LOG_6}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_8=\"${PATH_7}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_8=\"${PATH_HASH_7}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_8=\"${PATH_HASH_LOG_7}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_9=\"${PATH_8}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_9=\"${PATH_HASH_8}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_9=\"${PATH_HASH_LOG_8}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_10=\"${PATH_9}\"" >>"${CACHED_PATH}"
    echo "export PATH_HASH_10=\"${PATH_HASH_9}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_10=\"${PATH_HASH_LOG_9}\"" >>"${CACHED_PATH}"

    echo "$(date -R)" >"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "NEW PATH:" >>"${CACHED_PATH_LOG}"
    echo ${PATH} >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "PATH_HASH (from cache):               ${PATH_HASH}" >>"${CACHED_PATH_LOG}"
    echo "CURRENT_PATH_HASH:                    $(set_path_hash_ ${PATH})" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    cat "${CACHED_PATH}" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "$(date -R)" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo " ―― Completum est, quod dixi de lux principium. ―― " >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo -ne ""
    echo -ne "\u001b[s\u001b[3B NEW PATH!!!  LOOK AT LOGS IN ${CACHED_PATH}-logs \a\u001b[u"
    sleep 0.5
    echo -ne "\u001b[s\u001b[2B PATH_HASH (from cache): ${PATH_HASH}               \u001b[u"
    sleep 0.25
    echo -ne "\u001b[s\u001b[1B CURRENT_PATH_HASH:      $(set_path_hash_ ${PATH})  \u001b[u"
  fi
  return
}

function compute_path_() {
  compute_base_path_
  compute_extended_path_
  dedup_path_
  return
}

function compute_spath_() {
  compute_path
  compute_extended_path_
  dedup_spath_
  return
}

function compute_path() {
  compute_path_
  seting_cache_path_
  return
}

function compute_spath() {
  compute_spath_
  seting_cache_path_
  return
}

alias refresh_path='source_ ${CORE_COMPUTE}/path.sh; compute_path_; echo $PATH'
alias refresh_spath='source_ ${CORE_COMPUTE}/path.sh; compute_spath_; echo $PATH'
alias reload_path='source_ ${CORE_COMPUTE}/path.sh; compute_path; echo $PATH'
alias reload_spath='source_ ${CORE_COMPUTE}/path.sh; compute_spath; echo $PATH'

function compute_path_old() {

  # export PATH="/sbin"
  # add_to_path_ "/usr/sbin"
  # add_to_path_ "/usr/local/sbin"

  export PATH_BAK_2="${PATH}"

  export PATH="/bin"
  add_to_path_ "/usr/bin"
  add_to_path_ "/usr/local/bin"

  add_to_path_ "/usr/local/cuda-11.1/bin"

  add_to_path_ "/opt/vlang"

  add_to_path_ "${DOTNET_ROOT}"

  add_to_path_ "${MINICONDA3}/condabin"
  add_to_path_ "${MINICONDA3}/bin"
  call_ conda_

  add_to_path_ "${HOME}/.cargo/bin"
  call_ rust_up_

  add_to_path_ "${HOME}/.rbenv/bin"
  add_to_path_ "${HOME}/.rbenv/shims"
  call_ rbenv_

  add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  add_to_path_ "${HOME}/.yarn/bin"
  add_to_path_ "${HOME}/.fnm"

  add_to_path_ "${HOME}/.local/bin"
  add_to_path_ "${HOME}/bin"

  export LD_LIBRARY_PATH=/usr/local/cuda-11.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

  PATH="${PATH}:${AHMYZSH}/core/bin"
  dedup_pathvar_ PATH
  export PATH

  export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
  export NEW_PATH_HASH=$(set_path_hash_ ${PATH})
  export NEW_PATH_HASH_B=$(set_path_hash_ ${PATH_B})
  if [[ "${NEW_PATH_HASH}" != "${PATH_HASH}" ]]; then
    mkdir -p "${AHMYZSH_CACHE}"
    echo "export PATH=\"$PATH\"; export PATH_HASH=$(set_path_hash_ ${PATH}); export PATH_B=\"$PATH\"" >"${CACHED_PATH}"
    echo "NEW_PATH_HASH:          ${NEW_PATH_HASH}"
    echo ""
    echo ${PATH}
    echo ""
    echo "NEW_PATH_HASH_B:        ${NEW_PATH_HASH_B}"
    echo "PATH_HASH:              ${PATH_HASH}"
    echo "Path Hash: $(set_path_hash_ ${PATH})"
  fi
  # call_ fnm_
  return
}

function compute_path2() {

  # # export PATH="/sbin"
  # # add_to_path_ "/usr/sbin"
  # # add_to_path_ "/usr/local/sbin"

  # export MINICONDA3="${HOME}/miniconda3"
  # export DOTNET_ROOT="/usr/lib64/dotnet/"

  # export PATH_BAK="${PATH}"

  # export PATH="/bin"
  # add_to_path_ "/usr/bin"
  # add_to_path_ "/usr/local/bin"

  # # add_to_path_ "/usr/lib64/qt-3.3/bin"
  # # add_to_path_ "/usr/lib64/ccache"

  # add_to_path_ "/usr/local/cuda-11.1/bin"

  # add_to_path_ "/opt/vlang"

  # add_to_path_ "${DOTNET_ROOT}"

  # add_to_path_ "${MINICONDA3}/condabin"
  # add_to_path_ "${MINICONDA3}/bin"
  # call_ conda_

  # add_to_path_ "${HOME}/.cargo/bin"
  # call_ rust_up_

  # add_to_path_ "${HOME}/.rbenv/bin"
  # add_to_path_ "${HOME}/.rbenv/shims"
  # call_ rbenv_

  # add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  # add_to_path_ "${HOME}/.yarn/bin"
  # add_to_path_ "${HOME}/.fnm"

  # add_to_path_ "${HOME}/.local/bin"
  # add_to_path_ "${HOME}/bin"

  export LD_LIBRARY_PATH=/usr/local/cuda-11.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

  compute_quick_path_
  compute_full_path_
  dedup_pathvar_ PATH
  export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
  export PATH
  # echo "Path Hash: $(set_path_hash_ ${PATH})"
  # call_ fnm_
  # return

  # PATH="${PATH}:${AHMYZSH}/core/bin"

  dedup_pathvar_ PATH
  export PATH

  export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
  export NEW_PATH_HASH=$(set_path_hash_ ${PATH})
  export NEW_PATH_HASH_B=$(set_path_hash_ ${PATH_B})
  if [[ "$(set_path_hash_ ${PATH})" != "${PATH_HASH}" ]]; then
    mkdir -p "${AHMYZSH_CACHE}"
    echo "export PATH=\"$PATH\"; export PATH_HASH=$(set_path_hash_ ${PATH}); export PATH_B=\"$PATH\"" >"${CACHED_PATH}"
    echo "NEW PATH:"
    echo ${PATH}
    echo ""
    echo "PREVIOUS_PATH_HASH:              ${PATH_HASH}"
    echo "CURRENT_PATH_HASH:               $(set_path_hash_ ${PATH})"
    # call_ fnm_
  fi
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
    echo -n "${2-Z}$(sha512hmac <<<${2}${3}${4}${5} | cut -c -${1:-'8'} | tr \[a-z\] \[A-Z\])${3-x}"
  fi

}

function set_path_hash_() {
  export LAST_PATH_HASH="$(getstamp_ 4 'path-' 'x' '$@')"
  echo -n "${LAST_PATH_HASH}"
}

function get_path_hash_() {
  set_path_hash_ "${PATH}"
}

# $(getstamp_ 4 '' '-path-hash' "${PATH}")
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

# if [[ "${NEW_PATH_HASH}" != "${PATH_HASH}" ]]; then
#   mkdir -p "${AHMYZSH_CACHE}"
#   echo "export PATH=\"$PATH\"; export PATH_HASH=$(set_path_hash_ ${PATH}); export PATH_B=\"$PATH\"" >"${CACHED_PATH}"
#   echo "NEW_PATH_HASH:          ${NEW_PATH_HASH}"
#   echo ""
#   echo ${PATH}
#   echo ""
#   echo "NEW_PATH_HASH_B:        ${NEW_PATH_HASH_B}"
#   echo "PATH_HASH:              ${PATH_HASH}"
# fi
