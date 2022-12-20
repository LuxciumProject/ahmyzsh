## WINDOWS AND PANES         top

##      The synopsis for the copy-mode command is:

function copy-mode() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    copy-mode [-Meu] [-t target-pane]
#              Enter copy mode.  The -u option scrolls one page up.  -M begins
#              a mouse drag (only valid if bound to a mouse key binding, see
#              MOUSE SUPPORT).  -e specifies that scrolling to the bottom of
#              the history (to the visible screen) should exit copy mode.
#              While in copy mode, pressing a key other than those used for
#              scrolling will disable this behaviour.  This is intended to
#              allow fast scrolling through a pane's history, for example
#              with:

#                    bind PageUp copy-mode -eu

#      A number of preset arrangements of panes are available, these are
#      called layouts.  These may be selected with the select-layout command
#      or cycled with next-layout (bound to ‘Space’ by default); once a layout
#      is chosen, panes within it may be moved and resized as normal.

#+      The following layouts are supported:

#+     even-horizontal
#              Panes are spread out evenly from left to right across the win‐
#              dow.

#+     even-vertical
#              Panes are spread evenly from top to bottom.

#+     main-horizontal
#              A large (main) pane is shown at the top of the window and the
#              remaining panes are spread from left to right in the leftover
#              space at the bottom.  Use the main-pane-height window option to
#              specify the height of the top pane.

#+     main-vertical
#              Similar to main-horizontal but the large pane is placed on the
#              left and the others spread from top to bottom along the right.
#              See the main-pane-width window option.

#+     tiled   Panes are spread out as evenly as possible over the window in
#              both rows and columns.

#      In addition, select-layout may be used to apply a previously used lay‐
#      out - the list-windows command displays the layout of each window in a
#      form suitable for use with select-layout.  For example:

#            $ tmux list-windows
#            0: ksh [159x48]
#                layout: bb62,159x48,0,0{79x48,0,0,79x48,80,0}
#            $ tmux select-layout bb62,159x48,0,0{79x48,0,0,79x48,80,0}

#      tmux automatically adjusts the size of the layout for the current win‐
#      dow size.  Note that a layout cannot be applied to a window with more
#      panes than that from which the layout was originally defined.

#      Each window displayed by tmux may be split into one or more panes; each
#      pane takes up a certain area of the display and is a separate terminal.
#      A window may be split into panes using the split-window command.  Win‐
#      dows may be split horizontally (with the -h flag) or vertically.  Panes
#      may be resized with the resize-pane command (bound to ‘C-Up’, ‘C-Down’
#      ‘C-Left’ and ‘C-Right’ by default), the current pane may be changed
#      with the select-pane command and the rotate-window and swap-pane com‐
#      mands may be used to swap panes without changing their position.  Panes
#      are numbered beginning from zero in the order they are created.

#      By default, a tmux pane permits direct access to the terminal contained
#      in the pane.  A pane may also be put into one of several modes:

#            -   Copy mode, which permits a section of a window or its history
#                to be copied to a paste buffer for later insertion into
#                another window.  This mode is entered with the copy-mode com‐
#                mand, bound to ‘[’ by default.

#            -   View mode, which is like copy mode but is entered when a com‐
#                mand that produces output, such as list-keys, is executed
#                from a key binding.

#            -   Choose mode, which allows an item to be chosen from a list.
#                This may be a client, a session or window or pane, or a buf‐
#                fer.  This mode is entered with the choose-buffer,
#                choose-client and choose-tree commands.

#      In copy mode an indicator is displayed in the top-right corner of the
#      pane with the current position and the number of lines in the history.

#      Commands are sent to copy mode using the -X flag to the send-keys com‐
#      mand.  When a key is pressed, copy mode automatically uses one of two
#      key tables, depending on the mode-keys option: copy-mode for emacs, or
#      copy-mode-vi for vi.  Key tables may be viewed with the list-keys com‐
#      mand.

#      The following commands are supported in copy mode:

