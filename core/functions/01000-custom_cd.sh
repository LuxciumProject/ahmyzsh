#!/usr/bin/env bash
function cd() {
  # Set a threshold for number of files to display
  local threshold=30

  # Get the current directory
  local current_dir
  current_dir=$(pwd)

  # Call the built-in cd command
  builtin cd "$@"

  local new_current_dir
  new_current_dir=$(pwd)

  # Check if cd was successful
  if [ $? -eq 0 ]; then
    if [[ "${current_dir}" != "${new_current_dir}" ]]; then
      # Get the new directory
      local new_dir
      new_dir=$(pwd)

      # Get the number of files in the directory
      local num_files
      num_files=$(stat -c%N ./* | wc -l)

      # Display the contents of the directory if the number of files is below threshold
      if [ "$num_files" -le $threshold ]; then
        echo ""
        echo "$current_dir"
        /usr/bin/ls --color=auto -halF
        echo "$new_dir"
        echo ""
        # else
        # echo ""
        # echo "Directory contains too many files. Listing directory name only:"
        # echo "$new_dir"
        # echo ""
      fi
    fi
    # if is_in_face_rec_dir; then
    #   deactivate_conda_env
    #   activate_face_rec_env
    # else
    #   deactivate_conda_env
    # fi
  fi
}

function _cd_() {
  catchupPATH="$(/bin/pwd)"
  local tentativePath="${*:-${HOME}}"
  effectivePATH="$( (builtin cd "${tentativePath}" >/dev/null 2>&1 &&
    echo -n "${tentativePath}") ||
    echo -n "${catchupPATH}")"
  _MESSAGE=$(
    [[ "${effectivePATH}" = "${tentativePath}" ]] ||
      echo "ERROR: Path not found or not a directory cd back to ${effectivePATH}"
  )

  [[ "${effectivePATH}" = "${HOME}" ]] && [[ "${catchupPATH}" != "${HOME}" ]] &&
    echo "cd to $HOME"

  if [[ "${effectivePATH}" != "${catchupPATH}" ]]; then
    echo ''
    builtin cd "${effectivePATH}" || return 2
    echo ''
    echo -n "$LBOLD $FRD $_MESSAGE $RSET"
    ( ([[ $(which lolcat 2>/dev/null 2>&1 || exit 5) ]] && (pwd | lolcat))) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd) 2>/dev/null
    ( ([[ $(which colorls 2>/dev/null 2>&1 || exit 5) ]] && (colorls -lA --sd -d --gs))) || ([[ -x $(which /bin/ls) ]] && /bin/ls --color=auto -hal) 2>/dev/null
    ( ([[ $(which lolcat 2>/dev/null 2>&1 || exit 5) ]] && (pwd | lolcat))) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd) 2>/dev/null
    echo -n "$LBOLD $FRD $_MESSAGE $RSET"
    echo ''
  fi
  [[ -z "$_MESSAGE" ]] || return 4

  if is_in_face_rec_dir; then
    activate_face_rec_env
  else
    deactivate_conda_env
  fi
}

# Define a function to activate the 'face_rec' Conda environment
function activate_face_rec_env() {
  # Check if the 'face_rec' environment exists
  if conda info --envs | grep -q "^face_rec\s"; then
    # Activate the 'face_rec' environment
    conda deactivate && conda activate face_rec
    conda activate face_rec
  fi
}

# Define a function to deactivate the current Conda environment
function deactivate_conda_env() {
  # Deactivate the current Conda environment
  conda deactivate && conda activate base
  conda activate base
}

# Define a function to check if the current working directory is a subdirectory of /src/code-with-tim/face_rec/
function is_in_face_rec_dir() {
  { [[ "$PWD" == /src/code-with-tim/face_rec/* ]] || [[ "$PWD" == /src/code-with-tim/face_rec/ ]]; } || false
}

# Override the default 'cd' command
function cd_() {
  # Call the original 'cd' function with the given arguments
  builtin cd "$@" || exit
  # Check if the current working directory is inside /src/code-with-tim/face_rec/
  if is_in_face_rec_dir; then
    activate_face_rec_env
  else
    deactivate_conda_env
  fi
}

# cd "$(pwd)" || exit
