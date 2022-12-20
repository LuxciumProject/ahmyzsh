# OPTIONS         top
#      The appearance and behaviour of tmux may be modified by changing the
#      value of various options.  There are four types of option: server
#      options, session options window options and pane options.

#      The tmux server has a set of global server options which do not apply
#      to any particular window or session or pane.  These are altered with
#      the set-option -s command, or displayed with the show-options -s com‐
#      mand.

#      In addition, each individual session may have a set of session options,
#      and there is a separate set of global session options.  Sessions which
#      do not have a particular option configured inherit the value from the
#      global session options.  Session options are set or unset with the
#      set-option command and may be listed with the show-options command.
#      The available server and session options are listed under the
#      set-option command.

#      Similarly, a set of window options is attached to each window and a set
#      of pane options to each pane.  Pane options inherit from window
#      options.  This means any pane option may be set as a window option to
#      apply the option to all panes in the window without the option set, for
#      example these commands will set the background colour to red for all
#      panes except pane 0:

#            set -w window-style bg=red
#            set -pt:.0 window-style bg=blue

#      There is also a set of global window options from which any unset win‐
#      dow or pane options are inherited.  Window and pane options are altered
#      with set-option -w and -p commands and displayed with show-option -w
#      and -p.

#      tmux also supports user options which are prefixed with a ‘@’.  User
#      options may have any name, so long as they are prefixed with ‘@’, and
#      be set to any string.  For example:

#            $ tmux setw -q @foo "abc123"
#            $ tmux showw -v @foo
#            abc123

#      Commands which set options are as follows:

#      set-option [-aFgopqsuw] [-t target-pane] option value
#                    (alias: set)
#              Set a pane option with -p, a window option with -w, a server
#              option with -s, otherwise a session option.  If the option is
#              not a user option, -w or -s may be unnecessary - tmux will
#              infer the type from the option name, assuming -w for pane
#              options.  If -g is given, the global session or window option
#              is set.

#              -F expands formats in the option value.  The -u flag unsets an
#              option, so a session inherits the option from the global
#              options (or with -g, restores a global option to the default).

#              The -o flag prevents setting an option that is already set and
#              the -q flag suppresses errors about unknown or ambiguous
#              options.

#              With -a, and if the option expects a string or a style, value
#              is appended to the existing setting.  For example:

#                    set -g status-left "foo"
#                    set -ag status-left "bar"

#              Will result in ‘foobar’.  And:

#                    set -g status-style "bg=red"
#                    set -ag status-style "fg=blue"

#              Will result in a red background and blue foreground.  Without
#              -a, the result would be the default background and a blue fore‐
#              ground.

#      show-options [-AgHpqsvw] [-t target-pane] [option]
#                    (alias: show)
#              Show the pane options (or a single option if option is pro‐
#              vided) with -p, the window options with -w, the server options
#              with -s, otherwise the session options.  If the option is not a
#              user option, -w or -s may be unnecessary - tmux will infer the
#              type from the option name, assuming -w for pane options.
#              Global session or window options are listed if -g is used.  -v
#              shows only the option value, not the name.  If -q is set, no
#              error will be returned if option is unset.  -H includes hooks
#              (omitted by default).  -A includes options inherited from a
#              parent set of options, such options are marked with an aster‐
#              isk.  value depends on the option and may be a number, a
#              string, or a flag (on, off, or omitted to toggle).

#      Available server options are:

#      backspace key
#              Set the key sent by tmux for backspace.

#      buffer-limit number
#              Set the number of buffers; as new buffers are added to the top
#              of the stack, old ones are removed from the bottom if necessary
#              to maintain this maximum length.

#      command-alias[] name=value
#              This is an array of custom aliases for commands.  If an unknown
#              command matches name, it is replaced with value.  For example,
#              after:

#                    set -s command-alias[100] zoom='resize-pane -Z'

#              Using:

#                    zoom -t:.1

#              Is equivalent to:

#                    resize-pane -Z -t:.1

#              Note that aliases are expanded when a command is parsed rather
#              than when it is executed, so binding an alias with bind-key
#              will bind the expanded form.

