# ENVIRONMENT         top
#      When tmux is started, it inspects the following environment variables:

#      EDITOR    If the command specified in this variable contains the string
#                ‘vi’ and VISUAL is unset, use vi-style key bindings.  Over‐
#                ridden by the mode-keys and status-keys options.

#      HOME      The user's login directory.  If unset, the passwd(5) database
#                is consulted.

#      LC_CTYPE  The character encoding locale(1).  It is used for two sepa‐
#                rate purposes.  For output to the terminal, UTF-8 is used if
#                the -u option is given or if LC_CTYPE contains "UTF-8" or
#                "UTF8".  Otherwise, only ASCII characters are written and
#                non-ASCII characters are replaced with underscores (‘_’).
#                For input, tmux always runs with a UTF-8 locale.  If
#                en_US.UTF-8 is provided by the operating system it is used
#                and LC_CTYPE is ignored for input.  Otherwise, LC_CTYPE tells
#                tmux what the UTF-8 locale is called on the current system.
#                If the locale specified by LC_CTYPE is not available or is
#                not a UTF-8 locale, tmux exits with an error message.

#      LC_TIME   The date and time format locale(1).  It is used for locale-
#                dependent strftime(3) format specifiers.

#      PWD       The current working directory to be set in the global envi‐
#                ronment.  This may be useful if it contains symbolic links.
#                If the value of the variable does not match the current work‐
#                ing directory, the variable is ignored and the result of
#                getcwd(3) is used instead.

#      SHELL     The absolute path to the default shell for new windows.  See
#                the default-shell option for details.

#      TMUX_TMPDIR
#                The parent directory of the directory containing the server
#                sockets.  See the -L option for details.

#      VISUAL    If the command specified in this variable contains the string
#                ‘vi’, use vi-style key bindings.  Overridden by the mode-keys
#                and status-keys options.
