# # The following commands are available to manage clients and sessions:
function client-session() {
    eval "cat << EOF  CLIENTS AND SESSIONS
     The tmux server manages clients, sessions, windows and panes.  Clients
     are attached to sessions to interact with them, either when they are
     created with the new-session command, or later with the attach-session
     command.  Each session has one or more windows linked into it.  Windows
     may be linked to multiple sessions and are made up of one or more
     panes, each of which contains a pseudo terminal.  Commands for creat‐
     ing, linking and otherwise manipulating windows are covered in the
     WINDOWS AND PANES section.

     The following commands are available to manage clients and sessions:

     attach-session [-dErx] [-c working-directory] [-t target-session]
                   (alias: attach)
             If run from outside tmux, create a new client in the current
             terminal and attach it to target-session.  If used from inside,
             switch the current client.  If -d is specified, any other
             clients attached to the session are detached.  If -x is given,
             send SIGHUP to the parent process of the client as well as
             detaching the client, typically causing it to exit.  -r signi‐
             fies the client is read-only (only keys bound to the
             detach-client or switch-client commands have any effect)

             If no server is started, attach-session will attempt to start
             it; this will fail unless sessions are created in the configu‐
             ration file.

             The target-session rules for attach-session are slightly
             adjusted: if tmux needs to select the most recently used ses‐
             sion, it will prefer the most recently used unattached session.

             -c will set the session working directory (used for new win‐
             dows) to working-directory.

             If -E is used, the update-environment option will not be
             applied.

     detach-client [-aP] [-E shell-command] [-s target-session] [-t
             target-client]
                   (alias: detach)
             Detach the current client if bound to a key, the client speci‐
             fied with -t, or all clients currently attached to the session
             specified by -s.  The -a option kills all but the client given
             with -t.  If -P is given, send SIGHUP to the parent process of
             the client, typically causing it to exit.  With -E, run
             shell-command to replace the client.

     has-session [-t target-session]
                   (alias: has)
             Report an error and exit with 1 if the specified session does
             not exist.  If it does exist, exit with 0.

     kill-server
             Kill the tmux server and clients and destroy all sessions.

     kill-session [-aC] [-t target-session]
             Destroy the given session, closing any windows linked to it and
             no other sessions, and detaching all clients attached to it.
             If -a is given, all sessions but the specified one is killed.
             The -C flag clears alerts (bell, activity, or silence) in all
             windows linked to the session.

     list-clients [-F format] [-t target-session]
                   (alias: lsc)
             List all clients attached to the server.  For the meaning of
             the -F flag, see the FORMATS section.  If target-session is
             specified, list only clients connected to that session.

     list-commands [-F format]
                   (alias: lscm)
             List the syntax of all commands supported by tmux.

     list-sessions [-F format]
                   (alias: ls)
             List all sessions managed by the server.  For the meaning of
             the -F flag, see the FORMATS section.

     lock-client [-t target-client]
                   (alias: lockc)
             Lock target-client, see the lock-server command.

     lock-session [-t target-session]
                   (alias: locks)
             Lock all clients attached to target-session.

     new-session [-AdDEPX] [-c start-directory] [-F format] [-n window-name]
             [-s session-name] [-t group-name] [-x width] [-y height]
             [shell-command]
                   (alias: new)
             Create a new session with name session-name.

             The new session is attached to the current terminal unless -d
             is given.  window-name and shell-command are the name of and
             shell command to execute in the initial window.  With -d, the
             initial size comes from the global default-size option; -x and
             -y can be used to specify a different size.  ‘-’ uses the size
             of the current client if any.  If -x or -y is given, the
             default-size option is set for the session.

             If run from a terminal, any termios(4) special characters are
             saved and used for new windows in the new session.

             The -A flag makes new-session behave like attach-session if
             session-name already exists; in this case, -D behaves like -d
             to attach-session, and -X behaves like -x to attach-session.

             If -t is given, it specifies a session group.  Sessions in the
             same group share the same set of windows - new windows are
             linked to all sessions in the group and any windows closed
             removed from all sessions.  The current and previous window and
             any session options remain independent and any session in a
             group may be killed without affecting the others.  The
             group-name argument may be:

             1.      the name of an existing group, in which case the new
                     session is added to that group;

             2.      the name of an existing session - the new session is
                     added to the same group as that session, creating a new
                     group if necessary;

             3.      the name for a new group containing only the new ses‐
                     sion.

             -n and shell-command are invalid if -t is used.

             The -P option prints information about the new session after it
             has been created.  By default, it uses the format
             ‘#{session_name}:’ but a different format may be specified with
             -F.

             If -E is used, the update-environment option will not be
             applied.

     refresh-client [-cDlLRSU] [-C XxY] [-F flags] [-t target-client]
             [adjustment]
                   (alias: refresh)
             Refresh the current client if bound to a key, or a single
             client if one is given with -t.  If -S is specified, only
             update the client's status line.

             The -U, -D, -L -R, and -c flags allow the visible portion of a
             window which is larger than the client to be changed.  -U moves
             the visible part up by adjustment rows and -D down, -L left by
             adjustment columns and -R right.  -c returns to tracking the
             cursor automatically.  If adjustment is omitted, 1 is used.
             Note that the visible position is a property of the client not
             of the window, changing the current window in the attached ses‐
             sion will reset it.

             -C sets the width and height of a control client and -F sets a
             comma-separated list of flags.  Currently the only flag avail‐
             able is ‘no-output’ to disable receiving pane output.

             -l requests the clipboard from the client using the xterm(1)
             escape sequence and stores it in a new paste buffer.

             -L, -R, -U and -D move the visible portion of the window left,
             right, up or down by adjustment, if the window is larger than
             the client.  -c resets so that the position follows the cursor.
             See the window-size option.

     rename-session [-t target-session] new-name
                   (alias: rename)
             Rename the session to new-name.

     show-messages [-JT] [-t target-client]
                   (alias: showmsgs)
             Show client messages or server information.  Any messages dis‐
             played on the status line are saved in a per-client message
             log, up to a maximum of the limit set by the message-limit
             server option.  With -t, display the log for target-client.  -J
             and -T show debugging information about jobs and terminals.

     source-file [-nqv] path ...
                   (alias: source)
             Execute commands from one or more files specified by path
             (which may be glob(7) patterns).  If -q is given, no error will
             be returned if path does not exist.  With -n, the file is
             parsed but no commands are executed.  -v shows the parsed com‐
             mands and line numbers if possible.

     start-server
                   (alias: start)
             Start the tmux server, if not already running, without creating
             any sessions.

     suspend-client [-t target-client]
                   (alias: suspendc)
             Suspend a client by sending SIGTSTP (tty stop).

     switch-client [-ElnprZ] [-c target-client] [-t target-session] [-T
             key-table]
                   (alias: switchc)
             Switch the current session for client target-client to
             target-session.  As a special case, -t may refer to a pane (a
             target that contains ‘:’, ‘.’ or ‘%’), to change session, win‐
             dow and pane.  In that case, -Z keeps the window zoomed if it
             was zoomed.  If -l, -n or -p is used, the client is moved to
             the last, next or previous session respectively.  -r toggles
             whether a client is read-only (see the attach-session command).

             If -E is used, update-environment option will not be applied.

             -T sets the client's key table; the next key from the client
             will be interpreted from key-table.  This may be used to con‐
             figure multiple prefix keys, or to bind commands to sequences
             of keys.  For example, to make typing ‘abc’ run the list-keys
             command:

                   bind-key -Ttable2 c list-keys
                   bind-key -Ttable1 b switch-client -Ttable2
                   bind-key -Troot   a switch-client -Ttable1" | less
}