#      default-terminal terminal
#              Set the default terminal for new windows created in this ses‐
#              sion - the default value of the TERM environment variable.  For
#              tmux to work correctly, this must be set to ‘screen’, ‘tmux’ or
#              a derivative of them.

#      escape-time time
#              Set the time in milliseconds for which tmux waits after an
#              escape is input to determine if it is part of a function or
#              meta key sequences.  The default is 500 milliseconds.

#      exit-empty [on | off]
#              If enabled (the default), the server will exit when there are
#              no active sessions.

#      exit-unattached [on | off]
#              If enabled, the server will exit when there are no attached
#              clients.

#      focus-events [on | off]
#              When enabled, focus events are requested from the terminal if
#              supported and passed through to applications running in tmux.
#              Attached clients should be detached and attached again after
#              changing this option.

#      history-file path
#              If not empty, a file to which tmux will write command prompt
#              history on exit and load it from on start.

#      message-limit number
#              Set the number of error or information messages to save in the
#              message log for each client.  The default is 100.

#      set-clipboard [on | external | off]
#              Attempt to set the terminal clipboard content using the
#              xterm(1) escape sequence, if there is an Ms entry in the
#              terminfo(5) description (see the TERMINFO EXTENSIONS section).

#              If set to on, tmux will both accept the escape sequence to cre‐
#              ate a buffer and attempt to set the terminal clipboard.  If set
#              to external, tmux will attempt to set the terminal clipboard
#              but ignore attempts by applications to set tmux buffers.  If
#              off, tmux will neither accept the clipboard escape sequence nor
#              attempt to set the clipboard.

#              Note that this feature needs to be enabled in xterm(1) by set‐
#              ting the resource:

#                    disallowedWindowOps: 20,21,SetXprop

#              Or changing this property from the xterm(1) interactive menu
#              when required.

#      terminal-overrides[] string
#              Allow terminal descriptions read using terminfo(5) to be over‐
#              ridden.  Each entry is a colon-separated string made up of a
#              terminal type pattern (matched using fnmatch(3)) and a set of
#              name=value entries.

#              For example, to set the ‘clear’ terminfo(5) entry to
#              ‘\e[H\e[2J’ for all terminal types matching ‘rxvt*’:

#                    rxvt*:clear=\e[H\e[2J

#              The terminal entry value is passed through strunvis(3) before
#              interpretation.

#      user-keys[] key
#              Set list of user-defined key escape sequences.  Each item is
#              associated with a key named ‘User0’, ‘User1’, and so on.

#              For example:

#                    set -s user-keys[0] "\e[5;30012~"
#                    bind User0 resize-pane -L 3

#      Available session options are:

#      activity-action [any | none | current | other]
#              Set action on window activity when monitor-activity is on.  any
#              means activity in any window linked to a session causes a bell
#              or message (depending on visual-activity) in the current window
#              of that session, none means all activity is ignored (equivalent
#              to monitor-activity being off), current means only activity in
#              windows other than the current window are ignored and other
#              means activity in the current window is ignored but not those
#              in other windows.

#      assume-paste-time milliseconds
#              If keys are entered faster than one in milliseconds, they are
#              assumed to have been pasted rather than typed and tmux key
#              bindings are not processed.  The default is one millisecond and
#              zero disables.

#      base-index index
#              Set the base index from which an unused index should be
#              searched when a new window is created.  The default is zero.

#      bell-action [any | none | current | other]
#              Set action on a bell in a window when monitor-bell is on.  The
#              values are the same as those for activity-action.

#      default-command shell-command
#              Set the command used for new windows (if not specified when the
#              window is created) to shell-command, which may be any sh(1)
#              command.  The default is an empty string, which instructs tmux
#              to create a login shell using the value of the default-shell
#              option.

#      default-shell path
#              Specify the default shell.  This is used as the login shell for
#              new windows when the default-command option is set to empty,
#              and must be the full path of the executable.  When started tmux
#              tries to set a default value from the first suitable of the
#              SHELL environment variable, the shell returned by getpwuid(3),
#              or /bin/sh.  This option should be configured when tmux is used
#              as a login shell.

