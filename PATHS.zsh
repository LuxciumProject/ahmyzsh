export AHMYZSH="${HOME}/ahmyzsh"
export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
export NODE_REPL="${AHMYZSH}/node-repl"
export OHMYZSH="${AHMYZSH}/ohmyzsh"
export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
export POWERLINE="${AHMYZSH}/powerline"
export PYTHON_REPL="${AHMYZSH}/python-repl"

{
    export ZSH_BIN="${CUSTOM_ZSH}/bin"
    export ZSH_BIN_ETC="${ZSH_BIN}/etc"
    export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
}

export ZSH="${OHMYZSH}"

export PS2="$(tput setab 7)$(tput setaf 0)  "

# Ruby
export WITH_RBENV='true'
export PATH_RBENV='/Users/neb_401/.rbenv/shims'

# GEM
export WITH_BIN_GEM='true'
export PATH_BIN_GEM='/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin'

export PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"

export PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT='--install_base "${HOME}/perl5"'
export PERL_MM_OPT='INSTALL_BASE=/Users/neb_401/perl5'
export PATH_PKG_CONFIG='/usr/local/opt/sqlite/lib/pkgconfig'
# export PATH_PKG_CONFIG="/usr/local/opt/openssl/lib/pkgconfig"
export WITH_ANACONDA='true'
export PATH_ANACONDA3="${HOME}/anaconda3/tungsten/bin"