#            Command                                      vi              emacs
#            append-selection
#            append-selection-and-cancel                  A
#            back-to-indentation                          ^               M-m
#            begin-selection                              Space           C-Space
#            bottom-line                                  L
#            cancel                                       q               Escape
#            clear-selection                              Escape          C-g
#            copy-end-of-line [<prefix>]                  D               C-k
#            copy-line [<prefix>]
#            copy-pipe <command> [<prefix>]
#            copy-pipe-no-clear <command> [<prefix>]
#            copy-pipe-and-cancel <command> [<prefix>]
#            copy-selection [<prefix>]
#            copy-selection-no-clear [<prefix>]
#            copy-selection-and-cancel [<prefix>]         Enter           M-w
#            cursor-down                                  j               Down
#            cursor-down-and-cancel
#            cursor-left                                  h               Left
#            cursor-right                                 l               Right
#            cursor-up                                    k               Up
#            end-of-line                                  $               C-e
#            goto-line <line>                             :               g
#            halfpage-down                                C-d             M-Down
#            halfpage-down-and-cancel
#            halfpage-up                                  C-u             M-Up
#            history-bottom                               G               M->
#            history-top                                  g               M-<
#            jump-again                                   ;               ;
#            jump-backward <to>                           F               F
#            jump-forward <to>                            f               f
#            jump-reverse                                 ,               ,
#            jump-to-backward <to>                        T
#            jump-to-forward <to>                         t
#            middle-line                                  M               M-r
#            next-matching-bracket                        %               M-C-f
#            next-paragraph                               }               M-}
#            next-space                                   W
#            next-space-end                               E
#            next-word                                    w
#            next-word-end                                e               M-f
#            other-end                                    o
#            page-down                                    C-f             PageDown
#            page-down-and-cancel
#            page-up                                      C-b             PageUp
#            previous-matching-bracket                                    M-C-b
#            previous-paragraph                           {               M-{
#            previous-space                               B
#            previous-word                                b               M-b
#            rectangle-toggle                             v               R
#            scroll-down                                  C-e             C-Down
#            scroll-down-and-cancel
#            scroll-up                                    C-y             C-Up
#            search-again                                 n               n
#            search-backward <for>                        ?
#            search-forward <for>                         /
#            search-backward-incremental <for>                            C-r
#            search-forward-incremental <for>                             C-s
#            search-reverse                               N               N
#            select-line                                  V
#            select-word
#            start-of-line                                0               C-a
#            stop-selection
#            top-line                                     H               M-R

#      Copy commands may take an optional buffer prefix argument which is used
#      to generate the buffer name (the default is ‘buffer’ so buffers are
#      named ‘buffer0’, ‘buffer1’ and so on).  Pipe commands take a command
#      argument which is the command to which the copied text is piped.  The
#      ‘-and-cancel’ variants of some commands exit copy mode after they have
#      completed (for copy commands) or when the cursor reaches the bottom
#      (for scrolling commands).  ‘-no-clear’ variants do not clear the selec‐
#      tion.

#      The next and previous word keys use space and the ‘-’, ‘_’ and ‘@’
#      characters as word delimiters by default, but this can be adjusted by
#      setting the word-separators session option.  Next word moves to the
#      start of the next word, next word end to the end of the next word and
#      previous word to the start of the previous word.  The three next and
#      previous space keys work similarly but use a space alone as the word
#      separator.

#      The jump commands enable quick movement within a line.  For instance,
#      typing ‘f’ followed by ‘/’ will move the cursor to the next ‘/’ charac‐
#      ter on the current line.  A ‘;’ will then jump to the next occurrence.

#      Commands in copy mode may be prefaced by an optional repeat count.
#      With vi key bindings, a prefix is entered using the number keys; with
#      emacs, the Alt (meta) key and a number begins prefix entry.

    "
    else
        tmux copy-mode $@
    fi

}

##      Commands related to windows and panes are as follows:

function break-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    break-pane [-dP] [-F format] [-n window-name] [-s src-pane] [-t
#              dst-window]
#                    (alias: breakp)
#              Break src-pane off from its containing window to make it the
#              only pane in dst-window.  If -d is given, the new window does
#              not become the current window.  The -P option prints informa‐
#              tion about the new window after it has been created.  By
#              default, it uses the format ‘#{session_name}:#{window_index}’
#              but a different format may be specified with -F.
    "
    else
        tmux break-pane $@
    fi

}

