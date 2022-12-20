# source "${TMUX_BIN}/tmux-functions.sh"

function tmx-lxio() {
	tmux-reload-env
	tmp-set-cache
	TMUX_SESSION="tmx-lxio"
	TMUX_WINDOW_0="tmx-lxio"
	TMUX_WINDOW_1="$TMUX_WINDOW_0"
	PATH_TMUX_SESSION="${PATH_LXIO}"
	link-vscode-tmux
	tmux has-session -t $TMUX_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -AD -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
		tmux-config
		tmux-attach
	else
		TMUX_SESSION="$TMUX_SESSION"
		tmux neww -t $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
		tmux select-window -t :$
		tmux-attach
	fi
	tmp-reset-to-cache

}
function link-vscode-tmux() {
	# !! ------------------------
	tmux has-session -t $TMUX_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -D -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
		tmux-config
		tmux-attach
	else
		tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_0 -c $PATH_LXIO
		tmux-attach
	fi

	tmux has-session -t $VS_CODE_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -D -s $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
		tmux-config
	fi
	tmux link-window -s $TMUX_SESSION -t $VS_CODE_SESSION
	# !! ------------------------
}
function tmx-zsh() {
	tmux-reload-env
	tmp-set-cache

	tmp-reset-to-cache
}
function tmx-questrade() {
	tmux-reload-env
	tmp-set-cache

	tmp-reset-to-cache
}
function tmx-iexcloud() {
	tmux-reload-env
	tmp-set-cache

	tmp-reset-to-cache
}
function tmx-iex() {
	tmux-reload-env
	tmp-set-cache

	tmp-reset-to-cache
}
function tmx-theme() {
	tmux-reload-env
	tmp-set-cache

	tmp-reset-to-cache
}
function lxi-session() {
	tmux-reload-env
	tmp-set-cache

	TMUX_SESSION="$LXI_SESSION"
	TMUX_WINDOW_0='tail_log'
	TMUX_WINDOW_1="$TMUX_WINDOW_0"
	PATH_TMUX_SESSION="$PATH_LXIO"

	tmux has-session -t $TMUX_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux-new
		tmux source "$TMUX_CONFIGS"/common.tmux.conf
		# tmux source "$TMUX_CONFIGS"/theme.tmux.conf

		tmux split-window -h -t $TMUX_SESSION:$TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
		tmux send-keys -t $TMUX_SESSION:$TMUX_WINDOW_0.1 'heroku logs -t -a luxcium' C-m
		tmux select-window -t $TMUX_SESSION:$TMUX_WINDOW_0
		tmux last-pane -t $TMUX_SESSION:$TMUX_WINDOW_0.0
		tmux select-pane -t :.1 -P 'bg=black' -T HEROKU

	fi
	tmux-attach

	tmp-reset-to-cache
}

function vs-code-session() {
	tmux-reload-env
	VS_CODE_SESSION="VSCODE"
	TMUX_SESSION="$VS_CODE_SESSION"
	TMUX_WINDOW_0='VS-Code'

	tmux has-session -t $VS_CODE_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -AD -s $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
		tmux source "$TMUX_CONFIGS"/common.tmux.conf
		# tmux source "$TMUX_CONFIGS"/theme.tmux.conf

		tmux attach -t $TMUX_SESSION

	# tmux-attach

	else
		TMUX_SESSION="$VS_CODE_SESSION"
		tmux neww -t $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
		tmux select-window -t :$
		tmux attach -t $TMUX_SESSION
		#
	fi
	# tmux link-window -s $LXI_SESSION -t $VS_CODE_SESSION

	# tmux has-session -t $LXI_SESSION 2>/dev/null
	# if [ $? != 0 ]; then
	# 	lxi-session
	# fi
	# TMUX_SESSION="$VS_CODE_SESSION"

	# tmp-reset-to-cache
}

function tmux-default() {
	tmux-reload-env
	TMUX_SESSION_D='Default'
	PATH_TMUX_SESSION_D='~/'
	TMUX_WINDOW_0_D='Home'
	TMUX_WINDOW_1_D="$COGS_ICO_X heroku-tail-log"

	tmp-set-cache
	TMUX_SESSION="$TMUX_SESSION_D"
	PATH_TMUX_SESSION="$PATH_TMUX_SESSION_D"
	TMUX_WINDOW_0="$TMUX_WINDOW_0_D"
	TMUX_WINDOW_1="$TMUX_WINDOW_1_D"

	tmux has-session -t $TMUX_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
		tmux-config
		tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_1 -c $PATH_TMUX_SESSION
		tmux send-keys -t $TMUX_SESSION:$TMUX_WINDOW_1 'heroku logs -t -a luxcium' C-m
		tmux select-window -t $TMUX_SESSION:$TMUX_WINDOW_0

	fi
	tmux-attach
	tmp-reset-to-cache
}
