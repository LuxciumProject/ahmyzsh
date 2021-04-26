# COMMAND PARSING AND EXECUTION         top
#      tmux supports a large number of commands which can be used to control
#      its behaviour.  Each command is named and can accept zero or more flags
#      and arguments.  They may be bound to a key with the bind-key command or
#      run from the shell prompt, a shell script, a configuration file or the
#      command prompt.  For example, the same set-option command run from the
#      shell prompt, from ~/.tmux.conf and bound to a key may look like:

#            $ tmux set-option -g status-style bg=cyan

#            set-option -g status-style bg=cyan

#            bind-key C set-option -g status-style bg=cyan

#      Here, the command name is ‘set-option’, ‘-g’ is a flag and
#      ‘status-style’ and ‘bg=cyan’ are arguments.

#      tmux distinguishes between command parsing and execution.  In order to
#      execute a command, tmux needs it to be split up into its name and argu‐
#      ments.  This is command parsing.  If a command is run from the shell,
#      the shell parses it; from inside tmux or from a configuration file,
#      tmux does.  Examples of when tmux parses commands are:

#            -   in a configuration file;

#            -   typed at the command prompt (see command-prompt);

#            -   given to bind-key;

#            -   passed as arguments to if-shell or confirm-before.

#      To execute commands, each client has a ‘command queue’.  A global com‐
#      mand queue not attached to any client is used on startup for configura‐
#      tion files like ~/.tmux.conf.  Parsed commands added to the queue are
#      executed in order.  Some commands, like if-shell and confirm-before,
#      parse their argument to create a new command which is inserted immedi‐
#      ately after themselves.  This means that arguments can be parsed twice
#      or more - once when the parent command (such as if-shell) is parsed and
#      again when it parses and executes its command.  Commands like if-shell,
#      run-shell and display-panes stop execution of subsequent commands on
#      the queue until something happens - if-shell and run-shell until a
#      shell command finishes and display-panes until a key is pressed.  For
#      example, the following commands:

#            new-session; new-window
#            if-shell "true" "split-window"
#            kill-session

#      Will execute new-session, new-window, if-shell, the shell command
#      true(1), split-window and kill-session in that order.

#      The COMMANDS section lists the tmux commands and their arguments.