function capture-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    capture-pane [-aepPqCJN] [-b buffer-name] [-E end-line] [-S start-line]
#              [-t target-pane]
#                    (alias: capturep)
#              Capture the contents of a pane.  If -p is given, the output
#              goes to stdout, otherwise to the buffer specified with -b or a
#              new buffer if omitted.  If -a is given, the alternate screen is
#              used, and the history is not accessible.  If no alternate
#              screen exists, an error will be returned unless -q is given.
#              If -e is given, the output includes escape sequences for text
#              and background attributes.  -C also escapes non-printable char‐
#              acters as octal \xxx.  -N preserves trailing spaces at each
#              line's end and -J preserves trailing spaces and joins any
#              wrapped lines.  -P captures only any output that the pane has
#              received that is the beginning of an as-yet incomplete escape
#              sequence.

#              -S and -E specify the starting and ending line numbers, zero is
#              the first line of the visible pane and negative numbers are
#              lines in the history.  ‘-’ to -S is the start of the history
#              and to -E the end of the visible pane.  The default is to cap‐
#              ture only the visible contents of the pane.
    "
    else
        tmux capture-pane $@
    fi

}

function choose-client() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    choose-client [-NrZ] [-F format] [-f filter] [-O sort-order] [-t
#              target-pane] [template]
#              Put a pane into client mode, allowing a client to be selected
#              interactively from a list.  -Z zooms the pane.  The following
#              keys may be used in client mode:

#                    Key    Function
#                    Enter  Choose selected client
#                    Up     Select previous client
#                    Down   Select next client
#                    C-s    Search by name
#                    n      Repeat last search
#                    t      Toggle if client is tagged
#                    T      Tag no clients
#                    C-t    Tag all clients
#                    d      Detach selected client
#                    D      Detach tagged clients
#                    x      Detach and HUP selected client
#                    X      Detach and HUP tagged clients
#                    z      Suspend selected client
#                    Z      Suspend tagged clients
#                    f      Enter a format to filter items
#                    O      Change sort field
#                    r      Reverse sort order
#                    v      Toggle preview
#                    q      Exit mode

#              After a client is chosen, ‘%%’ is replaced by the client name
#              in template and the result executed as a command.  If template
#              is not given, \"detach-client -t '%%'\" is used.

#              -O specifies the initial sort field: one of ‘name’, ‘size’,
#              ‘creation’, or ‘activity’.  -r reverses the sort order.  -f
#              specifies an initial filter: the filter is a format - if it
#              evaluates to zero, the item in the list is not shown, otherwise
#              it is shown.  If a filter would lead to an empty list, it is
#              ignored.  -F specifies the format for each item in the list.
#              -N starts without the preview.  This command works only if at
#              least one client is attached.
    "
    else
        tmux choose-client $@
    fi

}

function choose-tree() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    choose-tree [-GNrswZ] [-F format] [-f filter] [-O sort-order] [-t
#              target-pane] [template]
#              Put a pane into tree mode, where a session, window or pane may
#              be chosen interactively from a list.  -s starts with sessions
#              collapsed and -w with windows collapsed.  -Z zooms the pane.
#              The following keys may be used in tree mode:

#                    Key    Function
#                    Enter  Choose selected item
#                    Up     Select previous item
#                    Down   Select next item
#                    x      Kill selected item
#                    X      Kill tagged items
#                    <      Scroll list of previews left
#                    >      Scroll list of previews right
#                    C-s    Search by name
#                    n      Repeat last search
#                    t      Toggle if item is tagged
#                    T      Tag no items
#                    C-t    Tag all items
#                    :      Run a command for each tagged item
#                    f      Enter a format to filter items
#                    O      Change sort field
#                    r      Reverse sort order
#                    v      Toggle preview
#                    q      Exit mode

#              After a session, window or pane is chosen, ‘%%’ is replaced by
#              the target in template and the result executed as a command.
#              If template is not given, \"switch-client -t '%%'\" is used.

#              -O specifies the initial sort field: one of ‘index’, ‘name’, or
#              ‘time’.  -r reverses the sort order.  -f specifies an initial
#              filter: the filter is a format - if it evaluates to zero, the
#              item in the list is not shown, otherwise it is shown.  If a
#              filter would lead to an empty list, it is ignored.  -F speci‐
#              fies the format for each item in the tree.  -N starts without
#              the preview.  -G includes all sessions in any session groups in
#              the tree rather than only the first.  This command works only
#              if at least one client is attached.
    "
    else
        tmux choose-tree $@
    fi

}

