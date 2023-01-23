#!/usr/bin/env bash

function conda_init_mystic-mercury() {
  echo init mystic-mercury
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/home/luxcium/mystic-mercury/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/home/luxcium/mystic-mercury/etc/profile.d/conda.sh" ]; then
      . "/home/luxcium/mystic-mercury/etc/profile.d/conda.sh"
    else
      export PATH="/home/luxcium/mystic-mercury/bin:$PATH"
    fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}
