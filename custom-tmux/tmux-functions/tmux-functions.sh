
function activity-action () {
    if [ ${1:-0} = '-h' ];then
     eval "cat << EOF session options
     activity-action [any | none | current | other]
             Set action on window activity when monitor-activity is on.  any
             means activity in any window linked to a session causes a bell
             or message (depending on visual-activity) in the current window
             of that session, none means all activity is ignored (equivalent
             to monitor-activity being off), current means only activity in
             windows other than the current window are ignored and other
             means activity in the current window is ignored but not those
             in other windows."
    else
    tmux activity-action ${@}
    fi
}

function aggressive-resize () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF window options
    aggressive-resize [on | off]
             Aggressively resize the chosen window.  This means that tmux
             will resize the window to the size of the smallest or largest
             session (see the window-size option) for which it is the cur‐
             rent window, rather than the session to which it is attached.
             The window may resize when the current window is changed on
             another session; this option is good for full-screen programs
             which support SIGWINCH and poor for interactive programs such
             as shells."
    else
    tmux aggressive-resize ${@}
    fi
}

function allow-rename () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux allow-rename ${@}
    fi
}

function alternate-screen () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux alternate-screen ${@}
    fi
}

function assume-paste-time () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux assume-paste-time ${@}
    fi
}

function attach-session () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux attach-session ${@}
    fi
}

function automatic-rename () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux automatic-rename ${@}
    fi
}

function automatic-rename-format () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux automatic-rename-format ${@}
    fi
}

function backspace () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux backspace ${@}
    fi
}

function base-index () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux base-index ${@}
    fi
}

function bell-action () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux bell-action ${@}
    fi
}

function bind-key () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux bind-key ${@}
    fi
}

function break-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux break-pane ${@}
    fi
}

function bright () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux bright ${@}
    fi
}

function buffer-limit () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux buffer-limit ${@}
    fi
}

function capture-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux capture-pane ${@}
    fi
}

function choose-buffer () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux choose-buffer ${@}
    fi
}

function choose-client () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux choose-client ${@}
    fi
}

function choose-tree () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux choose-tree ${@}
    fi
}

function clear-history () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux clear-history ${@}
    fi
}

function clock-mode () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux clock-mode ${@}
    fi
}

function clock-mode-colour () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux clock-mode-colour ${@}
    fi
}

function clock-mode-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux clock-mode-style ${@}
    fi
}

function command-alias () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux command-alias[] ${@}
    fi
}

function command-prompt () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux command-prompt ${@}
    fi
}

function confirm-before () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux re ${@}
    fi
}

function copy-mode () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux copy-mode ${@}
    fi
}

function copy-mode-vi () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux copy-mode-vi ${@}
    fi
}

function default-command () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux default-command ${@}
    fi
}

function default-shell () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux default-shell ${@}
    fi
}

function default-size () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux default-size ${@}
    fi
}

function default-terminal () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux default-terminal ${@}
    fi
}

function delete-buffer () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux delete-buffer ${@}
    fi
}

function destroy-unattached () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux destroy-unattached ${@}
    fi
}

function detach-client () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux detach-client ${@}
    fi
}

function detach-on-destroy () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux detach-on-destroy ${@}
    fi
}

function display-menu () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux display-menu ${@}
    fi
}

function display-message () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux display-message ${@}
    fi
}

function display-panes () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux display-panes ${@}
    fi
}

function display-panes-active-colour () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux display-panes-active-colour ${@}
    fi
}

function display-panes-colour () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux display-panes-colour ${@}
    fi
}

function display-panes-time () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux display-panes-time ${@}
    fi
}

function display-time () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux display-time ${@}
    fi
}

function escape-time () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux escape-time ${@}
    fi
}

function even-horizonta () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux even-horizonta ${@}
    fi
}

function even-vertica () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux even-vertica ${@}
    fi
}

function exit-empty () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux exit-empty ${@}
    fi
}

function exit-unattached () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux exit-unattached ${@}
    fi
}
function find-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux ow ${@}
    fi
}

function focus-events () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux focus-events ${@}
    fi
}

function has-session () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux has-session ${@}
    fi
}

# function file () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux ${@}
#     fi
# }

# function history-limit () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux history-limit ${@}
#     fi
# }

function history-limit () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux history-limit ${@}
    fi
}

function if-shell () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux if-shell ${@}
    fi
}

function join-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux join-pane ${@}
    fi
}

function key-table () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux key-table ${@}
    fi
}

function kill-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux kill-pane ${@}
    fi
}

function kill-serve () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux kill-serve ${@}
    fi
}

function kill-session () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux kill-session ${@}
    fi
}

function kill-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux kill-window ${@}
    fi
}

