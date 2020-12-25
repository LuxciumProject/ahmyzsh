export MINICONDA3="${HOME}/miniconda3"
export DOTNET_ROOT="/usr/lib64/dotnet/"
export PATH_BAK_0="${PATH}"

# function __compute_base_path() {
#   # append_to_path_
#   export PATH="/usr/bin"

#   return
# }

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
  append_to_path_ "/bin"
  append_to_path_ "${AHMYZSH}/core/bin"
  return
}

function __compute_extended_path() {
  add_to_path_ "/opt/vlang"
  add_to_path_ "/usr/local/go/bin"
  add_to_path_ "/usr/lib64/ccache"
  add_to_path_ "/usr/local/cuda-11.1/bin"
  add_to_path_ "${HOME}/.yarn/bin"

  add_to_path_ "${HOME}/.cargo/bin"
  call_ rust_up_
  add_to_path_ "${HOME}/.rbenv/shims"
  add_to_path_ "${HOME}/.rbenv/bin"
  call_ rbenv_
  add_to_path_ "${MINICONDA3}/bin"
  add_to_path_ "${MINICONDA3}/condabin"
  call_ conda_
  add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  add_to_path_ "${HOME}/.local/bin"
  add_to_path_ "${HOME}/.fnm"
  add_to_path_ "${HOME}/bin"
  add_to_path_ "${HOME}/azure/canada-central/functions"
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
  __dedup_path
  return
}

function set_spath() {
  # __compute_base_path
  __append_sbin_to_path
  __compute_extended_path
  __dedup_path
  return
}

function cached_path_log() {
  export CACHED_PATH_LOG="${CACHED_PATH}-logs/$(getstamp_ 8 'path-' 'x' "${PATH}")-$(getepochstamp)-$(getdateyy)-$(date +%A | tr \[a-z\] \[A-Z\])-$(gettimestampz).log"
  echo -n "${CACHED_PATH_LOG}"
  return
}

function set_path_hash_() {
  export CURRENT_PATH_HASH=$(getstamp_ 4 'path-' 'x' "$@")
  echo -n "${CURRENT_PATH_HASH}"
  # export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
}

function echo_path_() {
  echo ""
  (echo "${PATH}" | tr \[:\] "\n" | while read line; do echo "# ${line}"; done)
  echo ""
}

function echo_path() {
  echo ""
  echo "${PATH}" | tr \[:\] "\n"
  echo ""

}

function echo_cached_path() {
  [ -f "${CACHED_PATH}" ] && cat "${CACHED_PATH}"
}

echo_path_hash() {
  echo "CURRENT_PATH_HASH:                    $(set_path_hash_ ${PATH})"
  echo "PATH_HASH (from cache):               ${PATH_HASH}"
  echo "${CURRENT_PATH_HASH}"
  echo "${PATH_HASH}"
}
function seting_cache_path_() {
  export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
  if [[ "${CURRENT_PATH_HASH}" != "${PATH_HASH}" ]]; then

    mkdir -p "${AHMYZSH_CACHE}"
    mkdir -p "${CACHED_PATH}-logs"

    export CACHED_PATH_LOG="$(cached_path_log)"

    echo "#-    $(date -R)" >"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "${PATH}" | tr \[:\] "\n" | while read line; do echo "# ${line}"; done >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH=\"$(set_path_hash_ ${PATH})\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH=\"${PATH}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG=\"${CACHED_PATH_LOG}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_0=\"${PATH_HASH}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_0=\"${PATH}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_0=\"${PATH_HASH_LOG}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_1=\"${PATH_HASH_0}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_1=\"${PATH_0}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_1=\"${PATH_HASH_LOG_0}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_2=\"${PATH_HASH_1}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_2=\"${PATH_1}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_2=\"${PATH_HASH_LOG_1}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_3=\"${PATH_HASH_2}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_3=\"${PATH_2}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_3=\"${PATH_HASH_LOG_2}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_4=\"${PATH_HASH_3}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_4=\"${PATH_3}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_4=\"${PATH_HASH_LOG_3}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_5=\"${PATH_HASH_4}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_5=\"${PATH_4}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_5=\"${PATH_HASH_LOG_4}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_6=\"${PATH_HASH_5}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_6=\"${PATH_5}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_6=\"${PATH_HASH_LOG_5}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_7=\"${PATH_HASH_6}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_7=\"${PATH_6}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_7=\"${PATH_HASH_LOG_6}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_8=\"${PATH_HASH_7}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_8=\"${PATH_7}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_8=\"${PATH_HASH_LOG_7}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_9=\"${PATH_HASH_8}\"" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "export PATH_9=\"${PATH_8}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_9=\"${PATH_HASH_LOG_8}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# HASH:" >>"${CACHED_PATH}"
    echo "export PATH_10=\"${PATH_9}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# PATH:" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "export PATH_HASH_10=\"${PATH_HASH_9}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "# LOG FILE:" >>"${CACHED_PATH}"
    echo "export PATH_HASH_LOG_10=\"${PATH_HASH_LOG_9}\"" >>"${CACHED_PATH}"
    echo "" >>"${CACHED_PATH}"
    echo "#-    $(date -R)" >>"${CACHED_PATH}"

    echo "    $(date -R)" >"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "CURRENT_PATH_HASH:                    $(set_path_hash_ ${PATH})" >>"${CACHED_PATH_LOG}"
    echo "PATH_HASH (from cache):               ${PATH_HASH}" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "NEW PATH:" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo ${PATH} >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    [ -f "${CACHED_PATH}" ] && echo "$(cat ${CACHED_PATH})" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "" >>"${CACHED_PATH_LOG}"
    echo "    $(date -R)" >>"${CACHED_PATH_LOG}"
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

function compute_path() {
  set_path
  seting_cache_path_
  return
}

function compute_spath() {
  set_spath
  seting_cache_path_
  return
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

SP80="                                                                                "
alias refresh_path='source_ ${CORE_COMPUTE}/path.sh; set_path; echo -en "${SP80}"; echo_path'
alias refresh_spath='source_ ${CORE_COMPUTE}/path.sh; set_spath; echo -en "${SP80}"; echo_path'
alias reload_path='source_ ${CORE_COMPUTE}/path.sh; compute_path; echo -en "${SP80}"; echo_path'
alias reload_spath='source_ ${CORE_COMPUTE}/path.sh; compute_spath; echo -en "${SP80}"; echo_path'
# add_to_path_ "/usr/local/opt/ncurses/bin"
# add_to_path_ "${HOME}/perl5/bin"
# add_to_path_ "/usr/local/opt/gettext/bin"
# add_to_path_ "/usr/local/share/zsh/site-functions"
# add_to_path_ "/home/luxcium/.nvm/versions/node/v14.4.0/bin"
