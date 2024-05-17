# STYLES         top
#      tmux offers various options to specify the colour and attributes of
#      aspects of the interface, for example status-style for the status line.
#      In addition, embedded styles may be specified in format options, such
#      as status-left-format, by enclosing them in ‘#[’ and ‘]’.

#      A style may be the single term ‘default’ to specify the default style
#      (which may come from an option, for example status-style in the status
#      line) or a space or comma separated list of the following:

#      fg=colour
#              Set the foreground colour.  The colour is one of: black, red,
#              green, yellow, blue, magenta, cyan, white; if supported the
#              bright variants brightred, brightgreen, brightyellow; colour0
#              to colour255 from the 256-colour set; default for the default
#              colour; terminal for the terminal default colour; or a hexadec‐
#              imal RGB string such as ‘#ffffff’.

#      bg=colour
#              Set the background colour.

#      none    Set no attributes (turn off any active attributes).

#      bright (or bold), dim, underscore, blink, reverse, hidden, italics,
#              overline, strikethrough, double-underscore, curly-underscore,
#              dotted-underscore, dashed-underscore
#              Set an attribute.  Any of the attributes may be prefixed with
#              ‘no’ to unset.

#      align=left (or noalign), align=centre, align=right
#              Align text to the left, centre or right of the available space
#              if appropriate.

#      fill=colour
#              Fill the available space with a background colour if appropri‐
#              ate.

#      list=on, list=focus, list=left-marker, list=right-marker, nolist
#              Mark the position of the various window list components in the
#              status-format option: list=on marks the start of the list;
#              list=focus is the part of the list that should be kept in focus
#              if the entire list won't fit in the available space (typically
#              the current window); list=left-marker and list=right-marker
#              mark the text to be used to mark that text has been trimmed
#              from the left or right of the list if there is not enough
#              space.

#      push-default, pop-default
#              Store the current colours and attributes as the default or
#              reset to the previous default.  A push-default affects any sub‐
#              sequent use of the default term until a pop-default.  Only one
#              default may be pushed (each push-default replaces the previous
#              saved default).

#      range=left, range=right, range=window|X, norange
#              Mark a range in the status-format option.  range=left and
#              range=right are the text used for the ‘StatusLeft’ and
#              ‘StatusRight’ mouse keys.  range=window|X is the range for a
#              window passed to the ‘Status’ mouse key, where ‘X’ is a window
#              index.

#      Examples are:

#            fg=yellow bold underscore blink
#            bg=black,fg=default,noreverse
