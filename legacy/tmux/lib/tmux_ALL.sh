# source "${TMUX_BIN}/tmux-functions.sh"

function tmx-lxio() {
  tmux-reload-env
  tmp-set-cache
  TMUX_SESSION="tmx-lxio"
  TMUX_WINDOW_0="tmx-lxio"
  TMUX_WINDOW_1="$TMUX_WINDOW_0"
  PATH_TMUX_SESSION="${PATH_LXIO}"
  link-vscode-tmux
  tmux has-session -t $TMUX_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux new -AD -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
    tmux-config
    tmux-attach
  else
    TMUX_SESSION="$TMUX_SESSION"
    tmux neww -t $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
    tmux select-window -t :$
    tmux-attach
  fi
  tmp-reset-to-cache

}


function link-vscode-tmux() {
  # !! ------------------------
  tmux has-session -t $TMUX_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux new -D -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
    tmux-config
    tmux-attach
  else
    tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_0 -c $PATH_LXIO
    tmux-attach
  fi

  tmux has-session -t $VS_CODE_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux new -D -s $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
    tmux-config
  fi
  tmux link-window -s $TMUX_SESSION -t $VS_CODE_SESSION
  # !! ------------------------
}


function tmx-zsh() {
  tmux-reload-env
  tmp-set-cache

  tmp-reset-to-cache
}


function tmx-questrade() {
  tmux-reload-env
  tmp-set-cache

  tmp-reset-to-cache
}


function tmx-iexcloud() {
  tmux-reload-env
  tmp-set-cache

  tmp-reset-to-cache
}


function tmx-iex() {
  tmux-reload-env
  tmp-set-cache

  tmp-reset-to-cache
}


function tmx-theme() {
  tmux-reload-env
  tmp-set-cache

  tmp-reset-to-cache
}


function lxi-session() {
  tmux-reload-env
  tmp-set-cache

  TMUX_SESSION="$LXI_SESSION"
  TMUX_WINDOW_0='tail_log'
  TMUX_WINDOW_1="$TMUX_WINDOW_0"
  PATH_TMUX_SESSION="$PATH_LXIO"

  tmux has-session -t $TMUX_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux-new
    tmux source "$TMUX_CONFIGS"/common.tmux.conf
    # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

    tmux split-window -h -t $TMUX_SESSION:$TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
    tmux send-keys -t $TMUX_SESSION:$TMUX_WINDOW_0.1 'heroku logs -t -a luxcium' C-m
    tmux select-window -t $TMUX_SESSION:$TMUX_WINDOW_0
    tmux last-pane -t $TMUX_SESSION:$TMUX_WINDOW_0.0
    tmux select-pane -t :.1 -P 'bg=black' -T HEROKU

  fi
  tmux-attach

  tmp-reset-to-cache
}


function vs-code-session() {
  tmux-reload-env
  VS_CODE_SESSION="VSCODE"
  TMUX_SESSION="$VS_CODE_SESSION"
  TMUX_WINDOW_0='VS-Code'

  tmux has-session -t $VS_CODE_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux new -AD -s $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
    tmux source "$TMUX_CONFIGS"/common.tmux.conf
    # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

    tmux attach -t $TMUX_SESSION

    # tmux-attach

  else
    TMUX_SESSION="$VS_CODE_SESSION"
    tmux neww -t $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
    tmux select-window -t :$
    tmux attach -t $TMUX_SESSION
    #
  fi
  # tmux link-window -s $LXI_SESSION -t $VS_CODE_SESSION

  # tmux has-session -t $LXI_SESSION 2>/dev/null
  # if [ $? != 0 ]; then
  # 	lxi-session
  # fi
  # TMUX_SESSION="$VS_CODE_SESSION"

  # tmp-reset-to-cache
}


function tmux-default() {
  tmux-reload-env
  TMUX_SESSION_D='Default'
  PATH_TMUX_SESSION_D='~/'
  TMUX_WINDOW_0_D='Home'
  TMUX_WINDOW_1_D="$COGS_ICO_X heroku-tail-log"

  tmp-set-cache
  TMUX_SESSION="$TMUX_SESSION_D"
  PATH_TMUX_SESSION="$PATH_TMUX_SESSION_D"
  TMUX_WINDOW_0="$TMUX_WINDOW_0_D"
  TMUX_WINDOW_1="$TMUX_WINDOW_1_D"

  tmux has-session -t $TMUX_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux new -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
    tmux-config
    tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_1 -c $PATH_TMUX_SESSION
    tmux send-keys -t $TMUX_SESSION:$TMUX_WINDOW_1 'heroku logs -t -a luxcium' C-m
    tmux select-window -t $TMUX_SESSION:$TMUX_WINDOW_0

  fi
  tmux-attach
  tmp-reset-to-cache
}


