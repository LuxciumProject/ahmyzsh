function source_all() {

	export PYTHONSTARTUP="$HOME/.pythonrc"

	source "${ZSH_LUXCIUM}/.compute_path.sh"
	load_paths

	source "${ZSH_LUXCIUM}/.aliases.sh"
	source "${ZSH_LUXCIUM}/.autocomplete.sh"
	source "${PATH_ZSH_FLAGS}/flg-shortcuts.sh"
	source "${PATH_ZSH_FUNCTIONS}/load_compute_p9k.zsh"
	source "${PATH_ZSH_FUNCTIONS}/load_oh_my_zsh.zsh"
	source "${PATH_ZSH_FUNCTIONS}/precmd.zsh"
	source "${ZSH_LUXCIUM}/completion/node_bash_completion"
	source "${ZSH_LUXCIUM}/completion/npm.completion"

	load_layouts
	load_aliases

	# tmux source-file ~/.tmux.conf
	source $PATH_TMUX_BIN/tmux-functions.sh
	# spectrum
	# Lines configured by zsh-newuser-install
	setopt appendhistory
	setopt autocd
	setopt beep
	bindkey -e
	. /etc/profile
	# End of lines configured by zsh-newuser-install

	HISTFILE="$HOME/.zsh_history"
	HISTSIZE=1000000
	SAVEHIST=1000000
	setopt BANG_HIST              # Treat the '!' character specially during expansion.
	setopt EXTENDED_HISTORY       # Write the history file in the ":start:elapsed;command" format.
	setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
	setopt SHARE_HISTORY          # Share history between all sessions.
	setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
	setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
	setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
	setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
	setopt HIST_IGNORE_SPACE      # Don't record an entry starting with a space.
	setopt HIST_SAVE_NO_DUPS      # Don't write duplicate entries in the history file.
	setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks before recording entry.
	setopt HIST_VERIFY            # Don't execute immediately upon history expansion.
	setopt HIST_BEEP

}
