# EXAMPLES         top
#      To create a new tmux session running vi(1):

#            $ tmux new-session vi

#      Most commands have a shorter form, known as an alias.  For new-session,
#      this is new:

#            $ tmux new vi

#      Alternatively, the shortest unambiguous form of a command is accepted.
#      If there are several options, they are listed:

#            $ tmux n
#            ambiguous command: n, could be: new-session, new-window, next-window

#      Within an active session, a new window may be created by typing ‘C-b c’
#      (Ctrl followed by the ‘b’ key followed by the ‘c’ key).

#      Windows may be navigated with: ‘C-b 0’ (to select window 0), ‘C-b 1’
#      (to select window 1), and so on; ‘C-b n’ to select the next window; and
#      ‘C-b p’ to select the previous window.

#      A session may be detached using ‘C-b d’ (or by an external event such
#      as ssh(1) disconnection) and reattached with:

#            $ tmux attach-session

#      Typing ‘C-b ?’ lists the current key bindings in the current window; up
#      and down may be used to navigate the list or ‘q’ to exit from it.

#      Commands to be run when the tmux server is started may be placed in the
#      ~/.tmux.conf configuration file.  Common examples include:

#      Changing the default prefix key:

#            set-option -g prefix C-a
#            unbind-key C-b
#            bind-key C-a send-prefix

#      Turning the status line off, or changing its colour:

#            set-option -g status off
#            set-option -g status-style bg=blue

#      Setting other options, such as the default command, or locking after 30
#      minutes of inactivity:

#            set-option -g default-command "exec /bin/ksh"
#            set-option -g lock-after-time 1800

#      Creating new key bindings:

#            bind-key b set-option status
#            bind-key / command-prompt "split-window 'exec man %%'"
#            bind-key S command-prompt "new-window -n %1 'ssh %1'"
