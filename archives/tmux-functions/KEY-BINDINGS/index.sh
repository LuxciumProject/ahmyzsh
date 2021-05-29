# KEY BINDINGS         top
#      tmux allows a command to be bound to most keys, with or without a pre‐
#      fix key.  When specifying keys, most represent themselves (for example
#      ‘A’ to ‘Z’).  Ctrl keys may be prefixed with ‘C-’ or ‘^’, and Alt
#      (meta) with ‘M-’.  In addition, the following special key names are
#      accepted: Up, Down, Left, Right, BSpace, BTab, DC (Delete), End, Enter,
#      Escape, F1 to F12, Home, IC (Insert), NPage/PageDown/PgDn,
#      PPage/PageUp/PgUp, Space, and Tab.  Note that to bind the ‘"’ or ‘'’
#      keys, quotation marks are necessary, for example:

#            bind-key '"' split-window
#            bind-key "'" new-window

#      A command bound to the Any key will execute for all keys which do not
#      have a more specific binding.

#      Commands related to key bindings are as follows:

#      bind-key [-nr] [-T key-table] key command [arguments]
#                    (alias: bind)
#              Bind key key to command.  Keys are bound in a key table.  By
#              default (without -T), the key is bound in the prefix key table.
#              This table is used for keys pressed after the prefix key (for
#              example, by default ‘c’ is bound to new-window in the prefix
#              table, so ‘C-b c’ creates a new window).  The root table is
#              used for keys pressed without the prefix key: binding ‘c’ to
#              new-window in the root table (not recommended) means a plain
#              ‘c’ will create a new window.  -n is an alias for -T root.
#              Keys may also be bound in custom key tables and the
#              switch-client -T command used to switch to them from a key
#              binding.  The -r flag indicates this key may repeat, see the
#              repeat-time option.

#              To view the default bindings and possible commands, see the
#              list-keys command.

#      list-keys [-T key-table]
#                    (alias: lsk)
#              List all key bindings.  Without -T all key tables are printed.
#              With -T only key-table.

#      send-keys [-FHlMRX] [-N repeat-count] [-t target-pane] key ...
#                    (alias: send)
#              Send a key or keys to a window.  Each argument key is the name
#              of the key (such as ‘C-a’ or ‘NPage’) to send; if the string is
#              not recognised as a key, it is sent as a series of characters.
#              All arguments are sent sequentially from first to last.

#              The -l flag disables key name lookup and processes the keys as
#              literal UTF-8 characters.  The -H flag expects each key to be a
#              hexadecimal number for an ASCII character.

#              The -R flag causes the terminal state to be reset.

#              -M passes through a mouse event (only valid if bound to a mouse
#              key binding, see MOUSE SUPPORT).

#              -X is used to send a command into copy mode - see the WINDOWS
#              AND PANES section.  -N specifies a repeat count and -F expands
#              formats in arguments where appropriate.

#      send-prefix [-2] [-t target-pane]
#              Send the prefix key, or with -2 the secondary prefix key, to a
#              window as if it was pressed.

#      unbind-key [-an] [-T key-table] key
#                    (alias: unbind)
#              Unbind the command bound to key.  -n and -T are the same as for
#              bind-key.  If -a is present, all key bindings are removed.