function display-panes() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    display-panes [-b] [-d duration] [-t target-client] [template]
#                    (alias: displayp)
#              Display a visible indicator of each pane shown by
#              target-client.  See the display-panes-colour and
#              display-panes-active-colour session options.  The indicator is
#              closed when a key is pressed or duration milliseconds have
#              passed.  If -d is not given, display-panes-time is used.  A
#              duration of zero means the indicator stays until a key is
#              pressed.  While the indicator is on screen, a pane may be cho‐
#              sen with the ‘0’ to ‘9’ keys, which will cause template to be
#              executed as a command with ‘%%’ substituted by the pane ID.
#              The default template is \"select-pane -t '%%'\".  With -b, other
#              commands are not blocked from running until the indicator is
#              closed.
    "
    else
        tmux display-panes $@
    fi

}

function find-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    find-window [-rCNTZ] [-t target-pane] match-string
#                    (alias: findw)
#              Search for a fnmatch(3) pattern or, with -r, regular expression
#              match-string in window names, titles, and visible content (but
#              not history).  The flags control matching behavior: -C matches
#              only visible window contents, -N matches only the window name
#              and -T matches only the window title.  The default is -CNT.  -Z
#              zooms the pane.

#              This command works only if at least one client is attached.
    "
    else
        tmux find-window $@
    fi

}

function join-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    join-pane [-bdfhv] [-l size] [-s src-pane] [-t dst-pane]
#                    (alias: joinp)
#              Like split-window, but instead of splitting dst-pane and creat‐
#              ing a new pane, split it and move src-pane into the space.
#              This can be used to reverse break-pane.  The -b option causes
#              src-pane to be joined to left of or above dst-pane.

#              If -s is omitted and a marked pane is present (see select-pane
#              -m), the marked pane is used rather than the current pane.
    "
    else
        tmux join-pane $@
    fi

}

function kill-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    kill-pane [-a] [-t target-pane]
#                    (alias: killp)
#              Destroy the given pane.  If no panes remain in the containing
#              window, it is also destroyed.  The -a option kills all but the
#              pane given with -t.
    "
    else
        tmux kill-pane $@
    fi

}

function kill-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    kill-window [-a] [-t target-window]
#                    (alias: killw)
#              Kill the current window or the window at target-window, remov‐
#              ing it from any sessions to which it is linked.  The -a option
#              kills all but the window given with -t.
    "
    else
        tmux kill-window $@
    fi

}

function last-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    last-pane [-deZ] [-t target-window]
#                    (alias: lastp)
#              Select the last (previously selected) pane.  -Z keeps the win‐
#              dow zoomed if it was zoomed.  -e enables or -d disables input
#              to the pane.
    "
    else
        tmux last-pane $@
    fi

}

function last-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    last-window [-t target-session]
#                    (alias: last)
#              Select the last (previously selected) window.  If no
#              target-session is specified, select the last window of the cur‐
#              rent session.
    "
    else
        tmux last-window $@
    fi

}

function link-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    link-window [-adk] [-s src-window] [-t dst-window]
#                    (alias: linkw)
#              Link the window at src-window to the specified dst-window.  If
#              dst-window is specified and no such window exists, the
#              src-window is linked there.  With -a, the window is moved to
#              the next index up (following windows are moved if necessary).
#              If -k is given and dst-window exists, it is killed, otherwise
#              an error is generated.  If -d is given, the newly linked window
#              is not selected.
    "
    else
        tmux link-window $@
    fi

}

