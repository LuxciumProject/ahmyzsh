function mkramdir() {
  # LASTVIRTUALRAM
  if [ -d "${MYVIRTUALRAM_PATH}" ]; then

    LASTVIRTUALRAM="${MYVIRTUALRAM_PATH}/${1}"
    mkdir -p "${LASTVIRTUALRAM}"
    chmod 1777 "${LASTVIRTUALRAM}"
    # cd "${LASTVIRTUALRAM}"
    # ln -s LASTVIRTUALRAM -v
    export LASTVIRTUALRAM

  fi
  # echo "'\$@:' $@, \n'\$1:' $1, \n'\$2:' $2, \n'\$3:' $3, \n'\$4:' $4"

}
