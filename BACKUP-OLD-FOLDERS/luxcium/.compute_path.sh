# If you need to have gettext first in your PATH run:
#   echo 'export export PATH="/usr/local/opt/gettext/bin:$PATH"' >> ~/.zshrc
function load_paths() {
  # /Users/neb_401/.vscode-insiders/extensions
  # Completion folder
  export PATH_COMPLETION="${ZSH_LUXCIUM}/completion"
  
  export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
  export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
  
  export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
  export PATH_OH_MY_ZSH="${ZSH}"
  export PATH_QUESTRADE="${PATH_LXIO_PRJ}/questrade-ts"
  export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
  export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"
  
  # /Users/neb_401/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode
  export DEV_POPNLOCK="${PATH_INSDR_CODE_EXT}/dev-pop-n-lock-theme-vscode"
  
  export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}/functions"
  export PATH_ZSH_FLAGS="${ZSH_LUXCIUM}/flags"
  export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
  
  export PATH_TMUX_CONFIG="${ZSH_LUXCIUM}/tmux"
  export PATH_TMUX_BIN="${PATH_TMUX_CONFIG}/bin"
  export TMUX_COMMON_CONF="${PATH_TMUX_CONFIG}/common.tmux.config"
  export TMUX_COMMON_THEME="${PATH_TMUX_CONFIG}/theme.tmux.config"
  export PATH_TMUX_MAIN_CONFIG="${HOME}/.tmux.conf"
  
  # /usr/local/opt/python/libexec/bin
  
  export PS2="$(tput setab 7)$(tput setaf 0)  "
  
  # Ruby
  export WITH_RBENV='true'
  export PATH_RBENV='/Users/neb_401/.rbenv/shims'
  
  # GEM
  export WITH_BIN_GEM='true'
  export PATH_BIN_GEM='/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin'
  
  PERL5LIB="/Users/neb_401/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
  export PERL5LIB
  PERL_LOCAL_LIB_ROOT="/Users/neb_401/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
  export PERL_LOCAL_LIB_ROOT
  PERL_MB_OPT='--install_base "/Users/neb_401/perl5"'
  export PERL_MB_OPT
  PERL_MM_OPT='INSTALL_BASE=/Users/neb_401/perl5'
  export PERL_MM_OPT
  export PATH_PKG_CONFIG='/usr/local/opt/sqlite/lib/pkgconfig'
  # export PATH_PKG_CONFIG="/usr/local/opt/openssl/lib/pkgconfig"
  
}

SHOW_LOAD_CUTLS="true"
function compute_path() {
  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  export PATH="$PATH_TMUX_BIN/:${PATH}"
  if [ "$WITH_RBENV" = 'true' ]; then
    export PATH="$PATH_RBENV:${PATH}"
  fi
  if [ "$WITH_BIN_GEM" = 'true' ]; then
    export PATH="$PATH_BIN_GEM:${PATH}"
  fi
  if [ "$WITH_CHROME" = 'true' ]; then
    export PATH="$PATH_CHROME:${PATH}"
  fi
  
  if [ "$GNU_COREUTILS" = 'true' ]; then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/apr-util/bin:${PATH}"
    export PATH="/usr/local/opt/apr/bin:${PATH}"
    export PATH="/usr/local/opt/binutils/bin:${PATH}"
    export PATH="/usr/local/opt/ed/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/file-formula/bin:${PATH}"
    export PATH="/usr/local/opt/findutils/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/gnu-getopt/bin:${PATH}"
    export PATH="/usr/local/opt/gnu-indent/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/gnu-which/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/grep/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/m4/bin:${PATH}"
    export PATH="/usr/local/opt/make/libexec/gnubin:${PATH}"
    export PATH="/usr/local/opt/qt/bin:${PATH}"
    export PATH="/usr/local/opt/sqlite/bin:${PATH}"
    export PATH="/usr/local/opt/sqlite/lib/pkgconfig:${PATH}"
    export PATH="/usr/local/opt/unzip/bin:${PATH}"
  fi
  
  if [ "$SHOW_LOAD_CUTLS" = 'true' ]; then
    if [ "$GNU_COREUTILS" != 'true' ]; then
      echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)GNU/Linux utils$(tput setaf 1) NOT in function${BKBK}\n"
    fi
    if [ "$GNU_COREUTILS" = 'true' ]; then
      
      echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)GNU/Linux utils$(tput setaf 2) are in function${BKBK}\n"
    fi
    SHOW_LOAD_CUTLS="false"
  fi
  
  export PATH="/Users/neb_401/perl5/bin:${PATH}"
  export PATH="/opt/X11/bin:${PATH}"
  export PATH="/usr/local/MacGPG2/bin:${PATH}"
  export PATH="/usr/local/share/dotnet:${PATH}"
  export PATH="/Users/neb_401/.dotnet/tools:${PATH}"
  export PATH="/usr/local/opt/sqlite/bin:${PATH}"
  
  # FNM
  eval "$(/usr/local/bin/fnm env --multi)"
  
}
