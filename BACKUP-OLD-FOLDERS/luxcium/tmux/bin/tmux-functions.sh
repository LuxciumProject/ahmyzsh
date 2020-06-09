function tmux-reload-env() {
	source "${PATH_TMUX_BIN}/tmux-env.sh"
}

function tmux-session() {
	tmux has-session -t $TMUX_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new-session -Ad -s $TMUX_SESSION -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
	fi
}
function pyx() {
	TMUX_SESSION="Default"
	TMUX_WINDOW_0="Main"
	PATH_TMUX_SESSION="${HOME}/"
	tmux split-window -v -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.1" -c $PATH_TMUX_SESSION zsh -c 'py'
}
# alias jxx='rlwrap --polling --always-readline "zsh -l jx"'
function jx() {
	TMUX_SESSION="Default"
	TMUX_WINDOW_0="Main"
	PATH_TMUX_SESSION="${HOME}/"
	echo "${PWD}"
	tmux split-window -v -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.1" -c "${PWD}" zsh -c 'js'
}

function tmux-config() {
	tmux source "$PATH_TMUX_CONFIG"/common.tmux.conf
	tmux source "$PATH_TMUX_CONFIG"/theme.tmux.conf
}

alias tmx="tmux-start"
function tmux-start() {
	TMUX_SESSION="Default"
	PATH_TMUX_SESSION="${HOME}/"
	PATH_TMUX_LXIO="${PATH_LXIO}/"
	TMUX_WINDOW_0="Main"

	local TMX_WIN_HOME="${TMUX_SESSION}:${TMUX_WINDOW_0}"


	tmux has-session -t "${TMUX_SESSION}" 2>/dev/null
	if [ $? != 0 ]; then
		tmux new-session -Ad -s "${TMUX_SESSION}" -n "${TMUX_WINDOW_0}" -c "${PWD}"
		tmux split-window -h -t "${TMX_WIN_HOME}.0" -c "${PATH_LXIO}"
		tmux split-window -h -t "${TMX_WIN_HOME}.0" -c "${PWD}" zsh -c js
		tmux split-window -v -t "${TMX_WIN_HOME}.2" -c "${PATH_LXIO}"

		local TMX_WIN_HOME="${TMUX_SESSION}:${TMUX_WINDOW_0}.0"
		local TMX_WIN_JS="${TMUX_SESSION}:${TMUX_WINDOW_0}.1"
		local TMX_WIN_LXIO="${TMUX_SESSION}:${TMUX_WINDOW_0}.2"
		local TMX_WIN_HTAILLOG="${TMUX_SESSION}:${TMUX_WINDOW_0}.3"

		tmux select-pane -T 'HOME' -t "${TMX_WIN_HOME}" #-P 'bg=black'
		tmux select-pane -T 'JS' -t "${TMX_WIN_JS}"     #-P 'bg=black'
		tmux select-pane -T 'HTAILLOG' -t "${TMX_WIN_HTAILLOG}" #-P 'bg=black'
		tmux select-pane -T 'LXIO' -t "${TMX_WIN_LXIO}" #-P 'bg=black'

		tmux resize-pane  -t "${TMX_WIN_HOME}" -R 30
		tmux resize-pane  -t "${TMX_WIN_JS}" -R 25
		tmux resize-pane  -t "${TMX_WIN_HTAILLOG}" -L 5
		tmux resize-pane -t "${TMX_WIN_LXIO}"  -D 2

		tmux-config

		tmux send-keys -t "${TMX_WIN_HTAILLOG}" 'clear' C-m
	fi

	tmux select-pane -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0"
	tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0" 'clear' C-m
	tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.2" 'clear;htop' C-m
	sleep 3
	tmux-attach

}


