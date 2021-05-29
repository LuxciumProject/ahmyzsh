# GLOBAL AND SESSION ENVIRONMENT         top
#      When the server is started, tmux copies the environment into the global
#      environment; in addition, each session has a session environment.  When
#      a window is created, the session and global environments are merged.
#      If a variable exists in both, the value from the session environment is
#      used.  The result is the initial environment passed to the new process.

#      The update-environment session option may be used to update the session
#      environment from the client when a new session is created or an old
#      reattached.  tmux also initialises the TMUX variable with some internal
#      information to allow commands to be executed from inside, and the TERM
#      variable with the correct terminal setting of ‘screen’.

#      Commands to alter and view the environment are:

#      set-environment [-gru] [-t target-session] name [value]
#                    (alias: setenv)
#              Set or unset an environment variable.  If -g is used, the
#              change is made in the global environment; otherwise, it is
#              applied to the session environment for target-session.  The -u
#              flag unsets a variable.  -r indicates the variable is to be
#              removed from the environment before starting a new process.

#      show-environment [-gs] [-t target-session] [variable]
#                    (alias: showenv)
#              Display the environment for target-session or the global envi‐
#              ronment with -g.  If variable is omitted, all variables are
#              shown.  Variables removed from the environment are prefixed
#              with ‘-’.  If -s is used, the output is formatted as a set of
#              Bourne shell commands.
