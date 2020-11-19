# echo "  ${BEGIN_HOURGLASS_END_1} READY in $(timer_all) ms !${END_FUNCTION}"
# echo -e "\a"

function prompt_versions() {
  echo -n "\e[30m   # \e[38;2;0;122;204m>  Code: $(code -v | grep '1\.') \u001b[31m\n"
  # echo -n "\e[30m   # >\e[30m\e[31m\n"
  echo -n "\e[30m   # \e[38;2;55;118;171m>  $(python -V) \u001b[31m\n"
  # echo -n "\e[30m   # >\e[30m\e[31m\n"
  echo -n "\e[30m   # \e[38;2;51;153;51m>  Node: $(node -v) \u001b[31m\n"
  echo -n "\e[30m   # \e[38;2;203;56;55m>  NPM: $(npm -v) \u001b[31m\n"
  echo -n "\e[30m   # \e[38;2;44;142;187m>  Yarn: $(yarn -v) \u001b[31m\n"
  echo -n "\e[30m   # \e[38;2;0;122;204m>  TSC: $(tsc -v) \u001b[31m\n"
  # echo -n "\e[30m   # >\e[30m\e[31m\n"
  echo -n "\e[30m   # \e[38;2;252;198;36m>  $(uname): $(uname -r) \u001b[31m\n"
  echo -n "\e[30m   # \e[37m>  $(zsh --version | grep zsh) \u001b[31m\n"

  echo -n "\u001b[37m\n"
}