#      default-size XxY
#              Set the default size of new windows when the window-size option
#              is set to manual or when a session is created with new-session
#              -d.  The value is the width and height separated by an ‘x’
#              character.  The default is 80x24.

#      destroy-unattached [on | off]
#              If enabled and the session is no longer attached to any
#              clients, it is destroyed.

#      detach-on-destroy [on | off]
#              If on (the default), the client is detached when the session it
#              is attached to is destroyed.  If off, the client is switched to
#              the most recently active of the remaining sessions.

#      display-panes-active-colour colour
#              Set the colour used by the display-panes command to show the
#              indicator for the active pane.

#      display-panes-colour colour
#              Set the colour used by the display-panes command to show the
#              indicators for inactive panes.

#      display-panes-time time
#              Set the time in milliseconds for which the indicators shown by
#              the display-panes command appear.

#      display-time time
#              Set the amount of time for which status line messages and other
#              on-screen indicators are displayed.  If set to 0, messages and
#              indicators are displayed until a key is pressed.  time is in
#              milliseconds.

#      history-limit lines
#              Set the maximum number of lines held in window history.  This
#              setting applies only to new windows - existing window histories
#              are not resized and retain the limit at the point they were
#              created.

#      key-table key-table
#              Set the default key table to key-table instead of root.

#      lock-after-time number
#              Lock the session (like the lock-session command) after number
#              seconds of inactivity.  The default is not to lock (set to 0).

#      lock-command shell-command
#              Command to run when locking each client.  The default is to run
#              lock(1) with -np.

#      message-command-style style
#              Set status line message command style.  For how to specify
#              style, see the STYLES section.

#      message-style style
#              Set status line message style.  For how to specify style, see
#              the STYLES section.

#      mouse [on | off]
#              If on, tmux captures the mouse and allows mouse events to be
#              bound as key bindings.  See the MOUSE SUPPORT section for
#              details.

#      prefix key
#              Set the key accepted as a prefix key.  In addition to the stan‐
#              dard keys described under KEY BINDINGS, prefix can be set to
#              the special key ‘None’ to set no prefix.

#      prefix2 key
#              Set a secondary key accepted as a prefix key.  Like prefix,
#              prefix2 can be set to ‘None’.

#      renumber-windows [on | off]
#              If on, when a window is closed in a session, automatically
#              renumber the other windows in numerical order.  This respects
#              the base-index option if it has been set.  If off, do not
#              renumber the windows.

#      repeat-time time
#              Allow multiple commands to be entered without pressing the pre‐
#              fix-key again in the specified time milliseconds (the default
#              is 500).  Whether a key repeats may be set when it is bound
#              using the -r flag to bind-key.  Repeat is enabled for the
#              default keys bound to the resize-pane command.

#      set-titles [on | off]
#              Attempt to set the client terminal title using the tsl and fsl
#              terminfo(5) entries if they exist.  tmux automatically sets
#              these to the \e]0;...\007 sequence if the terminal appears to
#              be xterm(1).  This option is off by default.

#      set-titles-string string
#              String used to set the client terminal title if set-titles is
#              on.  Formats are expanded, see the FORMATS section.

#      silence-action [any | none | current | other]
#              Set action on window silence when monitor-silence is on.  The
#              values are the same as those for activity-action.

#      status [off | on | 2 | 3 | 4 | 5]
#              Show or hide the status line or specify its size.  Using on
#              gives a status line one row in height; 2, 3, 4 or 5 more rows.

#      status-format[] format
#              Specify the format to be used for each line of the status line.
#              The default builds the top status line from the various indi‐
#              vidual status options below.

#      status-interval interval
#              Update the status line every interval seconds.  By default,
#              updates will occur every 15 seconds.  A setting of zero dis‐
#              ables redrawing at interval.

#      status-justify [left | centre | right]
#              Set the position of the window list component of the status
#              line: left, centre or right justified.

