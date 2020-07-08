#!/bin/bash

(git clone https://github.com/rbenv/rbenv.git ~/.rbenv)
(cd ~/.rbenv && src/configure && make -C src)
(echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >>~/.zshrc) &
(echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >>~/.zshrc)
source /home/luxcium/.zshrc
eval "$(rbenv init -)"
~/.rbenv/bin/rbenv init
(rbenv install 2.7.1)
(mkdir -p "$(rbenv root)"/plugins) &&
  (git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build)

(curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash)

#install FNM to use NODEJS
(curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash)

(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install 2.5.8
) &
(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install 2.6.6
) &
(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install 2.7.1
) &
(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install jruby-9.2.12.0
) &
(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install maglev-1.0.0
) &
(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install mruby-2.1.1
) &
(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install rbx-5.0
) &
(
  source /home/luxcium/.zshrc
  eval "$(rbenv init -)"
  sudo rbenv install truffleruby-20.1.0
) &

# [luxcium@corsair1]~% curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash
# Checking dependencies for the installation script...
# Checking availability of curl... OK!
# Checking availability of unzip... OK!
# Downloading https://github.com/Schniz/fnm/releases/latest/download/fnm-linux.zip...
# ######################################################################## 100,0%##O#-#
# Installing for Zsh. Appending the following to /home/luxcium/.zshrc:

#   # fnm
export PATH=/home/luxcium/.fnm:$PATH
eval "$(fnm env --multi)"

# In order to apply the changes, open a new terminal or run the following command:

source /home/luxcium/.zshrc

fnm install latest-erbium
fnm install latest-dubnium
fnm install latest-carbon
fnm install latest-boron
fnm install latest-argon
fnm install latest

yarn global add yarn@latest
yarn global add npm@latest
yarn global add typescript@latest
