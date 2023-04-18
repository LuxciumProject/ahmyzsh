#!/bin/bash

function load_path() {
  ## load_path
  if [ -f "${CACHED_PATH}" ]; then
    source_ "${CACHED_PATH}"
    (compute_path &) >/dev/null
  else
    compute_path
  fi
  __compute_extended_path
}

function re_load_path() {
  compute_path
}
