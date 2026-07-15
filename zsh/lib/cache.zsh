# zsh/lib/cache.zsh
# Versioned cache locations and safe lifecycle functions.

typeset -gr AHMYZSH_CACHE_SCHEMA=v1
typeset -g AHMYZSH_CACHE_ROOT=${XDG_CACHE_HOME:-$HOME/.cache}/ahmyzsh
typeset -g AHMYZSH_CACHE_DIR=$AHMYZSH_CACHE_ROOT/$AHMYZSH_CACHE_SCHEMA

ahm_cache_init() {
  emulate -L zsh
  [[ -d $AHMYZSH_CACHE_DIR ]] || mkdir -p -- $AHMYZSH_CACHE_DIR
}

ahm_cache_guard() {
  emulate -L zsh
  [[ -n $AHMYZSH_CACHE_ROOT && $AHMYZSH_CACHE_ROOT == ${XDG_CACHE_HOME:-$HOME/.cache}/ahmyzsh ]]
}

ahm_cache_clear() {
  emulate -L zsh
  ahm_cache_guard || {
    print -u2 -- 'Refusing to clear an unexpected cache path.'
    return 1
  }
  rm -rf -- $AHMYZSH_CACHE_DIR
  rm -f -- ${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
  print -- "Cleared AhMyZSH cache schema $AHMYZSH_CACHE_SCHEMA."
}

ahm_cache_invalidate_all() {
  emulate -L zsh
  ahm_cache_guard || {
    print -u2 -- 'Refusing to invalidate an unexpected cache path.'
    return 1
  }
  rm -rf -- $AHMYZSH_CACHE_ROOT
  rm -f -- ${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
  print -- 'Invalidated all AhMyZSH-managed caches.'
}

ahm_cache_status() {
  emulate -L zsh
  print -- "root:   $AHMYZSH_CACHE_ROOT"
  print -- "schema: $AHMYZSH_CACHE_SCHEMA"
  if [[ -d $AHMYZSH_CACHE_DIR ]]; then
    print -- 'state:  ready'
  else
    print -- 'state:  cold'
  fi
}

ahm_cache_warm() {
  emulate -L zsh
  local root_q=${(q)AHMYZSH_ROOT}
  AHMYZSH_NO_INSTANT_PROMPT=1 AHMYZSH_PROMPT=basic \
    zsh -dfic "source $root_q/zsh/env.zsh; source $root_q/zsh/boot.zsh; exit" || {
      print -u2 -- 'AhMyZSH cache warm-up failed.'
      return 1
    }
  print -- 'Warmed AhMyZSH completion and framework caches.'
}
