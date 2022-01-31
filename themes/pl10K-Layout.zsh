function load_my_powerlevel10k() {

  # Transient prompt works similarly to the builtin transient_rprompt option. It trims down prompt
  # when accepting a command line. Supported values:
  #
  #   - off:      Don't change prompt when accepting a command line.
  #   - always:   Trim down prompt when accepting a command line.
  #   - same-dir: Trim down prompt when accepting a command line unless this is the first command
  #               typed after changing current working directory.
  typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=always
  # typeset POWERLEVEL9K_TIME_UPDATE_ON_COMMAND=

  function pl10k_prompt_loader() {
    pl10k_left_prompt_loader
    pl10k_right_prompt_loader
    return 0

    # Transparent background.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=
    # Green prompt symbol if the last command succeeded.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_FOREGROUND=76
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VICMD_FOREGROUND=76
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_FOREGROUND=76
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIOWR_FOREGROUND=76
    # Red prompt symbol if the last command failed.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_FOREGROUND=196
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VICMD_FOREGROUND=196
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIVIS_FOREGROUND=196
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIOWR_FOREGROUND=196
    # Default prompt symbol ok.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION='❯'
    # Default prompt symbol error.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION='⌃'
    # Prompt symbol in command vi mode.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VICMD_CONTENT_EXPANSION='❮'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VICMD_CONTENT_EXPANSION='❮'
    # Prompt symbol in visual vi mode.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_CONTENT_EXPANSION='V'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIVIS_CONTENT_EXPANSION='V'
    # Prompt symbol in overwrite vi mode.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIOWR_CONTENT_EXPANSION='▶'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIOWR_CONTENT_EXPANSION='▶'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OVERWRITE_STATE=true
    # No line terminator if prompt_char is the last segment.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=
    # No line introducer if prompt_char is the first segment.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=
    # No surrounding whitespace.
    typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_LEFT_WHITESPACE=
    typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_RIGHT_WHITESPACE=

    # local -i i=1
    # while (( i <= $#_POWERLEVEL9K_TRANSIENT_ELEMENTS )); do
    #   local segment=${${(U)_POWERLEVEL9K_TRANSIENT_ELEMENTS[i]}//İ/I}
    #   local var=POWERLEVEL9K_${segment}_LEFT_DISABLED
    #   (( $+parameters[$var] )) || var=POWERLEVEL9K_${segment}_DISABLED
    #   if [[ ${(P)var} == true ]]; then
    #     _POWERLEVEL9K_TRANSIENT_ELEMENTS[i,i]=()
    #   else
    #     (( ++i ))
    #   fi
    # done

    if [[ $_POWERLEVEL9K_TRANSIENT_PROMPT != off ]]; then
      local sep=$'\1'
      _p9k_transient_prompt='%b%k%s%u%(?'$sep
      _p9k_color prompt_prompt_char_OK_VIINS FOREGROUND 76
      _p9k_foreground $_p9k__ret
      _p9k_transient_prompt+=$_p9k__ret
      _p9k_transient_prompt+='${${P9K_CONTENT::="❯"}+}'
      _p9k_param prompt_prompt_char_OK_VIINS CONTENT_EXPANSION '${P9K_CONTENT}'
      _p9k_transient_prompt+='${:-"'$_p9k__ret'"}'
      _p9k_transient_prompt+=$sep
      _p9k_color prompt_prompt_char_ERROR_VIINS FOREGROUND 196
      _p9k_foreground $_p9k__ret
      _p9k_transient_prompt+=$_p9k__ret
      _p9k_transient_prompt+='${${P9K_CONTENT::="❯"}+}'
      _p9k_param prompt_prompt_char_ERROR_VIINS CONTENT_EXPANSION '${P9K_CONTENT}'
      _p9k_transient_prompt+='${:-"'$_p9k__ret'"}'
      _p9k_transient_prompt+=')%b%k%f%s%u '
      if [[ $ITERM_SHELL_INTEGRATION_INSTALLED == Yes ]]; then
        if (($ + _z4h_iterm_cmd && _z4h_can_save_restore_screen == 1)); then
          _p9k_transient_prompt=$'%{\ePtmux;\e\e]133;A\a\e\\%}'$_p9k_transient_prompt$'%{\ePtmux;\e\e]133;B\a\e\\%}'
        else
          _p9k_transient_prompt=$'%{\e]133;A\a%}'$_p9k_transient_prompt$'%{\e]133;B\a%}'
        fi
      fi
    fi

  }

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

  function load_pl10K() {
    export TS_ICON=$'\uf071'
    export JS_BG='yellow'
    export JS_FG='black'
    export NODE_BG='green'
    export NODE_FG='black'
    export NPM_BG='green'
    export NPM_FG='black'
    export TS_FG='black'

    export TS_ICON='$TS_ICO'
    export TS_BG='blue'

    export NODE_VERSION="Loading ..."
    export POWERLEVEL9K_CUSTOM_NODE="echo -n '\uf898 ' $NODE_VERSION"

    export NPM_VERSION="Loading ..."
    export POWERLEVEL9K_CUSTOM_NPM="echo -n '\ue71e ' $NPM_VERSION"

    export POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
    export POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=4
    export POWERLEVEL9K_CUSTOM_JS="echo -n '\uf81d'"
    export POWERLEVEL9K_CUSTOM_JS_FOREGROUND="$JS_FG"
    export POWERLEVEL9K_CUSTOM_JS_BACKGROUND="$JS_BG"

    export POWERLEVEL9K_CUSTOM_TSC_FOREGROUND="$TS_BG"
    export POWERLEVEL9K_CUSTOM_TSC_BACKGROUND="$TS_FG"

    export POWERLEVEL9K_RBENV_ALWAYS=true
    export POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
    export POWERLEVEL9K_RBENV_FOREGROUND='red'
    export POWERLEVEL9K_RBENV_BACKGROUND='black'

    export POWERLEVEL9K_COLOR_SCHEME='dark'
    export POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=false
    export POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE_ALWAYS=false

    export POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'
    export POWERLEVEL9K_TIME_FOREGROUND='white'
    export POWERLEVEL9K_TIME_BACKGROUND='black'

    export POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
    export POWERLEVEL9K_PROMPT_ON_NEWLINE=false
    export POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

    # os_icon
    export POWERLEVEL9K_OS_ICON_BACKGROUND='blue'
    export POWERLEVEL9K_OS_ICON_FOREGROUND='black'

    export POWERLEVEL9K_CONTEXT_FOREGROUND='008'
    export POWERLEVEL9K_CONTEXT_BACKGROUND='black'
    # user - Default
    export POWERLEVEL9K_USER_DEFAULT_ICON=$'\uF415'
    export POWERLEVEL9K_USER_DEFAULT_FOREGROUND='008'
    export POWERLEVEL9K_USER_DEFAULT_BACKGROUND='black'
    # user - ROOT
    export POWERLEVEL9K_USER_ROOT_ICON=$'\uf292'
    export POWERLEVEL9K_USER_ROOT_FOREGROUND='red'
    export POWERLEVEL9K_USER_ROOT_BACKGROUND='black'
    # user - SUDO
    export POWERLEVEL9K_USER_SUDO_ICON=$'\uF09C'
    export POWERLEVEL9K_USER_SUDO_FOREGROUND='green'
    export POWERLEVEL9K_USER_SUDO_BACKGROUND='black'
    # Other icons
    export POWERLEVEL9K_DIR_HOME_ICON=$'\uf015'
    export POWERLEVEL9K_DIR_HOME_SUBFOLDER_ICON=$'\uf115'
    export POWERLEVEL9K_DIR_DEFAULT_ICON=$'\uf07c'
    export POWERLEVEL9K_DIR_ETC_ICON=$'\uf085'
    # dir - HOME
    export POWERLEVEL9K_DIR_HOME_BACKGROUND='blue'
    export POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
    # dir - HOME_SUBFOLDER
    export POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
    export POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
    # dir - DEFAULT
    export POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='blue'
    export POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
    # dir - ETC
    export POWERLEVEL9K_DIR_ETC_BACKGROUND='blue'
    export POWERLEVEL9K_DIR_ETC_FOREGROUND='black'

    # Create prompt section
    # export POWERLEVEL9K_CUSTOM_PROMPT='echo -n '.''
    # export POWERLEVEL9K_CUSTOM_PROMPT_BACKGROUND='blue'
    # export POWERLEVEL9K_CUSTOM_PROMPT_FOREGROUND='black'

    # Normal Disk Usage
    export POWERLEVEL9K_DISK_USAGE_NORMAL_FOREGROUND='blue'
    export POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND='black'

    # Disk Usage: Almost Full
    export POWERLEVEL9K_DISK_USAGE_WARNING_LEVEL='87'
    export POWERLEVEL9K_DISK_USAGE_WARNING_FOREGROUND='red'
    export POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND='black'

    # Disk Usage: Critically Full
    # export POWERLEVEL9K_DISK_USAGE_CRITICAL_LEVEL='92'
    # export POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND='black'
    # export POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND='red'

    # export POWERLEVEL9K_DISK_USAGE_NORMAL_ICON=$'\uf7c9'
    # export POWERLEVEL9K_DISK_USAGE_WARNING_ICON=$'\uf7c9'
    # export POWERLEVEL9K_DISK_USAGE_CRITICAL_ICON=$'\uf7c9'

    # export POWERLEVEL9K_DISK_USAGE_NORMAL_ICON_COLOR='blue'
    # export POWERLEVEL9K_DISK_USAGE_WARNING_ICON_COLOR='yellow'
    # export POWERLEVEL9K_DISK_USAGE_CRITICAL_ICON_COLOR='black'
    # Time
    export POWERLEVEL9K_TIME_ICON_COLOR='008'
    export POWERLEVEL9K_TIME_FOREGROUND='008'
    export POWERLEVEL9K_TIME_BACKGROUND='black'

    export POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="${LEFT_SEPRATOR}"
    export POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="${RIGHT_SEPRATOR}"

    export POWERLEVEL9K_CUSTOM_NODE_FOREGROUND='black'
    export POWERLEVEL9K_CUSTOM_NODE_BACKGROUND=$NODE_BG

    export POWERLEVEL9K_CUSTOM_NPMR_FOREGROUND='black'
    export POWERLEVEL9K_CUSTOM_NPMR_BACKGROUND=$NPM_BG

    export POWERLEVEL9K_CUSTOM_NPM_FOREGROUND=$NPM_BG
    export POWERLEVEL9K_CUSTOM_NPM_BACKGROUND='black'

    export POWERLEVEL9K_CUSTOM_TS_FOREGROUND='black'
    export POWERLEVEL9K_CUSTOM_TS_BACKGROUND=$TS_BG

    export POWERLEVEL9K_CUSTOM_TSR_FOREGROUND=$TS_BG
    export POWERLEVEL9K_CUSTOM_TSR_BACKGROUND='black'

    export POWERLEVEL9K_CUSTOM_TSX="echo -n $TS_ICON "
    export POWERLEVEL9K_CUSTOM_TSX_FOREGROUND='black'
    export POWERLEVEL9K_CUSTOM_TSX_BACKGROUND=$TS_BG

    export POWERLEVEL9K_CUSTOM_PYT="echo -n $TS_ICON "
    export POWERLEVEL9K_CUSTOM_PYT_FOREGROUND='black'
    export POWERLEVEL9K_CUSTOM_PYT_BACKGROUND='green'

    export POWERLEVEL9K_NODE_VERSION_FOREGROUND='black'
    export POWERLEVEL9K_NODE_VERSION_BACKGROUND='green'

    # Load Nerd Fonts with Powerlevel9k theme for Zsh
    export POWERLEVEL9K_MODE='nerdfont-complete'

    pl10k_prompt_loader
    return 0

  }

  function compute_pl10k_() {

    # export NODE_VERSION="$(cut -d 'v' -f 2 <<<$(node -v))"
    # export POWERLEVEL9K_CUSTOM_NODE="echo -n '\uf898 ' $NODE_VERSION"

    ( (env echo $(npm -v) >"${CACHE_FOLDER_}/NPM_VERSION.raw.txt") &)
    ( (env echo "$(cut -d ' ' -f 2 <<<$(tsc -v))" >"${CACHE_FOLDER_}/TSC_VERSION.raw.txt") &)

    load_pl10K
    export NPM_VERSION="$(cat ${CACHE_FOLDER_}/NPM_VERSION.raw.txt)"
    export TSC_VERSION="$(cat ${CACHE_FOLDER_}/TSC_VERSION.raw.txt)"

    export POWERLEVEL9K_CUSTOM_NPM="echo -n '\ue71e' $NPM_VERSION"
    export POWERLEVEL9K_CUSTOM_TSC="echo -n '\ufbe4' $TSC_VERSION"
    return 0
  }
  alias lprompt='toggle_left_prompt'
  alias rprompt='toggle_right_prompt'
  alias reload_pl10k='load_pl10K;compute_pl10k_'
  alias pl10k_reload='load_pl10K;compute_pl10k_'
}
#->  cat ${AHMYZSH}/templates/pl10K-Layout.zsh # Look at /templates/pl10K-Layout.zsh for more ionfos...