function last-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux last-pane ${@}
    fi
}

function last-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux last-window ${@}
    fi
}

function link-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux link-window ${@}
    fi
}

function list-buffers () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-buffers ${@}
    fi
}

function list-clients () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-clients ${@}
    fi
}

function list-clients () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-clients ${@}
    fi
}

function list-commands () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-commands ${@}
    fi
}

function list-keys () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-keys ${@}
    fi
}

function list-panes () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-panes ${@}
    fi
}

function list-sessions () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-sessions ${@}
    fi
}

function list-windows () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux list-windows ${@}
    fi
}

function load-buffer () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux load-buffer ${@}
    fi
}

function lock-after-time () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux lock-after-time ${@}
    fi
}

function lock-client () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux lock-client ${@}
    fi
}

function lock-command () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux lock-command ${@}
    fi
}

function lock-serve () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux lock-serve ${@}
    fi
}

function lock-session () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux lock-session ${@}
    fi
}

function main-horizonta () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux main-horizonta ${@}
    fi
}

function main-pane-height () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux main-pane-height ${@}
    fi
}

function main-pane-width () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux main-pane-width ${@}
    fi
}

function main-vertica () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux main-vertica ${@}
    fi
}

function message-command-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux message-command-style ${@}
    fi
}

function message-limit () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux message-limit ${@}
    fi
}

function message-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux message-style ${@}
    fi
}

function mode-keys () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux mode-keys ${@}
    fi
}

function mode-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux mode-style ${@}
    fi
}

function monitor-activity () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux monitor-activity ${@}
    fi
}

function monitor-bell () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux monitor-bell ${@}
    fi
}

function monitor-silence () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux monitor-silence ${@}
    fi
}

function mouse () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux mouse ${@}
    fi
}

function move-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux move-pane ${@}
    fi
}

function move-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux move-window ${@}
    fi
}

function new-session () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux new-session ${@}
    fi
}

function new-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux new-window ${@}
    fi
}

function next-layout () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux next-layout ${@}
    fi
}

function next-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux next-window ${@}
    fi
}

function none () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux none ${@}
    fi
}

function other-pane-height () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux other-pane-height ${@}
    fi
}

function other-pane-width () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux other-pane-width ${@}
    fi
}

function pane-active-border-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux pane-active-border-style ${@}
    fi
}

function pane-base-index () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux pane-base-index ${@}
    fi
}

function pane-border-format () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux pane-border-format ${@}
    fi
}

function pane-border-status () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux pane-border-status ${@}
    fi
}

function pane-border-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux pane-border-style ${@}
    fi
}

function paste-buffer () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux paste-buffer ${@}
    fi
}

function pipe-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux pipe-pane ${@}
    fi
}

function prefix () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux prefix ${@}
    fi
}

function prefix2 () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux  prefix2 ${@}
    fi
}

function previous-layout () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux previous-layout ${@}
    fi
}

function previous-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux previous-window ${@}
    fi
}

function push-defaul () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux push-defaul ${@}
    fi
}

function refresh-client () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux refresh-client ${@}
    fi
}

function remain-on-exit () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux remain-on-exit ${@}
    fi
}

function rename-session () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux rename-session ${@}
    fi
}

function rename-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux rename-window ${@}
    fi
}

function renumber-windows () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux renumber-windows ${@}
    fi
}

function repeat-time () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux repeat-time ${@}
    fi
}

function resize-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux resize-pane ${@}
    fi
}

function resize-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux resize-window ${@}
    fi
}

function respawn-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux respawn-pane ${@}
    fi
}

function respawn-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux respawn-window ${@}
    fi
}

function rotate-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux rotate-window ${@}
    fi
}

function run-shell () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux run-shell ${@}
    fi
}

function run-shell () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux run-shell ${@}
    fi
}

function save-buffer () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux save-buffer ${@}
    fi
}

function select-layout () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux select-layout ${@}
    fi
}

function select-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux select-pane ${@}
    fi
}

function select-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux select-window ${@}
    fi
}

function send-keys () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux send-keys ${@}
    fi
}
 function send-prefix () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux  send-prefix ${@}
    fi
}

function set-buffer () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-buffer ${@}
    fi
}

function set-clipboard () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-clipboard ${@}
    fi
}

function set-environment () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-environment ${@}
    fi
}

function set-hook () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-hook ${@}
    fi
}

function set-hook () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-hook ${@}
    fi
}

function set-option () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-option ${@}
    fi
}

function set-option () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-option ${@}
    fi
}

function set-option () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-option ${@}
    fi
}

function set-titles () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-titles ${@}
    fi
}

function set-titles-string () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux set-titles-string ${@}
    fi
}

