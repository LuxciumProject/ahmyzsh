function load_options_main() {

  # may (or may not) set -m later in core/functions/96665x-precmd.sh
  set +m
  HISTFILE="${HOME}/.zsh_history"
  HISTSIZE=10000000
  SAVEHIST=100000000

  export PROMPT_EOL_MARK=''
  setopt NO_PROMPT_CR
  unsetopt PROMPT_SP
  setopt appendhistory
  setopt AUTO_CD
  setopt AUTO_PUSHD
  setopt BANG_HIST # Treat the '!' character specially during expansion.
  setopt BEEP
  setopt EXTENDED_HISTORY # Write the history file in the ":start:elapsed;command" format.
  setopt HIST_BEEP
  setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
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

  TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

}
