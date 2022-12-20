# Default Theme

if patched_font_in_use; then
  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
  TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""
else
  TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
  TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
  TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
  TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'0'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}

# Format: segment_name background_color foreground_color [non_default_separator]

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
  TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
    "tmux_session_info 148 234"
    "pwd 89 3"
    "vcs_modified  2 1"
    "vcs_staged  1 0"
    "vcs_branch 3 0"
    "vcs_compare  2 0"
    "vcs_others  2 0"
    # "lan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}"
  )
  
fi

if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
  TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
    # "hostname 33 0"
    # "uptime 3 0"
    "lan_ip 0 4"
    "ifstat_sys 0 5"
    # "earthquake 3 0"
    # "macos_notification_count 29 255"
    # "mailcount 9 255"
    # "now_playing 234 37"
    # "cpu 240 136"
    # "load 237 167"
    # "tmux_mem_cpu_load 234 136"
    # "battery 137 127"
    # "weather 37 255"
    # "rainbarf 0 ${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR}"
    # "xkb_layout 125 117" \
    # "wan_ip 24 255"
    # "date_day 235 3 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
    "time 0 7"
    "date 0 8"
    # "ifstat 12 255"
    # "utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}"
  )
fi