function load_tmux_functions() {

  alias tmxx="tmux-start"

  if [ "$TMUX_START" != 'true' ]; then
    # echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)TMUX AUTO START$(tput setaf 1) NOT in function${BKBK}${normal}"
    alias tmx='echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)TMUX AUTO START$(tput setaf 1) NOT in function${BKBK}${normal}\n"'
    # sleep 0.5

  fi
  if [ "$TMUX_START" = 'true' ]; then
    # echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)TMUX AUTO START$(tput setaf 2) IS in function${BKBK}${normal}"
    alias tmx='echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)TMUX AUTO START$(tput setaf 2) IS in function${BKBK}${normal}"; tmxx'
    # sleep 0.5

  fi

  function tmux-reload-env() {
    source "${TMUX_LIB}/tmux-env.sh"
  }

  function tmux-session() {
    tmux has-session -t $TMUX_SESSION 2>/dev/null
    if [ $? != 0 ]; then
      tmux new-session -Ad -s $TMUX_SESSION -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
    fi
  }
  function pyx() {
    TMUX_SESSION="Default"
    TMUX_WINDOW_0="Main"
    PATH_TMUX_SESSION="${HOME}/"
    tmux split-window -v -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.1" -c $PATH_TMUX_SESSION zsh -c 'py'
  }
  # alias jxx='rlwrap --polling --always-readline "zsh -l jx"'
  function jx() {
    TMUX_SESSION="Default"
    TMUX_WINDOW_0="Main"
    PATH_TMUX_SESSION="${HOME}/"
    echo "${PWD}"
    tmux split-window -v -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.1" -c "${PWD}" zsh -c 'js'
  }

  function tmux-config() {
    tmux source "$TMUX_CONFIGS"/common.tmux.conf
    # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

  }
  function tmux-start-session() {
    local TMUX_SESSION=$1

    tmux has-session -t "${TMUX_SESSION}" 2>/dev/null
    if [ $? != 0 ]; then
      tmux new-session -Ad -s "${TMUX_SESSION}" -n "${TMUX_WINDOW_0}" -c "${PWD}"
      return 15
    fi
    return 0

  }
  function tmux-start() {
    TMUX_SESSION=$1
    PATH_TMUX_SESSION="${HOME}/"
    TMUX_WINDOW_0="Main"
    # PATH_TMUX_LXIO="${PATH_LXIO}/"

    local TMX_WIN_HOME="${TMUX_SESSION}:${TMUX_WINDOW_0}"

    tmux-start-session ${TMUX_SESSION:="Default"}
    if [ $? != 0 ]; then
      tmux split-window -h -t "${TMX_WIN_HOME}.0" -c "${PATH_LXIO}"

      local TMX_WIN_HOME="${TMUX_SESSION}:${TMUX_WINDOW_0}.0"
      tmux select-pane -T 'HOME' -t "${TMX_WIN_HOME}"
      tmux resize-pane -t "${TMX_WIN_HOME}" -R 30

      tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.1" C-m '(mytty1);prompt_powerlevel9k_teardown;compute_path;PS1="";hardcls;echo ${GR_COGS_PROMPT}' C-m
      local TMX_WIN_HOME="${TMUX_SESSION}:${TMUX_WINDOW_0}.1"
      tmux split-window -v -t "${TMX_WIN_HOME}" -c "${PATH_LXIO}"
      tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.2" C-m '(mytty2);prompt_powerlevel9k_teardown;compute_path;PS1="";hardcls;echo ${RD_COGS_PROMPT}' C-m
      tmux-config
    fi

    tmux select-pane -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0"
    sleep 2
    tmux-attach

  }

  alias tmx2="tmux-start2"
  function tmux-start2() {
    TMUX_SESSION="Default"
    PATH_TMUX_SESSION="${HOME}/"
    PATH_TMUX_LXIO="${PATH_LXIO}/"
    TMUX_WINDOW_0="Main"

    local TMX_WIN_MAIN="Main"
    local TMX_WIN_HOME="Home"
    local TMX_WIN_LXIO="LXIO"
    local TMX_WIN_JS="JS"
    local TMX_WIN_PYX="PYX"
    local TMX_WIN_HTAILLOG="HtailLog"
    local TMX_PAN_HOME="${TMUX_SESSION}:${TMX_WIN_MAIN}.0"
    local TMX_PAN_LXIO="${TMUX_SESSION}:${TMX_WIN_MAIN}.1"
    local TMX_PAN_JS="${TMUX_SESSION}:${TMX_WIN_MAIN}.2"
    local TMX_PAN_PYX="${TMUX_SESSION}:${TMX_WIN_MAIN}.3"
    local TMX_PAN_HTAILLOG="${TMUX_SESSION}:${TMX_WIN_MAIN}.4"

    tmux has-session -t "${TMUX_SESSION}" 2>/dev/null
    if [ $? != 0 ]; then

      tmux new-session -Ad -s "${TMUX_SESSION}" -n "${TMX_WIN_MAIN}" -c "${PATH_TMUX_LXIO}"
      tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_HOME}" zsh -i
      tmux new-window -d -c "${PATH_TMUX_LXIO}" -n "${TMX_WIN_LXIO}" zsh -i
      tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_JS}" js
      tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_PYX}" py
      tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_HTAILLOG}" htaillog

      tmux split-window -h -t "${TMX_PAN_HOME}" -c "${PATH_TMUX_SESSION}"
      tmux split-window -v -t "${TMX_PAN_HOME}" -c "${PATH_TMUX_SESSION}"
      tmux split-window -h -t "${TMX_PAN_JS}" -c "${PATH_TMUX_SESSION}"
      tmux split-window -v -t "${TMX_PAN_JS}" -c "${PATH_TMUX_SESSION}"

      # tmux link-window -s -t

      tmux link-window -s ":${TMX_WIN_HOME}" -t ":${TMX_WIN_MAIN}.0"
      tmux link-window -s ":${TMX_WIN_LXIO}" -t ":${TMX_WIN_MAIN}.1"
      tmux link-window -s ":${TMX_WIN_JS}" -t ":${TMX_WIN_MAIN}.2"
      tmux link-window -s ":${TMX_WIN_PYX}" -t ":${TMX_WIN_MAIN}.3"
      tmux link-window -s ":${TMX_WIN_HTAILLOG}" -t ":${TMX_WIN_MAIN}.4"

      # tmux select-pane -T 'HOME' -t "${TMX_PAN_HOME}"
      # tmux select-pane -T 'LXIO' -t "${TMX_PAN_LXIO}"
      # tmux select-pane -T 'JS' -t "${TMX_PAN_JS}"
      # tmux select-pane -T 'PYX' -t "${TMX_PAN_PYX}"
      # tmux select-pane -T 'HTAILLOG' -t "${TMX_PAN_HTAILLOG}" -P 'bg=black'
      tmux-config

      # tmux send-keys -t "${TMX_PAN_HOME}" 'cd ~/;clear' C-m
      # tmux send-keys -t "${TMX_PAN_LXIO}" 'cd '"${PATH_TMUX_LXIO}"\;clear C-m
      # tmux send-keys -t "${TMX_PAN_HTAILLOG}" 'cd ~/;clear;htaillog' C-m
      # tmux send-keys -t "${TMX_PAN_JS}" 'cd ~/;clear;zsh -c js' C-m
      # tmux send-keys -t "${TMX_PAN_PYX}" 'cd ~/;clear;zsh -c py' C-m
    fi

    # tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0" 'tmux select-pane -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0"' C-m
    # tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0" 'clear' C-m
    sleep 4
    tmux-attach

  }

  function tmux-new() {
    tmux has-session -t $TMUX_SESSION 2>/dev/null
    if [ $? != 0 ]; then
      tmux new -s $TMUX_SESSION -Ad -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
    else
      tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_1 -c $PATH_TMUX_SESSION
    fi
  }

  function tmux-attach() {
    if [ -z "${TMUX}" ]; then
      tmux attach -t $TMUX_SESSION
    else
      tmux switch -t $TMUX_SESSION
    fi
  }
  function tmux-switch() {
    tmux-attach
  }

  function tmp-set-cache() {
    TEMP_TMUX_SESSION="$TMUX_SESSION"
    TEMP_TMUX_WINDOW_0="$TMUX_WINDOW_0"
    TEMP_TMUX_WINDOW_1="$TMUX_WINDOW_1"
    PATH_TEMP_TMUX_SESSION="$PATH_TMUX_SESSION"
    TEMP_TMUX_SESSION="$TMUX_SESSION"
  }
  function tmp-reset-to-cache() {
    TMUX_SESSION="$TEMP_TMUX_SESSION"
    TMUX_WINDOW_0="$TEMP_TMUX_WINDOW_0"
    TMUX_WINDOW_1="$TEMP_TMUX_WINDOW_1"
    PATH_TMUX_SESSION="$PATH_TEMP_TMUX_SESSION"
    TMUX_SESSION="$TEMP_TMUX_SESSION"
  }

  function tmux_color_palette() {
    for i in $(seq 0 2 15); do
      for j in $(seq $i $(expr $i + 1)); do
        for k in $(seq 1 $(expr 1 - ${#j})); do
          printf " "
        done
        printf "\x1b[38;5;${j}mcolour${j}"
        [[ $(expr $j % 2) != 1 ]] && printf "    "
      done
      printf "\n"
    done
  }
}


function load_tmux() {
  . "${TMUX_LIB}/tmux-env.sh"

  . "${TMUX_LIB}/tmux-functions.sh"
  load_tmux_functions

  . "${TMUX_LIB}/tmux-dev-projects.sh"
}


function tmux_luxcium() {
  TMUX_SESSION='luxcium-io'
  TMUX_WINDOW_0='tail_log'
  PATH_TMUX_SESSION="$PATH_LXIO"
  TMUX_SESSION=$TMUX_SESSION

  tmux has-session -t $TMUX_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux-new

    tmux source "$TMUX_CONFIGS"/common.tmux.conf
    # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

    tmux split-window -h -t $TMUX_SESSION:$TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
    tmux send-keys -t $TMUX_SESSION:$TMUX_WINDOW_0.1 'heroku logs -t -a luxcium' C-m
    tmux select-window -t $TMUX_SESSION:$TMUX_WINDOW_0
    tmux select-pane -t :.1 -P 'bg=black' -T HEROKU
    tmux last-pane -t $TMUX_SESSION:$TMUX_WINDOW_0.0
  fi
  tmux-attach
}


function tmux_questrade() {
  tmux new -s questrade -d
  tmux rename-window -t questrade code
  tmux send-keys -t questrade 'code' C-m

  tmux new-window -t questrade
  tmux rename-window -t questrade server
  # tmux send-keys -t questrade './bin/rails s' C-m
  tmux split-window -v -t questrade
  # tmux send-keys -t questrade './bin/sidekiq' C-m
  tmux select-window -t questrade:1
  tmux attach -t questrade
  tmux source "$TMUX_CONFIGS"/common.tmux.conf
  # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

}


function tmux_vscode() {
  TMUX_SESSION='VSCODE'
  TMUX_WINDOW_0='VS-Code'

  tmux has-session -t $LXI_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux new -D -s $LXI_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
  else
    tmux new-window -t $LXI_SESSION -n $TMUX_WINDOW_0 -c $PATH_LXIO
  fi

  tmux has-session -t $VS_CODE_SESSION 2>/dev/null
  if [ $? != 0 ]; then
    tmux new -D -s $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
  fi

  tmux link-window -s $LXI_SESSION -t $VS_CODE_SESSION
  tmux attach -t $TMUX_SESSION
  tmux source "$TMUX_CONFIGS"/common.tmux.conf
  # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

}

function _load_tmux() {
  # Dev Projects TMUX Names
  LXI_SESSION="luxcium-io"
  VS_CODE_SESSION="VSCODE"

  TMUX_SESSION='Default'
  PATH_TMUX_SESSION="${HOME}/"
  TMUX_WINDOW_0='Main'
  TMUX_WINDOW_1="$TMUX_WINDOW_0"
}


# link-vscode-tmux
# tmx-zsh
# tmx-questrade
# tmx-iexcloud
# tmx-iex
# tmx-theme
# lxi-session
# vs-code-session
# tmux-default
# load_tmux_functions
# load_tmux
# tmux_luxcium
# tmux_questrade
# tmux_vscode
# _load_tmux