#      status-keys [vi | emacs]
#              Use vi or emacs-style key bindings in the status line, for
#              example at the command prompt.  The default is emacs, unless
#              the VISUAL or EDITOR environment variables are set and contain
#              the string ‘vi’.

#      status-left string
#              Display string (by default the session name) to the left of the
#              status line.  string will be passed through strftime(3).  Also
#              see the FORMATS and STYLES sections.

#              For details on how the names and titles can be set see the
#              NAMES AND TITLES section.

#              Examples are:

#                    #(sysctl vm.loadavg)
#                    #[fg=yellow,bold]#(apm -l)%%#[default] [#S]

#              The default is ‘[#S] ’.

#      status-left-length length
#              Set the maximum length of the left component of the status
#              line.  The default is 10.

#      status-left-style style
#              Set the style of the left part of the status line.  For how to
#              specify style, see the STYLES section.

#      status-position [top | bottom]
#              Set the position of the status line.

#      status-right string
#              Display string to the right of the status line.  By default,
#              the current pane title in double quotes, the date and the time
#              are shown.  As with status-left, string will be passed to
#              strftime(3) and character pairs are replaced.

#      status-right-length length
#              Set the maximum length of the right component of the status
#              line.  The default is 40.

#      status-right-style style
#              Set the style of the right part of the status line.  For how to
#              specify style, see the STYLES section.

#      status-style style
#              Set status line style.  For how to specify style, see the
#              STYLES section.

#      update-environment[] variable
#              Set list of environment variables to be copied into the session
#              environment when a new session is created or an existing ses‐
#              sion is attached.  Any variables that do not exist in the
#              source environment are set to be removed from the session envi‐
#              ronment (as if -r was given to the set-environment command).

#      visual-activity [on | off | both]
#              If on, display a message instead of sending a bell when activ‐
#              ity occurs in a window for which the monitor-activity window
#              option is enabled.  If set to both, a bell and a message are
#              produced.

#      visual-bell [on | off | both]
#              If on, a message is shown on a bell in a window for which the
#              monitor-bell window option is enabled instead of it being
#              passed through to the terminal (which normally makes a sound).
#              If set to both, a bell and a message are produced.  Also see
#              the bell-action option.

#      visual-silence [on | off | both]
#              If monitor-silence is enabled, prints a message after the
#              interval has expired on a given window instead of sending a
#              bell.  If set to both, a bell and a message are produced.

#      word-separators string
#              Sets the session's conception of what characters are considered
#              word separators, for the purposes of the next and previous word
#              commands in copy mode.  The default is ‘ -_@’.

#      Available window options are:

#      aggressive-resize [on | off]
#              Aggressively resize the chosen window.  This means that tmux
#              will resize the window to the size of the smallest or largest
#              session (see the window-size option) for which it is the cur‐
#              rent window, rather than the session to which it is attached.
#              The window may resize when the current window is changed on
#              another session; this option is good for full-screen programs
#              which support SIGWINCH and poor for interactive programs such
#              as shells.

#      automatic-rename [on | off]
#              Control automatic window renaming.  When this setting is
#              enabled, tmux will rename the window automatically using the
#              format specified by automatic-rename-format.  This flag is
#              automatically disabled for an individual window when a name is
#              specified at creation with new-window or new-session, or later
#              with rename-window, or with a terminal escape sequence.  It may
#              be switched off globally with:

#                    set-option -wg automatic-rename off

#      automatic-rename-format format
#              The format (see FORMATS) used when the automatic-rename option
#              is enabled.

#      clock-mode-colour colour
#              Set clock colour.

#      clock-mode-style [12 | 24]
#              Set clock hour format.

#      main-pane-height height
#      main-pane-width width
#              Set the width or height of the main (left or top) pane in the
#              main-horizontal or main-vertical layouts.

#      mode-keys [vi | emacs]
#              Use vi or emacs-style key bindings in copy mode.  The default
#              is emacs, unless VISUAL or EDITOR contains ‘vi’.

#      mode-style style
#              Set window modes style.  For how to specify style, see the
#              STYLES section.

