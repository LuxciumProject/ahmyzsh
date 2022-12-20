# FORMATS         top
#      Certain commands accept the -F flag with a format argument.  This is a
#      string which controls the output format of the command.  Format vari‐
#      ables are enclosed in ‘#{’ and ‘}’, for example ‘#{session_name}’.  The
#      possible variables are listed in the table below, or the name of a tmux
#      option may be used for an option's value.  Some variables have a
#      shorter alias such as ‘#S’; ‘##’ is replaced by a single ‘#’, ‘#,’ by a
#      ‘,’ and ‘#}’ by a ‘}’.

#      Conditionals are available by prefixing with ‘?’ and separating two
#      alternatives with a comma; if the specified variable exists and is not
#      zero, the first alternative is chosen, otherwise the second is used.
#      For example ‘#{?session_attached,attached,not attached}’ will include
#      the string ‘attached’ if the session is attached and the string ‘not
#      attached’ if it is unattached, or ‘#{?automatic-rename,yes,no}’ will
#      include ‘yes’ if automatic-rename is enabled, or ‘no’ if not.  Condi‐
#      tionals can be nested arbitrarily.  Inside a conditional, ‘,’ and ‘}’
#      must be escaped as ‘#,’ and ‘#}’, unless they are part of a ‘#{...}’
#      replacement.  For example:

#            #{?pane_in_mode,#[fg=white#,bg=red],#[fg=red#,bg=white]}#W .

#      String comparisons may be expressed by prefixing two comma-separated
#      alternatives by ‘==’, ‘!=’, ‘<’, ‘>’, ‘<=’ or ‘>=’ and a colon.  For
#      example ‘#{==:#{host},myhost}’ will be replaced by ‘1’ if running on
#      ‘myhost’, otherwise by ‘0’.  ‘||’ and ‘&&’ evaluate to true if either
#      or both of two comma-separated alternatives are true, for example
#      ‘#{||:#{pane_in_mode},#{alternate_on}}’.

#      An ‘m’ specifies an fnmatch(3) or regular expression comparison.  The
#      first argument is the pattern and the second the string to compare.  An
#      optional third argument specifies flags: ‘r’ means the pattern is a
#      regular expression instead of the default fnmatch(3) pattern, and ‘i’
#      means to ignore case.  For example: ‘#{m:*foo*,#{host}}’ or
#      ‘#{m/ri:^A,MYVAR}’.  A ‘C’ performs a search for an fnmatch(3) pattern
#      or regular expression in the pane content and evaluates to zero if not
#      found, or a line number if found.  Like ‘m’, an ‘r’ flag means search
#      for a regular expression and ‘i’ ignores case.  For example:
#      ‘#{C/r:^Start}’

#      A limit may be placed on the length of the resultant string by prefix‐
#      ing it by an ‘=’, a number and a colon.  Positive numbers count from
#      the start of the string and negative from the end, so
#      ‘#{=5:pane_title}’ will include at most the first five characters of
#      the pane title, or ‘#{=-5:pane_title}’ the last five characters.  A
#      suffix or prefix may be given as a second argument - if provided then
#      it is appended or prepended to the string if the length has been
#      trimmed, for example ‘#{=/5/...:pane_title}’ will append ‘...’ if the
#      pane title is more than five characters.

#      Prefixing a time variable with ‘t:’ will convert it to a string, so if
#      ‘#{window_activity}’ gives ‘1445765102’, ‘#{t:window_activity}’ gives
#      ‘Sun Oct 25 09:25:02 2015’.  The ‘b:’ and ‘d:’ prefixes are basename(3)
#      and dirname(3) of the variable respectively.  ‘q:’ will escape sh(1)
#      special characters.  ‘E:’ will expand the format twice, for example
#      ‘#{E:status-left}’ is the result of expanding the content of the
#      status-left option rather than the option itself.  ‘T:’ is like ‘E:’
#      but also expands strftime(3) specifiers.  ‘S:’, ‘W:’ or ‘P:’ will loop
#      over each session, window or pane and insert the format once for each.
#      For windows and panes, two comma-separated formats may be given: the
#      second is used for the current window or active pane.  For example, to
#      get a list of windows formatted like the status line:

