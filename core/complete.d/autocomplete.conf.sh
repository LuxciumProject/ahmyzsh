# The following lines were added by compinstall
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=20
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' expand prefix
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename "${ZSH_SOURCES}/completion/autocomplete.conf.sh"

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

autoload -Uz compinit
compinit
# End of lines added by compinstall

for dump in "${HOME}/.zcompdump(N.mh+24)"; do
  compinit
done
compinit -C