#      monitor-activity [on | off]
#              Monitor for activity in the window.  Windows with activity are
#              highlighted in the status line.

#      monitor-bell [on | off]
#              Monitor for a bell in the window.  Windows with a bell are
#              highlighted in the status line.

#      monitor-silence [interval]
#              Monitor for silence (no activity) in the window within interval
#              seconds.  Windows that have been silent for the interval are
#              highlighted in the status line.  An interval of zero disables
#              the monitoring.

#      other-pane-height height
#              Set the height of the other panes (not the main pane) in the
#              main-horizontal layout.  If this option is set to 0 (the
#              default), it will have no effect.  If both the main-pane-height
#              and other-pane-height options are set, the main pane will grow
#              taller to make the other panes the specified height, but will
#              never shrink to do so.

#      other-pane-width width
#              Like other-pane-height, but set the width of other panes in the
#              main-vertical layout.

#      pane-active-border-style style
#              Set the pane border style for the currently active pane.  For
#              how to specify style, see the STYLES section.  Attributes are
#              ignored.

#      pane-base-index index
#              Like base-index, but set the starting index for pane numbers.

#      pane-border-format format
#              Set the text shown in pane border status lines.

#      pane-border-status [off | top | bottom]
#              Turn pane border status lines off or set their position.

#      pane-border-style style
#              Set the pane border style for panes aside from the active pane.
#              For how to specify style, see the STYLES section.  Attributes
#              are ignored.

#      synchronize-panes [on | off]
#              Duplicate input to any pane to all other panes in the same win‐
#              dow (only for panes that are not in any special mode).

#      window-status-activity-style style
#              Set status line style for windows with an activity alert.  For
#              how to specify style, see the STYLES section.

#      window-status-bell-style style
#              Set status line style for windows with a bell alert.  For how
#              to specify style, see the STYLES section.

#      window-status-current-format string
#              Like window-status-format, but is the format used when the win‐
#              dow is the current window.

#      window-status-current-style style
#              Set status line style for the currently active window.  For how
#              to specify style, see the STYLES section.

#      window-status-format string
#              Set the format in which the window is displayed in the status
#              line window list.  See the FORMATS and STYLES sections.

#      window-status-last-style style
#              Set status line style for the last active window.  For how to
#              specify style, see the STYLES section.

#      window-status-separator string
#              Sets the separator drawn between windows in the status line.
#              The default is a single space character.

#      window-status-style style
#              Set status line style for a single window.  For how to specify
#              style, see the STYLES section.

#      window-size largest | smallest | manual | latest
#              Configure how tmux determines the window size.  If set to
#              largest, the size of the largest attached session is used; if
#              smallest, the size of the smallest.  If manual, the size of a
#              new window is set from the default-size option and windows are
#              resized automatically.  With latest, tmux uses the size of the
#              client that had the most recent activity.  See also the
#              resize-window command and the aggressive-resize option.

#      wrap-search [on | off]
#              If this option is set, searches will wrap around the end of the
#              pane contents.  The default is on.

#      xterm-keys [on | off]
#              If this option is set, tmux will generate xterm(1) -style func‐
#              tion key sequences; these have a number included to indicate
#              modifiers such as Shift, Alt or Ctrl.

#      Available pane options are:

#      allow-rename [on | off]
#              Allow programs in the pane to change the window name using a
#              terminal escape sequence (\ek...\e\\).

#      alternate-screen [on | off]
#              This option configures whether programs running inside the pane
#              may use the terminal alternate screen feature, which allows the
#              smcup and rmcup terminfo(5) capabilities.  The alternate screen
#              feature preserves the contents of the window when an interac‐
#              tive application starts and restores it on exit, so that any
#              output visible before the application starts reappears
#              unchanged after it exits.

#      remain-on-exit [on | off]
#              A pane with this flag set is not destroyed when the program
#              running in it exits.  The pane may be reactivated with the
#              respawn-pane command.

#      window-active-style style
#              Set the pane style when it is the active pane.  For how to
#              specify style, see the STYLES section.

#      window-style style
#              Set the pane style.  For how to specify style, see the STYLES
#              section.
