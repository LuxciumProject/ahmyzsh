# NAMES AND TITLES         top
#      tmux distinguishes between names and titles.  Windows and sessions have
#      names, which may be used to specify them in targets and are displayed
#      in the status line and various lists: the name is the tmux identifier
#      for a window or session.  Only panes have titles.  A pane's title is
#      typically set by the program running inside the pane using an escape
#      sequence (like it would set the xterm(1) window title in X(7)).  Win‐
#      dows themselves do not have titles - a window's title is the title of
#      its active pane.  tmux itself may set the title of the terminal in
#      which the client is running, see the set-titles option.

#      A session's name is set with the new-session and rename-session com‐
#      mands.  A window's name is set with one of:

#      1.      A command argument (such as -n for new-window or new-session).

#      2.      An escape sequence (if the allow-rename option is turned on):

#                    $ printf '\033kWINDOW_NAME\033\\'

#      3.      Automatic renaming, which sets the name to the active command
#              in the window's active pane.  See the automatic-rename option.

#      When a pane is first created, its title is the hostname.  A pane's
#      title can be set via the title setting escape sequence, for example:

#            $ printf '\033]2;My Title\033\\'

#      It can also be modified with the select-pane -T command.
