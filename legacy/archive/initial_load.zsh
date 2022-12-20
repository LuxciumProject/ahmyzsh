function __AHMYZSH__BOOT__LOADER__() {
  local PATH_FILE="${HOME}/.cache/path.env"
  if [ -f "$PATH_FILE" ]; then
    . $PATH_FILE
  fi
  local S1="${AHMYZSH}/libraries/paths.sh"
  . "${S1}"
  personal_projects_paths
  init_paths
  local S1="${ZSH_LAYOUTS}/base-layouts.sh"
  . ${S1}
  load_layouts
  local S1="${AHMYZSH}/libraries/functions.sh"
  . "${S1}"
  init_functions
  call_ init_projects_paths
  call_ my_envs
  local S1="${CUSTOM_TMUX}/MAIN.zsh"
  . ${S1}
  source_all_tmux
  local S1="${CUSTOM_ZSH}/MAIN.zsh"
  . ${S1}
  source_all_zsh

}
# local TIMER_NOW=$(/bin/date +%s%N)
# local TIMER_NOW=$(/usr/bin/date +%s%N)

# local TIMER_VALUE=$(($((${TIMER_NOW} - ${TIMER_ALL_THEN})) / 1000000))
# local TIMER_VALUE=10
# echo " ${TIMER_VALUE}   ms   to   'PATH'"

# Loading the basic env variable to load and process the bootstraping
# Other envs will be laoded later in the process
function my_envs() {
  ## fnm
  export FNM_ALIASES="${HOME}/.fnm/aliases"
  {
    export NODEDEFAULT="${FNM_ALIASES}/default/bin"
    export NODELATEST="${FNM_ALIASES}/latest/bin"
    export NODELATEST_ARGON="${FNM_ALIASES}/latest-argon/bin"
    export NODELATEST_BORON="${FNM_ALIASES}/latest-boron/bin"
    export NODELATEST_CARBON="${FNM_ALIASES}/latest-carbon/bin"
    export NODELATEST_DUBNIUM="${FNM_ALIASES}/latest-dubnium/bin"
    export NODELATEST_ERBIUM="${FNM_ALIASES}/latest-erbium/bin"

    alias node-default="${NODEDEFAULT}/node"
    alias node-latest="${NODELATEST}/node"
    alias node-argon="${NODELATEST_ARGON}/node"
    alias node-boron="${NODELATEST_BORON}/node"
    alias node-carbon="${NODELATEST_CARBON}/node"
    alias node-dubnium="${NODELATEST_DUBNIUM}/node"
    alias node-erbium="${NODELATEST_ERBIUM}/node"
  }

  export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"

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

  export LOAD_ONCE_00="true"

  export NODE_DEPLOYEMENT_ENV='false'
  export NODE_ENV='development'
  export NODE_LOCAL_ENV='true'
  export NODE_NO_READLINE=1
  export NODE_REMOTE_ENV='true'
  export NODE_REPL_HISTORY_SIZE=10000
  export NODE_REPL_HISTORY="${HOME}/.node_repl_history"
  export NODE_REPL_MODE='sloppy'
  export NODE_TEST_ENV='false'
  export NPM_CHECK_INSTALLER='pnpm'
  export PYTHONSTARTUP="${HOME}/.pythonrc"

  export GITHUB_TOKEN="${MAC_BOOK_PRO_ENV_REPO_GIST_HOOK_NOTIFICATIONS}"
  export GITHUB_PASSWORD="${GITHUB_TOKEN}"
  export GITHUB_USER='Luxcium'

  export LOCALPORT=80
  export PORT=80
  export SERVER='dev-server'
}

function __LOCALE__() {

  # This variable overrides the value of the ‘LANG’ variable and the value of any of the other variables starting with # ‘LC_’.
  # LC_ALL="fr_CA.UTF-8"

  # This variable determines the locale category for character collation information within ranges in glob brackets and # for sorting.
  LC_COLLATE="fr_CA.UTF-8"

  # This variable determines the locale category for character handling functions. If the MULTIBYTE option is in effect # this variable or LANG should contain a value that reflects the character set in use, even if it is a single-byte # character set, unless only the 7-bit subset (ASCII) is used. For example, if the character set is ISO-8859-1, a # suitable value might be en_US.iso88591 (certain Linux distributions) or en_US.ISO8859-1 (MacOS).
  LC_CTYPE="fr_CA.UTF-8"

  # This variable determines the language in which messages should be written. Note that zsh does not use message # catalogs.
  LC_MESSAGES="fr_CA.UTF-8"

  # This variable affects the decimal point character and thousands separator character for the formatted input/output # functions and string conversion functions. Note that zsh ignores this setting when parsing floating point # mathematical expressions.
  LC_NUMERIC="fr_CA.UTF-8"

  # This variable determines the locale category for date and time formatting in prompt escape sequences.
  LC_TIME="fr_CA.UTF-8"

  LC_MONETARY="fr_CA.UTF-8"

}

# alias right_prompt_off=sleep 100
