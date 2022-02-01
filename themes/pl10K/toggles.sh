function pl10k_prompt_on() {
  pl10k_left_prompt_on
  pl10k_right_prompt_on
  compute_pl10k_
  return 0
}

# function __p10k-on-pre-prompt() {
#   echo p10k-on-pre-prompt
#   prompt_command_execution_time
# }

# function __p10k-on-post-prompt() {
#   echo p10k-on-post-prompt

# }
function pl10k_left_prompt_on() {
  export PL10K_LEFT_PROMPT_ON='true'
  export PL10K_LEFT_PROMPT_OFF='false'
  function pl10k_left_prompt_loader() {
    # export POWERLEVEL9K_TRANSIENT_PROMPT_ELEMENTS=()
    export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
      # newline                # !! ============[ Line #1 ]============================
      custom_js              #
      time                   # current time
      command_execution_time # duration of the last command
      status                 # exit code of the last command
      # custom_pyt             #
      virtualenv
      # anaconda               # conda environment (https://conda.io/)
      newline         # !! ============[ Line #2 ]============================
      os_icon         # os identifier
      context         #
      load            # CPU load
      newline         # !! ============[ Line #3 ]============================
      dir             # current directory
      background_jobs # presence of background jobs
      newline         # !! ============[ Line #4 ]============================
      vcs             # git status
      prompt_char     # prompt symbol
    )
    return 0
  }
  return 0
}

function left_prompt_on() {
  if [ $PL10K_LEFT_PROMPT_OFF = 'true' ]; then
    pl10k_left_prompt_on
    compute_pl10k_
    return 0
  fi
  return 1
}

function pl10k_left_prompt_off() {
  export PL10K_LEFT_PROMPT_ON='false'
  export PL10K_LEFT_PROMPT_OFF='true'
  function pl10k_left_prompt_loader() {
    export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=()
    return 0
  }
  return 0
}

function left_prompt_off() {
  if [ $PL10K_LEFT_PROMPT_ON = 'true' ]; then
    pl10k_left_prompt_off
    compute_pl10k_
    return 0
  fi
  return 1
}

function toggle_left_prompt() {
  if [ "${1}" = 'off' ]; then
    left_prompt_off
    return 0
  elif [ "${1}" = 'on' ]; then
    left_prompt_on
    return 0
  elif [ $PL10K_LEFT_PROMPT_ON = 'true' ]; then
    left_prompt_off
    return 0
  elif [ $PL10K_LEFT_PROMPT_OFF = 'true' ]; then
    left_prompt_on
    return 0
  fi
  return 1
}

function pl10k_right_prompt_on() {
  export PL10K_RIGHT_PROMPT_ON='true'
  export PL10K_RIGHT_PROMPT_OFF='false'
  function pl10k_right_prompt_loader() {
    export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
      rbenv      # ruby version from rbenv (https://github.com/rbenv/rbenv)
      newline    # !! ============[ Line #1 ]============================
      custom_tsx #
      custom_tsc
      custom_tsx #
      newline    # !! ============[ Line #1 ]============================
      custom_js  #
      custom_npm #
      node_version
      # custom_tsc      #
      # newline         # !! ============[ Line #1 ]============================
      # custom_tsx      #
      # custom_npm      #
      # node_version    # node.js version
      # time            # current time
      # newline         # !! ============[ Line #2 ]============================
      # custom_pyt      #
      # rbenv           # ruby version from rbenv (https://github.com/rbenv/rbenv)
      # anaconda        # conda environment (https://conda.io/)
      # background_jobs # presence of background jobs
    )
    return 0
  }
  return 0
}

function right_prompt_on() {
  if [ $PL10K_RIGHT_PROMPT_OFF = 'true' ]; then
    pl10k_right_prompt_on
    compute_pl10k_
    return 0
  fi
  return 1
}

function pl10k_right_prompt_off() {
  export PL10K_RIGHT_PROMPT_ON='false'
  export PL10K_RIGHT_PROMPT_OFF='true'
  function pl10k_right_prompt_loader() {
    export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
      rbenv      # ruby version from rbenv (https://github.com/rbenv/rbenv)
      newline    # !! ============[ Line #1 ]============================
      custom_tsx #
      custom_tsc
      custom_tsx #
      newline    # !! ============[ Line #1 ]============================
      custom_js  #
      custom_npm #
      node_version

    )

    return 0
  }
  return 0
}

function right_prompt_off() {
  if [ $PL10K_RIGHT_PROMPT_ON = 'true' ]; then
    pl10k_right_prompt_off
    compute_pl10k_
    return 0
  fi
  return 1
}

function toggle_right_prompt() {
  if [ "${1}" = 'off' ]; then
    right_prompt_off
    return 0
  elif [ "${1}" = 'on' ]; then
    right_prompt_on
    return 0
  elif [ $PL10K_RIGHT_PROMPT_ON = 'true' ]; then
    right_prompt_off
    return 0
  elif [ $PL10K_RIGHT_PROMPT_OFF = 'true' ]; then
    right_prompt_on
    return 0
  fi
  return 3
}
