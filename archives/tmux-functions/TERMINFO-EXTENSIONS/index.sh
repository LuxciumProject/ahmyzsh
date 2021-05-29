# TERMINFO EXTENSIONS         top
#      tmux understands some unofficial extensions to terminfo(5):

#      Cs, Cr  Set the cursor colour.  The first takes a single string argu‐
#              ment and is used to set the colour; the second takes no argu‐
#              ments and restores the default cursor colour.  If set, a
#              sequence such as this may be used to change the cursor colour
#              from inside tmux:

#                    $ printf '\033]12;red\033\\'

#      Smol    Enable the overline attribute.  The capability is usually SGR
#              53 and can be added to terminal-overrides as:

#                    Smol=\E[53m

#      Smulx   Set a styled underscore.  The single parameter is one of: 0 for
#              no underscore, 1 for normal underscore, 2 for double under‐
#              score, 3 for curly underscore, 4 for dotted underscore and 5
#              for dashed underscore.  The capability can typically be added
#              to terminal-overrides as:

#                    Smulx=\E[4::%p1%dm

#      Setulc  Set the underscore colour.  The argument is (red * 65536) +
#              (green * 256) + blue where each is between 0 and 255.  The
#              capability can typically be added to terminal-overrides as:

#                    Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m

#      Ss, Se  Set or reset the cursor style.  If set, a sequence such as this
#              may be used to change the cursor to an underline:

#                    $ printf '\033[4 q'

#              If Se is not set, Ss with argument 0 will be used to reset the
#              cursor style instead.

#      Tc      Indicate that the terminal supports the ‘direct colour’ RGB
#              escape sequence (for example, \e[38;2;255;255;255m).

#              If supported, this is used for the initialize colour escape
#              sequence (which may be enabled by adding the ‘initc’ and ‘ccc’
#              capabilities to the tmux terminfo(5) entry).

#      Ms      Store the current buffer in the host terminal's selection
#              (clipboard).  See the set-clipboard option above and the
#              xterm(1) man page.
