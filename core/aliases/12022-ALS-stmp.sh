#!/bin/bash

_base_work_path="/home/luxcium/.local/src/nestjs-colligated-docs"
_scripts_dir="${_base_work_path}/scripts"
_functions_dir="${_scripts_dir}/functions"
# /home/luxcium/.local/src/nestjs-colligated-docs/scripts/functions

function getSTMP8_() {
  echo -n Z-"$(sha224sum <<<"$(date +%D%s%N)" | cut -c -8 | tr '[:lower:]' '[:upper:]')"
}

function getSTMP4_() {
  echo -n Z-"$(sha224sum <<<"$(date +%D%s%N)" | cut -c -4 | tr '[:lower:]' '[:upper:]')"
}

function getSTMP6_() {
  echo -n Z-"$(sha224sum <<<"$(date +%D%s%N)" | cut -c -6 | tr '[:lower:]' '[:upper:]')"
}

function getSTMP8a_() {
  echo -n "$(getSTMP4_)-$(getSTMP4_)x"
}

# _snDATE=$(date +%m%d)
# _snDATEy=$(date +%y%m%d)
# _snDATEu=$(date --utc +%m%d)
# _snDATEyu=$(date --utc +%y%m%d)
# _snTIME=$(date +%H%M%S%Z)
# _snTIMEu=$(date --utc +%H%M%S%Z)
# _snTIMEshortu=$(date --utc +%H%M%S)
# _snEPOCH=$(date +%s)
# _snSTMP8=$(getSTMP8_)
# _snSTMP4a=$(getSTMP4_)
# _snSTMP4b=$(getSTMP4_)
# _snapSTMP8a="$(getSTMP8a_)"
