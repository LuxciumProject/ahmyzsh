function __AHMYZSH__BOOT__LOADER__() {
  export AHMYZSH="${HOME}/ahmyzsh"
  export CACHED_PATH="${HOME}/.cache/path.env"
  export AH_LIBRARIES="${AHMYZSH}/libraries"

  # local S1="${AH_LIBRARIES}/load_intearctive_login_state.sh"
  # if [ -f "${S1}" ]; then
  #   . ${S1}
  #   Load_Intearctive_Login_State
  # else
  #   echo "Error loading '${S1}'... File or path can not be resolved"
  # fi

  local S1="${AHMYZSH}/MAIN_configuration.sh"
  if [ -f "${S1}" ]; then
    . ${S1}
    firtstage
  else
    echo "Error loading '${S1}'... File or path can not be resolved"
  fi

  local S1="${CACHED_PATH}"
  if [ -f "${S1}" ]; then
    . ${S1}
    # if [[ -o interactive ]]; then
    #   # echo "I'm interactive shell"
    #   # echo "${BEGIN_HOURGLASS_END_1} load_zshenv in $(timer_all) ms !${END_FUNCTION}"
    #   # echo "path loaded"
    # fi

  else
    echo "Error loading '${S1}'... File or path can not be resolved"
  fi

  local S1="${AH_LIBRARIES}/paths.sh"
  if [ -f "${S1}" ]; then
    . "${S1}"
    init_paths
  else
    echo "Error loading '${S1}'... File or path can not be resolved"
  fi

  local S1="${AH_LIBRARIES}/base-layouts.sh"
  if [ -f "${S1}" ]; then
    . "${S1}"
    base_layouts_colors
    base_layouts_colors_olds
    base_layouts_cursors_moves
    base_layouts_icons
    base_layouts_icons_groups
    base_layouts
    load_layouts
  else
    echo "Error loading '${S1}'... File or path can not be resolved"
  fi

  local S1="${AH_LIBRARIES}/functions.sh"
  if [ -f "${S1}" ]; then
    . "${S1}"
    init_functions
  else
    echo "Error loading '${S1}'... File or path can not be resolved"
  fi

  # local S1="${CUSTOM_TMUX}/MAIN.zsh"
  # if [ -f "${S1}" ]; then
  #   . "${S1}"
  #   source_all_tmux
  # else
  #   echo "Error loading '${S1}'... File or path can not be resolved"
  # fi

  local S1="${CUSTOM_ZSH}/MAIN.zsh"
  if [ -f "${S1}" ]; then
    . "${S1}"
    source_all_zsh
  else
    echo "Error loading '${S1}'... File or path can not be resolved"
  fi

}

# if [ "$0" = "zsh" -o "$0" = "-zsh" ] ; then
if [ -n "$(echo "${0}" | grep 'zsh')" ]; then
  if [ -z "${MAIN_INIT}" ]; then
    MAIN_INIT="start"

    # export AHMYZSH="${HOME}/ahmyzsh"
    # . ${AHMYZSH}/libraries/functions.sh
    # . ${AHMYZSH}/libraries/paths.sh
    # . ${AHMYZSH}/libraries/initial_load.zsh
    __AHMYZSH__BOOT__LOADER__
    load_zshenv
    load_zshrc
  fi
fi

# if [ "$0" = "bash" -o "$0" = "-bash" ] ; then
if [ -n "$(echo "${0}" | grep 'bash')" ]; then
  if [ -z "${MAIN_INIT}" ]; then
    MAIN_INIT="start"
    echo pwd=$(pwd)
    echo 'using bash'
  fi
fi
