#!/bin/bash
function cached_path_log() {
  CACHED_PATH_LOG="${CACHED_PATH}-logs/$(getstamp_ 8 'path-' 'x' "${PATH}")-$(getepochstamp)-$(getdateyy)-$(date +%A | tr '[:lower:]' '[:upper:]')-$(gettimestampz).log"
  export CACHED_PATH_LOG
  echo -n "${CACHED_PATH_LOG}"
  return
}

function set_path_hash_() {
  CURRENT_PATH_HASH=$(getstamp_ 4 'path-' 'x' "$@")
  export CURRENT_PATH_HASH
  echo -n "${CURRENT_PATH_HASH}"
  # export CURRENT_PATH_HASH=$(set_path_hash_ ${PATH})
}

function echo_path_() {
  echo ""
  (echo "${PATH}" | tr \[:\] "\n" | while read -r line; do echo "# ${line}"; done)
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
  echo "CURRENT_PATH_HASH:                    $(set_path_hash_ "${PATH}")"
  echo "PATH_HASH (from cache):               ${PATH_HASH}"
  echo "${CURRENT_PATH_HASH}"
  echo "${PATH_HASH}"
}
function seting_cache_path_() {
  CURRENT_PATH_HASH=$(set_path_hash_ "${PATH}")
  export CURRENT_PATH_HASH
  if [[ "${CURRENT_PATH_HASH}" != "${PATH_HASH}" ]]; then

    mkdir -p "${AHMYZSH_CACHE}"
    mkdir -p "${CACHED_PATH}-logs"

    CACHED_PATH_LOG="$(cached_path_log)"
    export CACHED_PATH_LOG
    {
      echo "#-    $(date -R)"
      echo ""
      echo "# PATH:"
      echo ""
      echo "${PATH}" | tr \[:\] "\n" | while read line; do echo "# ${line}"; done
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH=\"$(set_path_hash_ "${PATH}")\""
      echo "# PATH:"
      echo "export PATH=\"${PATH}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG=\"${CACHED_PATH_LOG}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_0=\"${PATH_HASH}\""
      echo "# PATH:"
      echo "export PATH_0=\"${PATH}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_0=\"${PATH_HASH_LOG}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_1=\"${PATH_HASH_0}\""
      echo "# PATH:"
      echo "export PATH_1=\"${PATH_0}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_1=\"${PATH_HASH_LOG_0}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_2=\"${PATH_HASH_1}\""
      echo "# PATH:"
      echo "export PATH_2=\"${PATH_1}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_2=\"${PATH_HASH_LOG_1}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_3=\"${PATH_HASH_2}\""
      echo "# PATH:"
      echo "export PATH_3=\"${PATH_2}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_3=\"${PATH_HASH_LOG_2}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_4=\"${PATH_HASH_3}\""
      echo "# PATH:"
      echo "export PATH_4=\"${PATH_3}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_4=\"${PATH_HASH_LOG_3}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_5=\"${PATH_HASH_4}\""
      echo "# PATH:"
      echo "export PATH_5=\"${PATH_4}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_5=\"${PATH_HASH_LOG_4}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_6=\"${PATH_HASH_5}\""
      echo "# PATH:"
      echo "export PATH_6=\"${PATH_5}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_6=\"${PATH_HASH_LOG_5}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_7=\"${PATH_HASH_6}\""
      echo "# PATH:"
      echo "export PATH_7=\"${PATH_6}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_7=\"${PATH_HASH_LOG_6}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_8=\"${PATH_HASH_7}\""
      echo "# PATH:"
      echo "export PATH_8=\"${PATH_7}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_8=\"${PATH_HASH_LOG_7}\""
      echo ""
      echo ""
      echo "# HASH:"
      echo "export PATH_HASH_9=\"${PATH_HASH_8}\""
      echo "# PATH:"
      echo "export PATH_9=\"${PATH_8}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_9=\"${PATH_HASH_LOG_8}\""
      echo ""
      echo "# HASH:"
      echo "export PATH_10=\"${PATH_9}\""
      echo ""
      echo "# PATH:"
      echo ""
      echo "export PATH_HASH_10=\"${PATH_HASH_9}\""
      echo ""
      echo "# LOG FILE:"
      echo "export PATH_HASH_LOG_10=\"${PATH_HASH_LOG_9}\""
      echo ""
      echo "#-    $(date -R)"

    } >"${CACHED_PATH}"
    {
      echo "    $(date -R)"
      echo ""
      echo "CURRENT_PATH_HASH:                    $(set_path_hash_ "${PATH}")"
      echo "PATH_HASH (from cache):               ${PATH_HASH}"
      echo ""
      echo ""
      echo "NEW PATH:"
      echo ""
      echo "${PATH}"
      echo ""
      echo ""
      [ -f "${CACHED_PATH}" ] && "$(cat "${CACHED_PATH}")"
      echo ""
      echo ""
      echo "    $(date -R)"
      echo ""
      echo " ―― Completum est, quod dixi de lux principium. ―― "
      echo ""
      echo -ne ""
      echo -ne "\u001b[s\u001b[3B NEW PATH!!!  LOOK AT LOGS IN ${CACHED_PATH}-logs \a\u001b[u"
      sleep 0.5
      echo -ne "\u001b[s\u001b[2B PATH_HASH (from cache): ${PATH_HASH}               \u001b[u"
      sleep 0.25
      echo -ne "\u001b[s\u001b[1B CURRENT_PATH_HASH:      $(set_path_hash_ "${PATH}")  \u001b[u"
    } >"${CACHED_PATH_LOG}"
  fi
  return
}

function compute_path() {
  set_path
  # seting_cache_path_
  return
}

function compute_spath() {
  set_sbin_path
  # seting_cache_path_
  return
}

function fnm_() {
  eval "$(fnm env --use-on-cd)"
  # shellcheck disable=SC2046
  eval $(fnm completions)
}

function rbenv_() {
  eval "$(rbenv init -)"

}

function rust_up_() {
  add_to_path_ "${HOME}/.cargo/bin"
  # shellcheck source=/home/luxcium/.cargo/env
  source "$HOME/.cargo/env"
}

function conda_() {
  load_ "${AHMYZSH}/core/compute-path/conda-initialize.sh" "conda_init_minerva3"
}

function getstamp_() {

  #- $1 = length (default 8)
  #- $2 = leading chars (default 'Z')
  #- $3 = trailing chars  (default 'x')
  #- $4 = seed (default current seconds since 1970-01-01 00:00:00 UTC with nanoseconds)

  if [ -z "$4" ]; then
    echo -n "${2-Z}$(sha512sum <<<"$(date +%D%s%N)" | cut -c -"${1:-'8'}" | tr '[:lower:]' '[:upper:]')${3-x}"
  else
    echo -n "${2-Z}$(sha512sum <<<"${2}""${3}""${4}""${5}" | cut -c -"${1:-'8'}" | tr '[:lower:]' '[:upper:]')${3-x}"
  fi

}

SP80="                                                                                "
alias refresh_path='source_ ${CORE_COMPUTE}/path.sh; set_path; echo -en "${SP80}"; echo_path'
alias refresh_spath='source_ ${CORE_COMPUTE}/path.sh; set_sbin_path; echo -en "${SP80}"; echo_path'
# alias reload_path='source_ ${CORE_COMPUTE}/path.sh; compute_path; echo -en "${SP80}"; echo_path'
alias reload_spath='source_ ${CORE_COMPUTE}/path.sh; compute_spath; echo -en "${SP80}"; echo_path'
