# STATUS LINE         top
#      tmux includes an optional status line which is displayed in the bottom
#      line of each terminal.

#      By default, the status line is enabled and one line in height (it may
#      be disabled or made multiple lines with the status session option) and
#      contains, from left-to-right: the name of the current session in square
#      brackets; the window list; the title of the active pane in double
#      quotes; and the time and date.

#      Each line of the status line is configured with the status-format
#      option.  The default is made of three parts: configurable left and
#      right sections (which may contain dynamic content such as the time or
#      output from a shell command, see the status-left, status-left-length,
#      status-right, and status-right-length options below), and a central
#      window list.  By default, the window list shows the index, name and (if
#      any) flag of the windows present in the current session in ascending
#      numerical order.  It may be customised with the window-status-format
#      and window-status-current-format options.  The flag is one of the fol‐
#      lowing symbols appended to the window name:

#            Symbol    Meaning
#            *         Denotes the current window.
#            -         Marks the last window (previously selected).
#            #         Window activity is monitored and activity has been
#                                 detected.
#            !         Window bells are monitored and a bell has occurred in
#                                 the window.
#            ~         The window has been silent for the monitor-silence
#                                 interval.
#            M         The window contains the marked pane.
#            Z         The window's active pane is zoomed.

#      The # symbol relates to the monitor-activity window option.  The window
#      name is printed in inverted colours if an alert (bell, activity or
#      silence) is present.

#      The colour and attributes of the status line may be configured, the
#      entire status line using the status-style session option and individual
#      windows using the window-status-style window option.

#      The status line is automatically refreshed at interval if it has
#      changed, the interval may be controlled with the status-interval ses‐
#      sion option.

#      Commands related to the status line are as follows:

#      command-prompt [-1Ni] [-I inputs] [-p prompts] [-t target-client]
#              [template]
#              Open the command prompt in a client.  This may be used from
#              inside tmux to execute commands interactively.

#              If template is specified, it is used as the command.  If
#              present, -I is a comma-separated list of the initial text for
#              each prompt.  If -p is given, prompts is a comma-separated list
#              of prompts which are displayed in order; otherwise a single
#              prompt is displayed, constructed from template if it is
#              present, or ‘:’ if not.

#              Before the command is executed, the first occurrence of the
#              string ‘%%’ and all occurrences of ‘%1’ are replaced by the
#              response to the first prompt, all ‘%2’ are replaced with the
#              response to the second prompt, and so on for further prompts.
#              Up to nine prompt responses may be replaced (‘%1’ to ‘%9’).
#              ‘%%%’ is like ‘%%’ but any quotation marks are escaped.

#              -1 makes the prompt only accept one key press, in this case the
#              resulting input is a single character.  -N makes the prompt
#              only accept numeric key presses.  -i executes the command every
#              time the prompt input changes instead of when the user exits
#              the command prompt.

#              The following keys have a special meaning in the command
#              prompt, depending on the value of the status-keys option:

#                    Function                             vi        emacs
#                    Cancel command prompt                Escape    Escape
#                    Delete from cursor to start of word            C-w
#                    Delete entire command                d         C-u
#                    Delete from cursor to end            D         C-k
#                    Execute command                      Enter     Enter
#                    Get next command from history                  Down
#                    Get previous command from history              Up
#                    Insert top paste buffer              p         C-y
#                    Look for completions                 Tab       Tab
#                    Move cursor left                     h         Left
#                    Move cursor right                    l         Right
#                    Move cursor to end                   $         C-e
#                    Move cursor to next word             w         M-f
#                    Move cursor to previous word         b         M-b
#                    Move cursor to start                 0         C-a
#                    Transpose characters                           C-t

#      confirm-before [-p prompt] [-t target-client] command
#                    (alias: confirm)
#              Ask for confirmation before executing command.  If -p is given,
#              prompt is the prompt to display; otherwise a prompt is con‐
#              structed from command.  It may contain the special character
#              sequences supported by the status-left option.

#              This command works only from inside tmux.

#      display-menu [-c target-client] [-t target-pane] [-T title] [-x
#              position] [-y position] name key command ...
#                    (alias: menu)
#              Display a menu on target-client.  target-pane gives the target
#              for any commands run from the menu.

#              A menu is passed as a series of arguments: first the menu item
#              name, second the key shortcut (or empty for none) and third the
#              command to run when the menu item is chosen.  The name and com‐
#              mand are formats, see the FORMATS and STYLES sections.  If the
#              name begins with a hyphen (-), then the item is disabled (shown
#              dim) and may not be chosen.  The name may be empty for a sepa‐
#              rator line, in which case both the key and command should be
#              omitted.

#              -T is a format for the menu title (see FORMATS).

#              -x and -y give the position of the menu.  Both may be a row or
#              column number, or one of the following special values:

#                    Value    Flag    Meaning
#                    R        -x      The right side of the terminal
#                    P        Both    The bottom left of the pane
#                    M        Both    The mouse position
#                    W        -x      The window position on the status line
#                    S        -y      The line above or below the status line

#              Each menu consists of items followed by a key shortcut shown in
#              brackets.  If the menu is too large to fit on the terminal, it
#              is not displayed.  Pressing the key shortcut chooses the corre‐
#              sponding item.  If the mouse is enabled and the menu is opened
#              from a mouse key binding, releasing the mouse button with an
#              item selected will choose that item.  The following keys are
#              also available:

#                    Key    Function
#                    Enter  Choose selected item
#                    Up     Select previous item
#                    Down   Select next item
#                    q      Exit menu

#      display-message [-aIpv] [-c target-client] [-t target-pane] [message]
#                    (alias: display)
#              Display a message.  If -p is given, the output is printed to
#              stdout, otherwise it is displayed in the target-client status
#              line.  The format of message is described in the FORMATS sec‐
#              tion; information is taken from target-pane if -t is given,
#              otherwise the active pane.

#              -v prints verbose logging as the format is parsed and -a lists
#              the format variables and their values.

#              -I forwards any input read from stdin to the empty pane given
#              by target-pane.
