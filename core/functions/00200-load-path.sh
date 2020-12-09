function load_path() {
  ## load_path
  if [ -f "${CACHED_PATH}" ]; then
    source_ "${CACHED_PATH}"
    (compute_path &) >/dev/null
  else
    compute_path
  fi
}

function re_load_path() {
  compute_path
}
