## Add a call to thin function in '/etc/zlogout' or '~/.zlogout'
function load_zlogout() {
  ##$  Interactive,login
  (
    (clearzshwordcode && zsh_compile_all_M) &
    _p9k_dump_instant_prompt 2>/dev/null &
    compute_path 2>/dev/null &
    saybye
  )
}
