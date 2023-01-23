#!/bin/bash

function load_options_main() {

  # may (or may not) set -m later in core/functions/96665x-precmd.sh
  set +m
  HISTFILE="${HOME}/.zsh_history"
  HISTSIZE=10000000
  export SAVEHIST=100000000

  export PROMPT_EOL_MARK=''

  setopt CDABLE_VARS # (-T)
  setopt PUSHD_IGNORE_DUPS
  setopt AUTO_LIST         # (-9) # <D>
  setopt AUTO_PARAM_SLASH  # <D>
  setopt AUTO_REMOVE_SLASH # <D>
  setopt COMPLETE_ALIASES
  setopt HASH_LIST_ALL    # <D>
  setopt LIST_AMBIGUOUS   # <D>
  setopt LIST_BEEP        # <D>
  setopt MARK_DIRS        # (-8, ksh: -X)
  setopt EXTENDED_HISTORY # <C>
  setopt HIST_ALLOW_CLOBBER
  setopt HIST_BEEP # <D>
  setopt HIST_EXPIRE_DUPS_FIRST
  setopt HIST_FCNTL_LOCK
  setopt HIST_FIND_NO_DUPS
  setopt HIST_IGNORE_DUPS  # (-h)
  setopt HIST_IGNORE_SPACE # (-g)
  setopt HIST_LEX_WORDS
  setopt HIST_NO_FUNCTIONS
  setopt HIST_NO_STORE
  setopt HIST_REDUCE_BLANKS
  setopt HASH_CMDS      # <D>
  setopt HASH_DIRS      # <D>
  setopt BG_NICE        # (-6) <C> <Z>
  setopt CHECK_JOBS     # <Z>
  setopt HUP            #<Z>
  setopt LONG_LIST_JOBS # (-R)
  setopt noMONITOR      # (-m, ksh: -m)
  setopt noNOTIFY       # (-5, ksh: -b) # <Z>
  setopt ZLE            # (-Z)

  setopt NO_PROMPT_CR
  unsetopt PROMPT_SP
  setopt appendhistory
  setopt AUTO_CD
  setopt AUTO_PUSHD
  setopt BANG_HIST # Treat the '!' character specially during expansion.
  setopt BEEP
  # setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
  # setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
  # setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
  setopt HIST_IGNORE_SPACE  # Don't record an entry starting with a space.
  setopt HIST_REDUCE_BLANKS # Remove superfluous blanks before recording entry.
  # setopt HIST_SAVE_NO_DUPS      # Don't write duplicate entries in the history file.
  setopt HIST_VERIFY        # Don't execute immediately upon history expansion.
  setopt INC_APPEND_HISTORY # Write to the history file immediately, not when the shell exits.
  setopt INTERACTIVE_COMMENTS
  setopt SHARE_HISTORY # Share history between all sessions.

  export TERM="xterm-256color"
  export CLICOLOR='1'
  export LSCOLORS='GxFxCxDxBxDgedabagacad'
  export GPG_TT=(tty)

  export TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

}
