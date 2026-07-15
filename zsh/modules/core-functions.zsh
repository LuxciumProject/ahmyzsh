# zsh/modules/core-functions.zsh
# Small vetted function set migrated from the legacy function/alias intent.

mkcd() {
  emulate -L zsh
  if (( $# != 1 )); then
    print -u2 -- 'usage: mkcd DIRECTORY'
    return 2
  fi
  mkdir -p -- $1 && builtin cd -- $1
}

path-lines() {
  emulate -L zsh
  print -l -- $path
}

ahm() {
  emulate -L zsh
  local action=${1:-help}
  shift 2>/dev/null || true

  case $action in
    doctor) ahm_doctor $@ ;;
    profile) ahm_profile $@ ;;
    reload) ahm_reload $@ ;;
    root) print -r -- $AHMYZSH_ROOT ;;
    cache)
      case ${1:-status} in
        status) ahm_cache_status ;;
        warm) ahm_cache_warm ;;
        clear) ahm_cache_clear ;;
        invalidate) ahm_cache_invalidate_all ;;
        *) print -u2 -- 'usage: ahm cache [status|warm|clear|invalidate]'; return 2 ;;
      esac
      ;;
    help|-h|--help)
      print -- 'usage: ahm <doctor|profile|reload|root|cache>'
      ;;
    *)
      print -u2 -- "unknown ahm action: $action"
      return 2
      ;;
  esac
}