function list-panes() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    list-panes [-as] [-F format] [-t target]
#                    (alias: lsp)
#              If -a is given, target is ignored and all panes on the server
#              are listed.  If -s is given, target is a session (or the cur‐
#              rent session).  If neither is given, target is a window (or the
#              current window).  For the meaning of the -F flag, see the
#              FORMATS section.
    "
    else
        tmux list-panes $@
    fi

}

function list-windows() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    list-windows [-a] [-F format] [-t target-session]
#                    (alias: lsw)
#              If -a is given, list all windows on the server.  Otherwise,
#              list windows in the current session or in target-session.  For
#              the meaning of the -F flag, see the FORMATS section.
    "
    else
        tmux list-windows $@
    fi

}

function move-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    move-pane [-bdhv] [-l size] [-s src-pane] [-t dst-pane]
#                    (alias: movep)
#              Like join-pane, but src-pane and dst-pane may belong to the
#              same window.
    "
    else
        tmux move-pane $@
    fi

}

function move-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    move-window [-ardk] [-s src-window] [-t dst-window]
#                    (alias: movew)
#              This is similar to link-window, except the window at src-window
#              is moved to dst-window.  With -r, all windows in the session
#              are renumbered in sequential order, respecting the base-index
#              option.
    "
    else
        tmux move-window $@
    fi

}

function new-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    new-window [-adkP] [-c start-directory] [-e environment] [-F format]
#              [-n window-name] [-t target-window] [shell-command]
#                    (alias: neww)
#              Create a new window.  With -a, the new window is inserted at
#              the next index up from the specified target-window, moving win‐
#              dows up if necessary, otherwise target-window is the new window
#              location.

#              If -d is given, the session does not make the new window the
#              current window.  target-window represents the window to be cre‐
#              ated; if the target already exists an error is shown, unless
#              the -k flag is used, in which case it is destroyed.
#              shell-command is the command to execute.  If shell-command is
#              not specified, the value of the default-command option is used.
#              -c specifies the working directory in which the new window is
#              created.

#              When the shell command completes, the window closes.  See the
#              remain-on-exit option to change this behaviour.

#              -e takes the form ‘VARIABLE=value’ and sets an environment
#              variable for the newly created window; it may be specified mul‐
#              tiple times.

#              The TERM environment variable must be set to ‘screen’ or ‘tmux’
#              for all programs running inside tmux.  New windows will auto‐
#              matically have ‘TERM=screen’ added to their environment, but
#              care must be taken not to reset this in shell start-up files or
#              by the -e option.

#              The -P option prints information about the new window after it
#              has been created.  By default, it uses the format
#              ‘#{session_name}:#{window_index}’ but a different format may be
#              specified with -F.
    "
    else
        tmux new-window $@
    fi

}

function next-layout() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    next-layout [-t target-window]
#                    (alias: nextl)
#              Move a window to the next layout and rearrange the panes to
#              fit.
    "
    else
        tmux next-layout $@
    fi

}

function next-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    next-window [-a] [-t target-session]
#                    (alias: next)
#              Move to the next window in the session.  If -a is used, move to
#              the next window with an alert.
    "
    else
        tmux next-window $@
    fi

}

function pipe-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    pipe-pane [-IOo] [-t target-pane] [shell-command]
#                    (alias: pipep)
#              Pipe output sent by the program in target-pane to a shell com‐
#              mand or vice versa.  A pane may only be connected to one com‐
#              mand at a time, any existing pipe is closed before
#              shell-command is executed.  The shell-command string may con‐
#              tain the special character sequences supported by the
#              status-left option.  If no shell-command is given, the current
#              pipe (if any) is closed.

#              -I and -O specify which of the shell-command output streams are
#              connected to the pane: with -I stdout is connected (so anything
#              shell-command prints is written to the pane as if it were
#              typed); with -O stdin is connected (so any output in the pane
#              is piped to shell-command).  Both may be used together and if
#              neither are specified, -O is used.

#              The -o option only opens a new pipe if no previous pipe exists,
#              allowing a pipe to be toggled with a single key, for example:

#                    bind-key C-p pipe-pane -o 'cat >>~/output.#I-#P'
    "
    else
        tmux pipe-pane $@
    fi

}

