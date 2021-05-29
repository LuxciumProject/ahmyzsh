# CONTROL MODE         top
#      tmux offers a textual interface called control mode.  This allows
#      applications to communicate with tmux using a simple text-only proto‐
#      col.

#      In control mode, a client sends tmux commands or command sequences ter‐
#      minated by newlines on standard input.  Each command will produce one
#      block of output on standard output.  An output block consists of a
#      %begin line followed by the output (which may be empty).  The output
#      block ends with a %end or %error.  %begin and matching %end or %error
#      have two arguments: an integer time (as seconds from epoch) and command
#      number.  For example:

#            %begin 1363006971 2
#            0: ksh* (1 panes) [80x24] [layout b25f,80x24,0,0,2] @2 (active)
#            %end 1363006971 2

#      The refresh-client -C command may be used to set the size of a client
#      in control mode.

#      In control mode, tmux outputs notifications.  A notification will never
#      occur inside an output block.

#      The following notifications are defined:

#      %client-session-changed client session-id name
#              The client is now attached to the session with ID session-id,
#              which is named name.

#      %exit [reason]
#              The tmux client is exiting immediately, either because it is
#              not attached to any session or an error occurred.  If present,
#              reason describes why the client exited.

#      %layout-change window-id window-layout window-visible-layout
#              window-flags
#              The layout of a window with ID window-id changed.  The new lay‐
#              out is window-layout.  The window's visible layout is
#              window-visible-layout and the window flags are window-flags.

#      %output pane-id value
#              A window pane produced output.  value escapes non-printable
#              characters and backslash as octal \xxx.

#      %pane-mode-changed pane-id
#              The pane with ID pane-id has changed mode.

#      %session-changed session-id name
#              The client is now attached to the session with ID session-id,
#              which is named name.

#      %session-renamed name
#              The current session was renamed to name.

#      %session-window-changed session-id window-id
#              The session with ID session-id changed its active window to the
#              window with ID window-id.

#      %sessions-changed
#              A session was created or destroyed.

#      %unlinked-window-add window-id
#              The window with ID window-id was created but is not linked to
#              the current session.

#      %window-add window-id
#              The window with ID window-id was linked to the current session.

#      %window-close window-id
#              The window with ID window-id closed.

#      %window-pane-changed window-id pane-id
#              The active pane in the window with ID window-id changed to the
#              pane with ID pane-id.

#      %window-renamed window-id name
#              The window with ID window-id was renamed to name.
