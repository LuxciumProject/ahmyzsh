# echo "  ${BEGIN_HOURGLASS_END_1} READY in $(timer_all) ms !${END_FUNCTION}"
# echo -e "\a"
function program_is_installed() {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  (type $1 2 >/dev/null) >&1 || { local return_=0; }
  # return value
  echo "$return_"
}

# return 1 if local npm package is installed at ./node_modules, else 0
# example
# echo "gruntacular : $(npm_package_is_installed gruntacular)"
function npm_package_is_installed() {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  (ls node_modules | grep $1 2 >/dev/null) >&1 || { local return_=0; }
  # return value
  echo "$return_"
}

# display a message in red with a cross by it
# example
# echo echo_fail "No"
function echo_fail() {
  # echo first argument in red
  printf "\e[31m✘ ${1}"
  # reset colours back to normal
  printf "\033\e[0m"
}

# display a message in green with a tick by it
# example
# echo echo_fail "Yes"
function echo_pass() {
  # echo first argument in green
  echo -n "\e[32m✔ ${1}"
  # reset colours back to normal
  printf "\033\e[0m"
}

# echo pass or fail
# example
# echo echo_if 1 "Passed"
# echo echo_if 0 "Failed"
function echo_if() {
  if [ $1 = 1 ]; then
    echo_pass $2
  else
    echo_fail $2
  fi
}

function prompt_versions() {
  # echo -e "\a"
  (
    (echo -n "\e[30m# \e[38;2;203;56;55m>  NPM: $(npm -v) \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;0;122;204m>  TSC: $(tsc -v | cut -f 2 -d ' ') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;0;122;204m>  Code: $(code -v | grep '1\.') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;44;142;187m>  Yarn: $(yarn -v) \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;0;122;204m>  Docker: $(docker --version | cut -f 1 -d ',' | cut -f 3 -d ' ')  \u001b[31m\n") &
    (echo -n "\e[30m# \e[37m>  ZSH: $(zsh --version | grep zsh | cut -f 2 -d ' ') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;252;198;36m>  $(uname): $(uname -r | cut -f 1 -d '-') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;51;153;51m>  Node: $(node -v | cut -f 2 -d 'v') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;55;118;171m>  Python: $(python -V | cut -f 2 -d ' ') \u001b[31m\n") &
  )
  sleep 0.25
  (echo -n "\u001b[37m")
  (echo -e "\a")
}

function prompt_versions2() {
  echo -e "\a"
  (
    (echo -n "\e[30m# \e[38;2;203;56;55m>  NPM: $(npm -v) \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;0;122;204m>  TSC: $(tsc -v | cut -f 2 -d ' ') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;0;122;204m>  Code: $(code -v | grep '1\.') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;44;142;187m>  Yarn: $(yarn -v) \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;0;122;204m>  Docker: $(docker --version | cut -f 1 -d ',' | cut -f 3 -d ' ')  \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;55;118;171m>  Python: $(python -V | cut -f 2 -d ' ') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;252;198;36m>  $(uname): $(uname -r | cut -f 1 -d '-') \u001b[31m\n") &
    (echo -n "\e[30m# \e[38;2;51;153;51m>  Node: $(node -v) \u001b[31m\n") &
    (echo -n "\e[30m# \e[37m>  ZSH: $(zsh --version | grep zsh | cut -f 2 -d ' ') \u001b[31m\n") &
    (echo -n "\u001b[37m") &
  )

  # sleep 0.35
}

function prompt_versions_sync() {

  (
    (echo -n "\e[30m# \e[38;2;0;122;204m>  Code: $(code -v | grep '1\.') \u001b[31m\n")
    # (# echo -n "\e[30m# >\e[30m\e[31m\n")
    (echo -n "\e[30m# \e[38;2;55;118;171m>  Python: $(python -V | cut -f 2 -d ' ') \u001b[31m\n")
    # (# echo -n "\e[30m# >\e[30m\e[31m\n")
    (echo -n "\e[30m# \e[38;2;51;153;51m>  Node: $(node -v) \u001b[31m\n")
    (echo -n "\e[30m# \e[38;2;203;56;55m>  NPM: $(npm -v) \u001b[31m\n")
    (echo -n "\e[30m# \e[38;2;44;142;187m>  Yarn: $(yarn -v) \u001b[31m\n")
    (echo -n "\e[30m# \e[38;2;0;122;204m>  TSC: $(tsc -v | cut -f 2 -d ' ') \u001b[31m\n")
    # (# echo -n "\e[30m# >\e[30m\e[31m\n")
    (echo -n "\e[30m# \e[38;2;252;198;36m>  $(uname): $(uname -r | cut -f 1 -d '-') \u001b[31m\n")
    (echo -n "\e[30m# \e[38;2;0;122;204m>  Docker: $(docker --version | cut -f 1 -d ',' | cut -f 3 -d ' ')  \u001b[31m\n")
    (echo -n "\e[30m# \e[37m>  ZSH: $(zsh --version | grep zsh | cut -f 2 -d ' ') \u001b[31m\n")
    (echo -n "\u001b[37m")
  )
  # sleep 0.2
}
