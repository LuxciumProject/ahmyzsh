# DESCRIPTION top
#      tmux is a terminal multiplexer: it enables a number of terminals to be
#      created, accessed, and controlled from a single screen.  tmux may be
#      detached from a screen and continue running in the background, then
#      later reattached.

#      When tmux is started it creates a new session with a single window and
#      displays it on screen.  A status line at the bottom of the screen shows
#      information on the current session and is used to enter interactive
#      commands.

#      A session is a single collection of pseudo terminals under the manage‐
#      ment of tmux.  Each session has one or more windows linked to it.  A
#      window occupies the entire screen and may be split into rectangular
#      panes, each of which is a separate pseudo terminal (the pty(4) manual
#      page documents the technical details of pseudo terminals).  Any number
#      of tmux instances may connect to the same session, and any number of
#      windows may be present in the same session.  Once all sessions are
#      killed, tmux exits.

#      Each session is persistent and will survive accidental disconnection
#      (such as ssh(1) connection timeout) or intentional detaching (with the
#      ‘C-b d’ key strokes).  tmux may be reattached using:

#            $ tmux attach

#      In tmux, a session is displayed on screen by a client and all sessions
#      are managed by a single server.  The server and each client are sepa‐
#      rate processes which communicate through a socket in /tmp.

#      The options are as follows:

#      -2            Force tmux to assume the terminal supports 256 colours.

#      -C            Start in control mode (see the CONTROL MODE section).
#                    Given twice (-CC) disables echo.

#      -c shell-command
#                    Execute shell-command using the default shell.  If neces‐
#                    sary, the tmux server will be started to retrieve the
#                    default-shell option.  This option is for compatibility
#                    with sh(1) when tmux is used as a login shell.

#      -f file       Specify an alternative configuration file.  By default,
#                    tmux loads the system configuration file from
#                    @SYSCONFDIR@/tmux.conf, if present, then looks for a user
#                    configuration file at ~/.tmux.conf.

#                    The configuration file is a set of tmux commands which
#                    are executed in sequence when the server is first
#                    started.  tmux loads configuration files once when the
#                    server process has started.  The source-file command may
#                    be used to load a file later.

#                    tmux shows any error messages from commands in configura‐
#                    tion files in the first session created, and continues to
#                    process the rest of the configuration file.

#      -L socket-name
#                    tmux stores the server socket in a directory under
#                    TMUX_TMPDIR or /tmp if it is unset.  The default socket
#                    is named default.  This option allows a different socket
#                    name to be specified, allowing several independent tmux
#                    servers to be run.  Unlike -S a full path is not neces‐
#                    sary: the sockets are all created in the same directory.

#                    If the socket is accidentally removed, the SIGUSR1 signal
#                    may be sent to the tmux server process to recreate it
#                    (note that this will fail if any parent directories are
#                    missing).

#      -l            Behave as a login shell.  This flag currently has no
#                    effect and is for compatibility with other shells when
#                    using tmux as a login shell.

#      -S socket-path
#                    Specify a full alternative path to the server socket.  If
#                    -S is specified, the default socket directory is not used
#                    and any -L flag is ignored.

#      -u            Write UTF-8 output to the terminal even if the first
#                    environment variable of LC_ALL, LC_CTYPE, or LANG that is
#                    set does not contain "UTF-8" or "UTF8".

#      -v            Request verbose logging.  Log messages will be saved into
#                    tmux-client-PID.log and tmux-server-PID.log files in the
#                    current directory, where PID is the PID of the server or
#                    client process.  If -v is specified twice, an additional
#                    tmux-out-PID.log file is generated with a copy of every‐
#                    thing tmux writes to the terminal.

#                    The SIGUSR2 signal may be sent to the tmux server process
#                    to toggle logging between on (as if -v was given) and
#                    off.

#      -V            Report the tmux version.

#      command [flags]
#                    This specifies one of a set of commands used to control
#                    tmux, as described in the following sections.  If no com‐
#                    mands are specified, the new-session command is assumed.
