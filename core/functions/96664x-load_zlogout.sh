## Add a call to thin function in '/etc/zlogout' or '~/.zlogout'
function load_zlogout() {
  ##$  Interactive,login
  (
    (clearzshwordcode && zsh_compile_all_M) &
    _p9k_dump_instant_prompt 2>/dev/null &
    compute_path 2>/dev/null &
    # saybye
    echo "logout call:"
    echo "PATH_HASH:              ${PATH_HASH}"
    echo "NEW_PATH_HASH:          ${NEW_PATH_HASH}"
    echo "NEW_PATH_HASH_B:        ${NEW_PATH_HASH_B}"
    echo "NO_FNM_PATH:            $(set_path_hash_ ${NO_FNM_PATH})"
    echo "FNM_PATH:               $(set_path_hash_ ${FNM_PATH})"
    echo ""
    echo ${PATH}
    echo ""
  )
  # exit
}