function show-buffer () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux show-buffer ${@}
    fi
}

function show-environment () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux show-environment ${@}
    fi
}

function show-hooks () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux show-hooks ${@}
    fi
}

function show-messages () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux show-messages ${@}
    fi
}

function show-options () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux show-options ${@}
    fi
}

function silence-action () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux silence-action ${@}
    fi
}

 function source-file () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux source-file ${@}
    fi
}

function split-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux split-window ${@}
    fi
}

function start-serve () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux start-serve ${@}
    fi
}

function status () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status ${@}
    fi
}

function status-format () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-format[] ${@}
    fi
}

function status-interval () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-interval ${@}
    fi
}

function status-justify () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-justify ${@}
    fi
}

function status-keys () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-keys ${@}
    fi
}

function status-left () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-left ${@}
    fi
}

function status-left () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-left ${@}
    fi
}

function status-left-length () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-left-length ${@}
    fi
}

function status-left-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-left-style ${@}
    fi
}

function status-position () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-position ${@}
    fi
}

function status-right () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-right ${@}
    fi
}

function status-right-length () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-right-length ${@}
    fi
}

function status-right-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-right-style ${@}
    fi
}

function status-righ () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-righ ${@}
    fi
}

function status-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux status-style ${@}
    fi
}

function suspend-client () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux suspend-client ${@}
    fi
}

function swap-pane () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux swap-pane ${@}
    fi
}

function swap-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux swap-window ${@}
    fi
}

function switch-client () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux switch-client ${@}
    fi
}

function synchronize-panes () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux synchronize-panes ${@}
    fi
}

function terminal-overrides () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux terminal-overrides[] ${@}
    fi
}

function tiled () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux tiled ${@}
    fi
}

function unbind-key () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux unbind-key ${@}
    fi
}

function unlink-window () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux unlink-window ${@}
    fi
}

function update-environment () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux update-environment[] ${@}
    fi
}

function user-keys () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux user-keys[] ${@}
    fi
}

function visual-activity () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux visual-activity ${@}
    fi
}

function visual-bell () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux visual-bell ${@}
    fi
}

function visual-silence () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux visual-silence ${@}
    fi
}

function wait-for () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux wait-for ${@}
    fi
}

function window-active-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-active-style ${@}
    fi
}

function window-size () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-size ${@}
    fi
}

function window-status-activity-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-activity-style ${@}
    fi
}

function window-status-bell-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-bell-style ${@}
    fi
}

function window-status-current-format () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-current-format ${@}
    fi
}

function window-status-current-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-current-style ${@}
    fi
}

function window-status-format () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-format ${@}
    fi
}

function window-status-last-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-last-style ${@}
    fi
}

function window-status-separator () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-separator ${@}
    fi
}

function window-status-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-status-style ${@}
    fi
}

function window-style () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux window-style ${@}
    fi
}

function word-separators () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux word-separators ${@}
    fi
}

function wrap-search () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux wrap-search ${@}
    fi
}

function xterm-keys () {
    if [ ${1:-0} = '-h' ];then
    eval "cat << EOF

    EOF"
    else
    tmux xterm-keys ${@}
    fi
}

# function  () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux function  () { ${@}
#     fi
# }

# function fg=colou () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux fg=colou ${@}
#     fi
# }

# function bg=colou () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux bg=colou ${@}
#     fi
# }

# function align=left () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux align=left ${@}
#     fi
# }
# else
# tmux  Efunction ${@}
# fill=colou () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux u ${@}
#     fi
# }

# function list=o () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux list=o ${@}
#     fi
# }

# function range=lef () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux range=lef ${@}
#     fi
# }

# function  () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux function  () { ${@}
#     fi
# }

# function %client-session-changed () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %client-session-changed ${@}
#     fi
# }

# function %exit () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %exit ${@}
#     fi
# }

# function %layout-change () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %layout-change ${@}
#     fi
# }

# function %output () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %output ${@}
#     fi
# }

# function %pane-mode-changed () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %pane-mode-changed ${@}
#     fi
# }

# function %session-changed () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %session-changed ${@}
#     fi
# }

# function %session-renamed () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %session-renamed ${@}
#     fi
# }

# function %session-window-changed () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %session-window-changed ${@}
#     fi
# }

# function %sessions-change () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %sessions-change ${@}
#     fi
# }

# function %unlinked-window-add () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %unlinked-window-add ${@}
#     fi
# }

# function %window-add () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %window-add ${@}
#     fi
# }

# function %window-close () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %window-close ${@}
#     fi
# }

# function %window-pane-changed () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %window-pane-changed ${@}
#     fi
# }

# function %window-renamed () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF

#     EOF"
#     else
#     tmux %window-renamed ${@}
#     fi
# }
