# BUFFERS         top
#      tmux maintains a set of named paste buffers.  Each buffer may be either
#      explicitly or automatically named.  Explicitly named buffers are named
#      when created with the set-buffer or load-buffer commands, or by renam‐
#      ing an automatically named buffer with set-buffer -n.  Automatically
#      named buffers are given a name such as ‘buffer0001’, ‘buffer0002’ and
#      so on.  When the buffer-limit option is reached, the oldest automati‐
#      cally named buffer is deleted.  Explicitly named buffers are not sub‐
#      ject to buffer-limit and may be deleted with delete-buffer command.

#      Buffers may be added using copy-mode or the set-buffer and load-buffer
#      commands, and pasted into a window using the paste-buffer command.  If
#      a buffer command is used and no buffer is specified, the most recently
#      added automatically named buffer is assumed.

#      A configurable history buffer is also maintained for each window.  By
#      default, up to 2000 lines are kept; this can be altered with the
#      history-limit option (see the set-option command above).

#      The buffer commands are as follows:

#      choose-buffer [-NZr] [-F format] [-f filter] [-O sort-order] [-t
#              target-pane] [template]
#              Put a pane into buffer mode, where a buffer may be chosen
#              interactively from a list.  -Z zooms the pane.  The following
#              keys may be used in buffer mode:

#                    Key    Function
#                    Enter  Paste selected buffer
#                    Up     Select previous buffer
#                    Down   Select next buffer
#                    C-s    Search by name or content
#                    n      Repeat last search
#                    t      Toggle if buffer is tagged
#                    T      Tag no buffers
#                    C-t    Tag all buffers
#                    p      Paste selected buffer
#                    P      Paste tagged buffers
#                    d      Delete selected buffer
#                    D      Delete tagged buffers
#                    f      Enter a format to filter items
#                    O      Change sort field
#                    r      Reverse sort order
#                    v      Toggle preview
#                    q      Exit mode

#              After a buffer is chosen, ‘%%’ is replaced by the buffer name
#              in template and the result executed as a command.  If template
#              is not given, "paste-buffer -b '%%'" is used.

#              -O specifies the initial sort field: one of ‘time’, ‘name’ or
#              ‘size’.  -r reverses the sort order.  -f specifies an initial
#              filter: the filter is a format - if it evaluates to zero, the
#              item in the list is not shown, otherwise it is shown.  If a
#              filter would lead to an empty list, it is ignored.  -F speci‐
#              fies the format for each item in the list.  -N starts without
#              the preview.  This command works only if at least one client is
#              attached.

#      clear-history [-t target-pane]
#                    (alias: clearhist)
#              Remove and free the history for the specified pane.

#      delete-buffer [-b buffer-name]
#                    (alias: deleteb)
#              Delete the buffer named buffer-name, or the most recently added
#              automatically named buffer if not specified.

#      list-buffers [-F format]
#                    (alias: lsb)
#              List the global buffers.  For the meaning of the -F flag, see
#              the FORMATS section.

#      load-buffer [-b buffer-name] path
#                    (alias: loadb)
#              Load the contents of the specified paste buffer from path.

#      paste-buffer [-dpr] [-b buffer-name] [-s separator] [-t target-pane]
#                    (alias: pasteb)
#              Insert the contents of a paste buffer into the specified pane.
#              If not specified, paste into the current one.  With -d, also
#              delete the paste buffer.  When output, any linefeed (LF) char‐
#              acters in the paste buffer are replaced with a separator, by
#              default carriage return (CR).  A custom separator may be speci‐
#              fied using the -s flag.  The -r flag means to do no replacement
#              (equivalent to a separator of LF).  If -p is specified, paste
#              bracket control codes are inserted around the buffer if the
#              application has requested bracketed paste mode.

#      save-buffer [-a] [-b buffer-name] path
#                    (alias: saveb)
#              Save the contents of the specified paste buffer to path.  The
#              -a option appends to rather than overwriting the file.

#      set-buffer [-a] [-b buffer-name] [-n new-buffer-name] data
#                    (alias: setb)
#              Set the contents of the specified buffer to data.  The -a
#              option appends to rather than overwriting the buffer.  The -n
#              option renames the buffer to new-buffer-name.

#      show-buffer [-b buffer-name]
#                    (alias: showb)
#              Display the contents of the specified buffer.