#            #{W:#{E:window-status-format} ,#{E:window-status-current-format} }

#      A prefix of the form ‘s/foo/bar/:’ will substitute ‘foo’ with ‘bar’
#      throughout.  The first argument may be an extended regular expression
#      and a final argument may be ‘i’ to ignore case, for example
#      ‘s/a(.)/\1x/i:’ would change ‘abABab’ into ‘bxBxbx’.

#      In addition, the last line of a shell command's output may be inserted
#      using ‘#()’.  For example, ‘#(uptime)’ will insert the system's uptime.
#      When constructing formats, tmux does not wait for ‘#()’ commands to
#      finish; instead, the previous result from running the same command is
#      used, or a placeholder if the command has not been run before.  If the
#      command hasn't exited, the most recent line of output will be used, but
#      the status line will not be updated more than once a second.  Commands
#      are executed with the tmux global environment set (see the GLOBAL AND
#      SESSION ENVIRONMENT section).

#      An ‘l’ specifies that a string should be interpreted literally and not
#      expanded.  For example ‘#{l:#{?pane_in_mode,yes,no}}’ will be replaced
#      by ‘#{?pane_in_mode,yes,no}’.

#      The following variables are available, where appropriate:

#      Variable name          Alias    Replaced with
#      alternate_on                    1 if pane is in alternate screen
#      alternate_saved_x               Saved cursor X in alternate screen
#      alternate_saved_y               Saved cursor Y in alternate screen
#      buffer_created                  Time buffer created
#      buffer_name                     Name of buffer
#      buffer_sample                   Sample of start of buffer
#      buffer_size                     Size of the specified buffer in bytes
#      client_activity                 Time client last had activity
#      client_control_mode             1 if client is in control mode
#      client_created                  Time client created
#      client_discarded                Bytes discarded when client behind
#      client_height                   Height of client
#      client_key_table                Current key table
#      client_last_session             Name of the client's last session
#      client_name                     Name of client
#      client_pid                      PID of client process
#      client_prefix                   1 if prefix key has been pressed
#      client_readonly                 1 if client is readonly
#      client_session                  Name of the client's session
#      client_termname                 Terminal name of client
#      client_termtype                 Terminal type of client
#      client_tty                      Pseudo terminal of client
#      client_utf8                     1 if client supports utf8
#      client_width                    Width of client
#      client_written                  Bytes written to client
#      command                         Name of command in use, if any
#      command_list_alias              Command alias if listing commands
#      command_list_name               Command name if listing commands
#      command_list_usage              Command usage if listing commands
#      copy_cursor_line                Line the cursor is on in copy mode
#      copy_cursor_word                Word under cursor in copy mode
#      copy_cursor_x                   Cursor X position in copy mode
#      copy_cursor_y                   Cursor Y position in copy mode
#      cursor_character                Character at cursor in pane
#      cursor_flag                     Pane cursor flag
#      cursor_x                        Cursor X position in pane
#      cursor_y                        Cursor Y position in pane
#      history_bytes                   Number of bytes in window history
#      history_limit                   Maximum window history lines
#      history_size                    Size of history in lines
#      hook                            Name of running hook, if any
#      hook_pane                       ID of pane where hook was run, if any
#      hook_session                    ID of session where hook was run, if
#                                      any
#      hook_session_name               Name of session where hook was run, if
#                                      any
#      hook_window                     ID of window where hook was run, if any
#      hook_window_name                Name of window where hook was run, if
#                                      any
#      host                   #H       Hostname of local host
#      host_short             #h       Hostname of local host (no domain name)
#      insert_flag                     Pane insert flag
#      keypad_cursor_flag              Pane keypad cursor flag
#      keypad_flag                     Pane keypad flag
#      line                            Line number in the list
#      mouse_all_flag                  Pane mouse all flag
#      mouse_any_flag                  Pane mouse any flag
#      mouse_button_flag               Pane mouse button flag
#      mouse_line                      Line under mouse, if any
#      mouse_sgr_flag                  Pane mouse SGR flag
#      mouse_standard_flag             Pane mouse standard flag
#      mouse_utf8_flag                 Pane mouse UTF-8 flag
#      mouse_word                      Word under mouse, if any
#      mouse_x                         Mouse X position, if any
#      mouse_y                         Mouse Y position, if any
#      origin_flag                     Pane origin flag
#      pane_active                     1 if active pane
#      pane_at_bottom                  1 if pane is at the bottom of window
#      pane_at_left                    1 if pane is at the left of window
#      pane_at_right                   1 if pane is at the right of window
#      pane_at_top                     1 if pane is at the top of window
#      pane_bottom                     Bottom of pane
#      pane_current_command            Current command if available
#      pane_current_path               Current path if available
#      pane_dead                       1 if pane is dead
#      pane_dead_status                Exit status of process in dead pane
#      pane_format                     1 if format is for a pane
#      pane_height                     Height of pane
#      pane_id                #D       Unique pane ID
#      pane_in_mode                    1 if pane is in a mode
#      pane_index             #P       Index of pane
#      pane_input_off                  1 if input to pane is disabled
#      pane_left                       Left of pane
#      pane_marked                     1 if this is the marked pane
#      pane_marked_set                 1 if a marked pane is set
#      pane_mode                       Name of pane mode, if any
#      pane_path              #T       Path of pane (can be set by
#                                      application)
#      pane_pid                        PID of first process in pane
#      pane_pipe                       1 if pane is being piped
#      pane_right                      Right of pane
#      pane_search_string              Last search string in copy mode
#      pane_start_command              Command pane started with
#      pane_synchronized               1 if pane is synchronized
#      pane_tabs                       Pane tab positions
#      pane_title             #T       Title of pane (can be set by
#                                      application)
#      pane_top                        Top of pane
#      pane_tty                        Pseudo terminal of pane
#      pane_width                      Width of pane
#      pid                             Server PID
#      rectangle_toggle                1 if rectangle selection is activated
#      scroll_position                 Scroll position in copy mode
#      scroll_region_lower             Bottom of scroll region in pane
#      scroll_region_upper             Top of scroll region in pane
#      selection_end_x                 X position of the end of the selection
#      selection_end_y                 Y position of the end of the selection
#      selection_present               1 if selection started in copy mode
#      selection_start_x               X position of the start of the
#                                      selection
#      selection_start_y               Y position of the start of the
#                                      selection
#      session_activity                Time of session last activity
#      session_alerts                  List of window indexes with alerts
#      session_attached                Number of clients session is attached
#                                      to
#      session_created                 Time session created
#      session_format                  1 if format is for a session
#      session_group                   Name of session group
#      session_group_list              List of sessions in group
#      session_group_size              Size of session group
#      session_grouped                 1 if session in a group
#      session_id                      Unique session ID
#      session_last_attached           Time session last attached
#      session_many_attached           1 if multiple clients attached
#      session_name           #S       Name of session
#      session_stack                   Window indexes in most recent order
#      session_windows                 Number of windows in session
#      socket_path                     Server socket path
#      start_time                      Server start time
#      version                         Server version
#      window_active                   1 if window active
#      window_activity                 Time of window last activity
#      window_activity_flag            1 if window has activity
#      window_bell_flag                1 if window has bell
#      window_bigger                   1 if window is larger than client
#      window_end_flag                 1 if window has the highest index
#      window_flags           #F       Window flags
#      window_format                   1 if format is for a window
#      window_height                   Height of window
#      window_id                       Unique window ID
#      window_index           #I       Index of window
#      window_last_flag                1 if window is the last used
#      window_layout                   Window layout description, ignoring
#                                      zoomed window panes
#      window_linked                   1 if window is linked across sessions
#      window_marked_flag              1 if window contains the marked pane
#      window_name            #W       Name of window
#      window_offset_x                 X offset into window if larger than
#                                      client
#      window_offset_y                 Y offset into window if larger than
#                                      client
#      window_panes                    Number of panes in window
#      window_silence_flag             1 if window has silence alert
#      window_stack_index              Index in session most recent stack
#      window_start_flag               1 if window has the lowest index
#      window_visible_layout           Window layout description, respecting
#                                      zoomed window panes
#      window_width                    Width of window
#      window_zoomed_flag              1 if window is zoomed
#      wrap_flag                       Pane wrap flag