function previous-layout() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    previous-layout [-t target-window]
#                    (alias: prevl)
#              Move to the previous layout in the session.
    "
    else
        tmux previous-layout $@
    fi

}

function previous-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    previous-window [-a] [-t target-session]
#                    (alias: prev)
#              Move to the previous window in the session.  With -a, move to
#              the previous window with an alert.
    "
    else
        tmux previous-window $@
    fi

}

function rename-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    rename-window [-t target-window] new-name
#                    (alias: renamew)
#              Rename the current window, or the window at target-window if
#              specified, to new-name.
    "
    else
        tmux rename-window $@
    fi

}

function resize-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    resize-pane [-DLMRUZ] [-t target-pane] [-x width] [-y height]
#              [adjustment]
#                    (alias: resizep)
#              Resize a pane, up, down, left or right by adjustment with -U,
#              -D, -L or -R, or to an absolute size with -x or -y.  The
#              adjustment is given in lines or columns (the default is 1); -x
#              and -y may be a given as a number of lines or columns or fol‐
#              lowed by ‘%’ for a percentage of the window size (for example
#              ‘-x 10%’).  With -Z, the active pane is toggled between zoomed
#              (occupying the whole of the window) and unzoomed (its normal
#              position in the layout).

#              -M begins mouse resizing (only valid if bound to a mouse key
#              binding, see MOUSE SUPPORT).
    "
    else
        tmux resize-pane $@
    fi

}

function resize-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    resize-window [-aADLRU] [-t target-window] [-x width] [-y height]
#              [adjustment]
#                    (alias: resizew)
#              Resize a window, up, down, left or right by adjustment with -U,
#              -D, -L or -R, or to an absolute size with -x or -y.  The
#              adjustment is given in lines or cells (the default is 1).  -A
#              sets the size of the largest session containing the window; -a
#              the size of the smallest.  This command will automatically set
#              window-size to manual in the window options.
    "
    else
        tmux resize-window $@
    fi

}

function respawn-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    respawn-pane [-k] [-c start-directory] [-e environment] [-t
#              target-pane] [shell-command]
#                    (alias: respawnp)
#              Reactivate a pane in which the command has exited (see the
#              remain-on-exit window option).  If shell-command is not given,
#              the command used when the pane was created is executed.  The
#              pane must be already inactive, unless -k is given, in which
#              case any existing command is killed.  -c specifies a new work‐
#              ing directory for the pane.  The -e option has the same meaning
#              as for the new-window command.
    "
    else
        tmux respawn-pane $@
    fi

}

function respawn-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    respawn-window [-k] [-c start-directory] [-e environment] [-t
#              target-window] [shell-command]
#                    (alias: respawnw)
#              Reactivate a window in which the command has exited (see the
#              remain-on-exit window option).  If shell-command is not given,
#              the command used when the window was created is executed.  The
#              window must be already inactive, unless -k is given, in which
#              case any existing command is killed.  -c specifies a new work‐
#              ing directory for the window.  The -e option has the same mean‐
#              ing as for the new-window command.
    "
    else
        tmux respawn-window $@
    fi

}

function rotate-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    rotate-window [-DUZ] [-t target-window]
#                    (alias: rotatew)
#              Rotate the positions of the panes within a window, either
#              upward (numerically lower) with -U or downward (numerically
#              higher).  -Z keeps the window zoomed if it was zoomed.
    "
    else
        tmux rotate-window $@
    fi

}

function select-layout() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    select-layout [-Enop] [-t target-pane] [layout-name]
#                    (alias: selectl)
#              Choose a specific layout for a window.  If layout-name is not
#              given, the last preset layout used (if any) is reapplied.  -n
#              and -p are equivalent to the next-layout and previous-layout
#              commands.  -o applies the last set layout if possible (undoes
#              the most recent layout change).  -E spreads the current pane
#              and any panes next to it out evenly.
    "
    else
        tmux select-layout $@
    fi

}

function select-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    select-pane [-DdeLlMmRUZ] [-T title] [-t target-pane]
#                    (alias: selectp)
#              Make pane target-pane the active pane in window target-window.
#              If one of -D, -L, -R, or -U is used, respectively the pane
#              below, to the left, to the right, or above the target pane is
#              used.  -Z keeps the window zoomed if it was zoomed.  -l is the
#              same as using the last-pane command.  -e enables or -d disables
#              input to the pane.  -T sets the pane title.

