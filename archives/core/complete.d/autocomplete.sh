function load_autocomplete_() {
  # TIME_NOWall=$(/usr/bin/date +%s%N)

  eval "$(gh completion -s zsh)"

  fpath=(${ZSH_PLUGINS}/nestjs-cli-completion ${fpath})
  fpath=(${ZSH_PLUGINS}/zsh-better-npm-completion ${fpath})
  fpath=(${ZSH_PLUGINS}/yarn-autocompletions ${fpath})
  fpath=(${ZSH_PLUGINS}/zsh-completions/src ${fpath})
  fpath=(${CORE_COMPLETE} ${fpath})

  source_ "${ZSH_PLUGINS}/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh"
  source_ "${ZSH_PLUGINS}/yarn-autocompletions/yarn-autocompletions.plugin.zsh"

  # _node_complete() {
  #   local cur_word options
  #   cur_word="${COMP_WORDS[COMP_CWORD]}"
  #   if [[ "${cur_word}" == -* ]]; then
  #     COMPREPLY=($(compgen -W '--track-heap-objects --abort-on-uncaught-exception --napi-modules --redirect-warnings --max-old-space-size --perf-basic-prof --no-warnings --trace-event-file-pattern --check --preserve-symlinks --perf-prof --inspect-port --print --trace-deprecation --inspect-brk --expose_http2 --trace-sync-io --tls-cipher-list --no-force-async-hooks-checks --inspect --eval --loader --pending-deprecation --experimental-worker --expose-http2 --use-bundled-ca --stack-trace-limit --debug-brk --title --experimental-repl-await --debug --no-deprecation --use-openssl-ca --preserve-symlinks-main --interactive --inspect-brk-node --icu-data-dir --v8-options --expose-internals --trace-warnings --require --version --experimental-vm-modules --prof-process --max-http-header-size [has_eval_string] --throw-deprecation --completion-bash --help --zero-fill-buffers --v8-pool-size [ssl_openssl_cert_store] --experimental-modules --openssl-config --trace-event-categories --security-reverts --debug-port --prof-process --debug= -p -pe -v --inspect-brk= -i --print <arg> --inspect= --debug-brk= -e --inspect-brk-node= -c -h -r --trace-events-enabled' -- "${cur_word}"))
  #     return 0
  #   else
  #     COMPREPLY=($(compgen -f "${cur_word}"))
  #     return 0
  #   fi
  # }
  # complete -F _node_complete node node_g

  # TIME_NOW=$(/usr/bin/date +%s%N)
  # function npm_completion() {
  #   ###-begin-npm-completion-###
  #   #
  #   # npm command completion script
  #   #
  #   # Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
  #   # Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
  #   if type complete &>/dev/null; then
  #     _npm_completion() {
  #       local words cword
  #       if type _get_comp_words_by_ref &>/dev/null; then
  #         _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
  #       else
  #         cword="$COMP_CWORD"
  #         words=("${COMP_WORDS[@]}")
  #       fi

  #       local si="$IFS"
  #       IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
  #         COMP_LINE="$COMP_LINE" \
  #         COMP_POINT="$COMP_POINT" \
  #         npm completion -- "${words[@]}" \
  #         2>/dev/null)) || return $?
  #       IFS="$si"
  #       if type __ltrim_colon_completions &>/dev/null; then
  #         __ltrim_colon_completions "${words[cword]}"
  #       fi
  #     }
  #     complete -o default -F _npm_completion npm

  #   elif type compdef &>/dev/null; then
  #     _npm_completion() {
  #       local si=$IFS
  #       compadd -- $(COMP_CWORD=$((CURRENT - 1)) \
  #         COMP_LINE=$BUFFER \
  #         COMP_POINT=0 \
  #         npm completion -- "${words[@]}" \
  #         2>/dev/null)
  #       IFS=$si
  #     }
  #     compdef _npm_completion npm
  #   elif type compctl &>/dev/null; then
  #     _npm_completion() {
  #       local cword line point words si
  #       read -Ac words
  #       read -cn cword
  #       let cword-=1
  #       read -l line
  #       read -ln point
  #       si="$IFS"
  #       IFS=$'\n' reply=($(COMP_CWORD="$cword" \
  #         COMP_LINE="$line" \
  #         COMP_POINT="$point" \
  #         npm completion -- "${words[@]}" \
  #         2>/dev/null)) || return $?
  #       IFS="$si"
  #     }
  #     compctl -K _npm_completion npm
  #   fi
  #   ###-end-npm-completion-###
  # }
  # npm_completion

  # #* pip zsh completion start
  # function _pip_completion() {
  #   local words cword
  #   read -Ac words
  #   read -cn cword
  #   reply=($(COMP_WORDS="$words[*]" \
  #     COMP_CWORD=$((cword - 1)) \
  #     PIP_AUTO_COMPLETE=1 $words[1]))
  # }
  # compctl -K _pip_completion pip
  #* pip zsh completion end

  # The following lines were added by compinstall

  zstyle ':completion:*' list-colors ''
  zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
  zstyle ':completion:*' menu select=20
  zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
  zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
  zstyle ':completion:*' expand prefix
  zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}'
  zstyle :compinstall filename "${CORE_COMPLETE}/autocomplete.sh"

  # autoload -U +X compinit

  autoload -U +X bashcompinit && bashcompinit

  autoload -Uz compinit

  compinit

  # End of lines added by compinstall

  for dump in "${HOME}/.zcompdump(N.mh+24)"; do
    compinit
  done

  # TIME_NOW=TIME_NOWall
  # [[ "${BOOTTIME}" != 1 ]] || echo "${BEGIN_BOOTTIME} \u001b[0m\u001b[35;1m\u001b[1mLoad load_autocomplete alllll................. $(timer_all) ms${END_FUNCTION} +$(timer_from_then)ms" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[30;1m\u001b[1m                        30" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[31;1m\u001b[1m                        31" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[32;1m\u001b[1m                        32" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[33;1m\u001b[1m                        33" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[34;1m\u001b[1m                        34" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[35;1m\u001b[1m                        35" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[36;1m\u001b[1m                        36" >>"${BOOTTIME_LOGFILE}" &
  # echo "\u001b[0m\u001b[37;1m\u001b[1m                        37" >>"${BOOTTIME_LOGFILE}" &
}
