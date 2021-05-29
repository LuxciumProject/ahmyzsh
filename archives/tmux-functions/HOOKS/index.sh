# HOOKS         top
#      tmux allows commands to run on various triggers, called hooks.  Most
#      tmux commands have an after hook and there are a number of hooks not
#      associated with commands.

#      Hooks are stored as array options, members of the array are executed in
#      order when the hook is triggered.  Hooks may be configured with the
#      set-hook or set-option commands and displayed with show-hooks or
#      show-options -H.  The following two commands are equivalent:

#             set-hook -g pane-mode-changed[42] 'set -g status-left-style bg=red'
#             set-option -g pane-mode-changed[42] 'set -g status-left-style bg=red'

#      Setting a hook without specifying an array index clears the hook and
#      sets the first member of the array.

#      A command's after hook is run after it completes, except when the com‐
#      mand is run as part of a hook itself.  They are named with an ‘after-’
#      prefix.  For example, the following command adds a hook to select the
#      even-vertical layout after every split-window:

#            set-hook -g after-split-window "selectl even-vertical"

#      All the notifications listed in the CONTROL MODE section are hooks
#      (without any arguments), except %exit.  The following additional hooks
#      are available:

#      alert-activity          Run when a window has activity.  See
#                              monitor-activity.

#      alert-bell              Run when a window has received a bell.  See
#                              monitor-bell.

#      alert-silence           Run when a window has been silent.  See
#                              monitor-silence.

#      client-attached         Run when a client is attached.

#      client-detached         Run when a client is detached

#      client-resized          Run when a client is resized.

#      client-session-changed  Run when a client's attached session is
#                              changed.

#      pane-died               Run when the program running in a pane exits,
#                              but remain-on-exit is on so the pane has not
#                              closed.

#      pane-exited             Run when the program running in a pane exits.

#      pane-focus-in           Run when the focus enters a pane, if the
#                              focus-events option is on.

#      pane-focus-out          Run when the focus exits a pane, if the
#                              focus-events option is on.

#      pane-set-clipboard      Run when the terminal clipboard is set using
#                              the xterm(1) escape sequence.

#      session-created         Run when a new session created.

#      session-closed          Run when a session closed.

#      session-renamed         Run when a session is renamed.

#      window-linked           Run when a window is linked into a session.

#      window-renamed          Run when a window is renamed.

#      window-unlinked         Run when a window is unlinked from a session.

#      Hooks are managed with these commands:

#      set-hook [-agRu] [-t target-session] hook-name command
#              Without -R, sets (or with -u unsets) hook hook-name to command.
#              If -g is given, hook-name is added to the global list of hooks,
#              otherwise it is added to the session hooks (for target-session
#              with -t).  -a appends to a hook.  Like options, session hooks
#              inherit from the global ones.

#              With -R, run hook-name immediately.

#      show-hooks [-g] [-t target-session]
#              Shows the global list of hooks with -g, otherwise the session
#              hooks.