#              -m and -M are used to set and clear the marked pane.  There is
#              one marked pane at a time, setting a new marked pane clears the
#              last.  The marked pane is the default target for -s to
#              join-pane, swap-pane and swap-window.
    "
    else
        tmux select-pane $@
    fi

}

function select-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    select-window [-lnpT] [-t target-window]
#                    (alias: selectw)
#              Select the window at target-window.  -l, -n and -p are equiva‐
#              lent to the last-window, next-window and previous-window com‐
#              mands.  If -T is given and the selected window is already the
#              current window, the command behaves like last-window.
    "
    else
        tmux select-window $@
    fi

}

function split-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    split-window [-bdfhIvP] [-c start-directory] [-e environment] [-l size]
#              [-t target-pane] [shell-command] [-F format]
#                    (alias: splitw)
#              Create a new pane by splitting target-pane: -h does a horizon‐
#              tal split and -v a vertical split; if neither is specified, -v
#              is assumed.  The -l option specifies the size of the new pane
#              in lines (for vertical split) or in columns (for horizontal
#              split); size may be followed by ‘%’ to specify a percentage of
#              the available space.  The -b option causes the new pane to be
#              created to the left of or above target-pane.  The -f option
#              creates a new pane spanning the full window height (with -h) or
#              full window width (with -v), instead of splitting the active
#              pane.

#              An empty shell-command ('') will create a pane with no command
#              running in it.  Output can be sent to such a pane with the
#              display-message command.  The -I flag (if shell-command is not
#              specified or empty) will create an empty pane and forward any
#              output from stdin to it.  For example:

#                    $ make 2>&1|tmux splitw -dI &

#              All other options have the same meaning as for the new-window
#              command.
    EOF"
    else
        tmux split-window $@
    fi

}

function swap-pane() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    swap-pane [-dDUZ] [-s src-pane] [-t dst-pane]
#                    (alias: swapp)
#              Swap two panes.  If -U is used and no source pane is specified
#              with -s, dst-pane is swapped with the previous pane (before it
#              numerically); -D swaps with the next pane (after it numeri‐
#              cally).  -d instructs tmux not to change the active pane and -Z
#              keeps the window zoomed if it was zoomed.

#              If -s is omitted and a marked pane is present (see select-pane
#              -m), the marked pane is used rather than the current pane.
    "
    else
        tmux swap-pane $@
    fi

}

function swap-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!    swap-window [-d] [-s src-window] [-t dst-window]
#                    (alias: swapw)
#              This is similar to link-window, except the source and destina‐
#              tion windows are swapped.  It is an error if no window exists
#              at src-window.

#              Like swap-pane, if -s is omitted and a marked pane is present
#              (see select-pane -m), the window containing the marked pane is
#              used rather than the current window.
    "
    else
        tmux swap-window $@
    fi

}

function unlink-window() {
    if [ ${1:-0} = '-h' ]; then
        eval "cat << EOF window or pane options
#*!     unlink-window [-k] [-t target-window]
#                    (alias: unlinkw)
#              Unlink target-window.  Unless -k is given, a window may be
#              unlinked only if it is linked to multiple sessions - windows
#              may not be linked to no sessions; if -k is specified and the
#              window is linked to only one session, it is unlinked and
#              destroyed.
    "
    else
        tmux unlink-window $@
    fi
}

# function aggressive-resize () {
#     if [ ${1:-0} = '-h' ];then
#     eval "cat << EOF window or pane options
#     aggressive-resize [on | off]
#              Aggressively resize the chosen window.  This means that tmux
#              will resize the window to the size of the smallest or largest
#              session (see the window-size option) for which it is the cur‐
#              rent window, rather than the session to which it is attached.
#              The window may resize when the current window is changed on
#              another session; this option is good for full-screen programs
#              which support SIGWINCH and poor for interactive programs such
#              as shells."
#     else
#     tmux aggressive-resize ${@}
#     fi
# }