alias tmx2="tmux-start2"
function tmux-start2() {
	TMUX_SESSION="Default"
	PATH_TMUX_SESSION="${HOME}/"
	PATH_TMUX_LXIO="${PATH_LXIO}/"
	TMUX_WINDOW_0="Main"

	local TMX_WIN_MAIN="Main"
	local TMX_WIN_HOME="Home"
	local TMX_WIN_LXIO="LXIO"
	local TMX_WIN_JS="JS"
	local TMX_WIN_PYX="PYX"
	local TMX_WIN_HTAILLOG="HtailLog"
	local TMX_PAN_HOME="${TMUX_SESSION}:${TMX_WIN_MAIN}.0"
	local TMX_PAN_LXIO="${TMUX_SESSION}:${TMX_WIN_MAIN}.1"
	local TMX_PAN_JS="${TMUX_SESSION}:${TMX_WIN_MAIN}.2"
	local TMX_PAN_PYX="${TMUX_SESSION}:${TMX_WIN_MAIN}.3"
	local TMX_PAN_HTAILLOG="${TMUX_SESSION}:${TMX_WIN_MAIN}.4"

	tmux has-session -t "${TMUX_SESSION}" 2>/dev/null
	if [ $? != 0 ]; then

		tmux new-session -Ad -s "${TMUX_SESSION}" -n "${TMX_WIN_MAIN}" -c "${PATH_TMUX_LXIO}"
		tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_HOME}" zsh -i
		tmux new-window -d -c "${PATH_TMUX_LXIO}" -n "${TMX_WIN_LXIO}" zsh -i
		tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_JS}" js
		tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_PYX}" py
		tmux new-window -d -c "${PATH_TMUX_SESSION}" -n "${TMX_WIN_HTAILLOG}" htaillog

		tmux split-window -h -t "${TMX_PAN_HOME}" -c "${PATH_TMUX_SESSION}"
		tmux split-window -v -t "${TMX_PAN_HOME}" -c "${PATH_TMUX_SESSION}"
		tmux split-window -h -t "${TMX_PAN_JS}" -c "${PATH_TMUX_SESSION}"
		tmux split-window -v -t "${TMX_PAN_JS}" -c "${PATH_TMUX_SESSION}"

		# tmux link-window -s -t

		tmux link-window -s ":${TMX_WIN_HOME}" -t ":${TMX_WIN_MAIN}.0"
		tmux link-window -s ":${TMX_WIN_LXIO}" -t ":${TMX_WIN_MAIN}.1"
		tmux link-window -s ":${TMX_WIN_JS}" -t ":${TMX_WIN_MAIN}.2"
		tmux link-window -s ":${TMX_WIN_PYX}" -t ":${TMX_WIN_MAIN}.3"
		tmux link-window -s ":${TMX_WIN_HTAILLOG}" -t ":${TMX_WIN_MAIN}.4"

		# tmux select-pane -T 'HOME' -t "${TMX_PAN_HOME}" #-P 'bg=black'
		# tmux select-pane -T 'LXIO' -t "${TMX_PAN_LXIO}" #-P 'bg=black'
		# tmux select-pane -T 'JS' -t "${TMX_PAN_JS}"     #-P 'bg=black'
		# tmux select-pane -T 'PYX' -t "${TMX_PAN_PYX}"   #-P 'bg=black'
		# tmux select-pane -T 'HTAILLOG' -t "${TMX_PAN_HTAILLOG}" -P 'bg=black'
		tmux-config

		# tmux send-keys -t "${TMX_PAN_HOME}" 'cd ~/;clear' C-m
		# tmux send-keys -t "${TMX_PAN_LXIO}" 'cd '"${PATH_TMUX_LXIO}"\;clear C-m
		# tmux send-keys -t "${TMX_PAN_HTAILLOG}" 'cd ~/;clear;htaillog' C-m
		# tmux send-keys -t "${TMX_PAN_JS}" 'cd ~/;clear;zsh -c js' C-m
		# tmux send-keys -t "${TMX_PAN_PYX}" 'cd ~/;clear;zsh -c py' C-m
	fi

	# tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0" 'tmux select-pane -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0"' C-m
	# tmux send-keys -t "${TMUX_SESSION}:${TMUX_WINDOW_0}.0" 'clear' C-m
	sleep 4
	tmux-attach

}

function tstart() {
	tmux-start
}

function tmux-new() {
	tmux has-session -t $TMUX_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -s $TMUX_SESSION -Ad -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
	else
		tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_1 -c $PATH_TMUX_SESSION
	fi
}

function tmux-attach() {
	if [ -z "${TMUX}" ]; then
		tmux attach -t $TMUX_SESSION
	else
		tmux switch -t $TMUX_SESSION
	fi
}
function tmux-switch() {
	tmux-attach
}

function tmp-set-cache() {
	TEMP_TMUX_SESSION="$TMUX_SESSION"
	TEMP_TMUX_WINDOW_0="$TMUX_WINDOW_0"
	TEMP_TMUX_WINDOW_1="$TMUX_WINDOW_1"
	PATH_TEMP_TMUX_SESSION="$PATH_TMUX_SESSION"
	TEMP_TMUX_SESSION="$TMUX_SESSION"
}
function tmp-reset-to-cache() {
	TMUX_SESSION="$TEMP_TMUX_SESSION"
	TMUX_WINDOW_0="$TEMP_TMUX_WINDOW_0"
	TMUX_WINDOW_1="$TEMP_TMUX_WINDOW_1"
	PATH_TMUX_SESSION="$PATH_TEMP_TMUX_SESSION"
	TMUX_SESSION="$TEMP_TMUX_SESSION"
}



function tmux_color_palette() {
	for i in $(seq 0 2 15); do
		for j in $(seq $i $(expr $i + 1)); do
			for k in $(seq 1 $(expr 1 - ${#j})); do
				printf " "
			done
			printf "\x1b[38;5;${j}mcolour${j}"
			[[ $(expr $j % 2) != 1 ]] && printf "    "
		done
		printf "\n"
	done
}
