#!/usr/bin/env bash

function conda_init_esoteric-argentum() {
  echo init esoteric-argentum!!
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/home/luxcium/esoteric-argentum/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/home/luxcium/esoteric-argentum/etc/profile.d/conda.sh" ]; then
      . "/home/luxcium/esoteric-argentum/etc/profile.d/conda.sh"
    else
      export PATH="/home/luxcium/esoteric-argentum/bin:$PATH"
    fi
  fi
  unset __conda_setup

  # <<< conda initialize <<<
}
# alias conda_init_mystic-mercury=conda_init_esoteric-argentum
