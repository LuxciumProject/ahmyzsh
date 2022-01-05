##!!  OFF  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS
# os_icon   # os identifier
# user      #
# custom_js #
# battery   # internal battery
# load      # CPU load
# disk_usage  # disk usage
# ram         # free RAM
# ! todo        # !todo items (https://github.com/todotxt/todo.txt-cli)
# timewarrior # timewarrior tracking status (https://timewarrior.net/)
# status  # exit code of the last command
# newline # !! ======================[ Line #1 ]======================
# dir     # current directory
# newline # !! ======================[ Line #2 ]======================# custom_tsx
# os_icon     # os identifier
# vcs         # git status
# prompt_char # prompt symbol
# disk_usage  # disk usage
# ram         # free RAM
# ! todo        # !todo items (https://github.com/todotxt/todo.txt-cli)
# timewarrior # timewarrior tracking status (https://timewarrior.net/)
# os_icon     # os identifier

##!!  OFF  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS

# typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
# custom_js
# context # user@hostname
# custom_js
# public_ip # public IP address
# local_ip  # public IP address
# proxy   # system-wide http/https/ftp proxy
# example # example user-defined segment (see prompt_example function below)
# swap        # used swap
# =========================[ Line #1 ]=========================
# azure                  # azure account name (https://docs.microsoft.com/en-us/cli/azure)
# vi_mode                # vi mode (you don't need this if you've enabled prompt_char)
# direnv                 # direnv status (https://direnv.net/)
# virtualenv             # python virtual environment (https://docs.python.org/3/library/venv.html)
# custom_tsx
# custom_npm
# node_version           # node.js version
# time                   # current time
# newline                # !! =======================[ Line #2 ]=======================
# command_execution_time # duration of the last command
# custom_pyt
# rbenv           # ruby version from rbenv (https://github.com/rbenv/rbenv)
# anaconda        # conda environment (https://conda.io/)
# background_jobs # presence of background jobs
# pyenv                  # python environment (https://github.com/pyenv/pyenv)
# goenv                  # go environment (https://github.com/syndbg/goenv)
# nodenv                 # node.js version from nodenv (https://github.com/nodenv/nodenv)
# nvm                    # node.js version from nvm (https://github.com/nvm-sh/nvm)
# nodeenv                # node.js environment (https://github.com/ekalinin/nodeenv)
# newline # ! ! =======================[ Line #2 ]=======================
# go_version             # go version (https://golang.org)
# rust_version           # rustc version (https://www.rust-lang.org)
# dotnet_version         # .NET version (https://dotnet.microsoft.com)
# rvm                # ruby version from rvm (https://rvm.io)
# fvm                # flutter version management (https://github.com/leoafarias/fvm)
# luaenv             # lua version from luaenv (https://github.com/cehoffman/luaenv)
# jenv               # java version from jenv (https://github.com/jenv/jenv)
# plenv              # perl version from plenv (https://github.com/tokuhirom/plenv)
# kubecontext        # current kubernetes context (https://kubernetes.io/)
# terraform          # terraform workspace (https://www.terraform.io)
# aws                # aws profile (https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)
# aws_eb_env         # aws elastic beanstalk environment (https://aws.amazon.com/elasticbeanstalk/)
# gcloud             # google cloud cli account and project (https://cloud.google.com/)
# google_app_cred    # google application credentials (https://cloud.google.com/docs/authentication/production)

# nordvpn            # nordvpn connection status, linux only (https://nordvpn.com/)
# ranger             # ranger shell (https://github.com/ranger/ranger)
# nnn                # nnn shell (https://github.com/jarun/nnn)
# vim_shell          # vim shell indicator (:sh)
# midnight_commander # midnight commander shell (https://midnight-commander.org/)
# nix_shell          # nix shell (https://nixos.org/nixos/nix-pills/developing-with-nix-shell.html)
# vi_mode            # vi mode (you don't need this if you've enabled prompt_char)
# vpn_ip             # virtual private network indicator
# newline         # !! ============[ Line #3 ]====================
# typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
# custom_js
# context # user@hostname
# custom_js
# public_ip # public IP address
# local_ip  # public IP address
# proxy   # system-wide http/https/ftp proxy
# example # example user-defined segment (see prompt_example function below)
# swap        # used swap
# =========================[ Line #1 ]=========================
# azure                  # azure account name (https://docs.microsoft.com/en-us/cli/azure)
# vi_mode                # vi mode (you don't need this if you've enabled prompt_char)
# direnv                 # direnv status (https://direnv.net/)
# virtualenv             # python virtual environment (https://docs.python.org/3/library/venv.html)
# pyenv                  # python environment (https://github.com/pyenv/pyenv)
# goenv                  # go environment (https://github.com/syndbg/goenv)
# nodenv                 # node.js version from nodenv (https://github.com/nodenv/nodenv)
# nvm                    # node.js version from nvm (https://github.com/nvm-sh/nvm)
# nodeenv                # node.js environment (https://github.com/ekalinin/nodeenv)
# newline # ! ! =======================[ Line #2 ]=======================
# go_version             # go version (https://golang.org)
# rust_version           # rustc version (https://www.rust-lang.org)
# dotnet_version         # .NET version (https://dotnet.microsoft.com)
# rvm                # ruby version from rvm (https://rvm.io)
# fvm                # flutter version management (https://github.com/leoafarias/fvm)
# luaenv             # lua version from luaenv (https://github.com/cehoffman/luaenv)
# jenv               # java version from jenv (https://github.com/jenv/jenv)
# plenv              # perl version from plenv (https://github.com/tokuhirom/plenv)
# kubecontext        # current kubernetes context (https://kubernetes.io/)
# terraform          # terraform workspace (https://www.terraform.io)
# aws                # aws profile (https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)
# aws_eb_env         # aws elastic beanstalk environment (https://aws.amazon.com/elasticbeanstalk/)
# gcloud             # google cloud cli account and project (https://cloud.google.com/)
# google_app_cred    # google application credentials (https://cloud.google.com/docs/authentication/production)

# nordvpn            # nordvpn connection status, linux only (https://nordvpn.com/)
# ranger             # ranger shell (https://github.com/ranger/ranger)
# nnn                # nnn shell (https://github.com/jarun/nnn)
# vim_shell          # vim shell indicator (:sh)
# midnight_commander # midnight commander shell (https://midnight-commander.org/)
# nix_shell          # nix shell (https://nixos.org/nixos/nix-pills/developing-with-nix-shell.html)
# vi_mode            # vi mode (you don't need this if you've enabled prompt_char)
# vpn_ip             # virtual private network indicator
# wifi               #
