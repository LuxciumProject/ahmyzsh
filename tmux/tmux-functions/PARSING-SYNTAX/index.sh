# PARSING SYNTAX         top
#      This section describes the syntax of commands parsed by tmux, for exam‐
#      ple in a configuration file or at the command prompt.  Note that when
#      commands are entered into the shell, they are parsed by the shell - see
#      for example ksh(1) or csh(1).

#      Each command is terminated by a newline or a semicolon (;).  Commands
#      separated by semicolons together form a ‘command sequence’ - if a com‐
#      mand in the sequence encounters an error, no subsequent commands are
#      executed.

#      Comments are marked by the unquoted # character - any remaining text
#      after a comment is ignored until the end of the line.

#      If the last character of a line is \, the line is joined with the fol‐
#      lowing line (the \ and the newline are completely removed).  This is
#      called line continuation and applies both inside and outside quoted
#      strings and in comments, but not inside braces.

#      Command arguments may be specified as strings surrounded by single (')
#      quotes, double quotes (") or braces ({}).  This is required when the
#      argument contains any special character.  Single and double quoted
#      strings cannot span multiple lines except with line continuation.
#      Braces can span multiple lines.

#      Outside of quotes and inside double quotes, these replacements are per‐
#      formed:

#            -   Environment variables preceded by $ are replaced with their
#                value from the global environment (see the GLOBAL AND SESSION
#                ENVIRONMENT section).

#            -   A leading ~ or ~user is expanded to the home directory of the
#                current or specified user.

#            -   \uXXXX or \uXXXXXXXX is replaced by the Unicode codepoint
#                corresponding to the given four or eight digit hexadecimal
#                number.

#            -   When preceded (escaped) by a \, the following characters are
#                replaced: \e by the escape character; \r by a carriage
#                return; \n by a newline; and \t by a tab.

#            -   \ooo is replaced by a character of the octal value ooo.
#                Three octal digits are required, for example \001.  The
#                largest valid character is \377.

#            -   Any other characters preceded by \ are replaced by themselves
#                (that is, the \ is removed) and are not treated as having any
#                special meaning - so for example \; will not mark a command
#                sequence and \$ will not expand an environment variable.

#      Braces are similar to single quotes in that the text inside is taken
#      literally without any replacements but this also includes line continu‐
#      ation.  Braces can span multiple lines in which case a literal newline
#      is included in the string.  They are designed to avoid the need for
#      additional escaping when passing a group of tmux or shell commands as
#      an argument (for example to if-shell or pipe-pane).  These two examples
#      produce an identical command - note that no escaping is needed when
#      using {}:

#            if-shell true {
#                display -p 'brace-dollar-foo: }$foo'
#            }

#            if-shell true "\n    display -p 'brace-dollar-foo: }\$foo'\n"

#      Braces may be enclosed inside braces, for example:

#            bind x if-shell "true" {
#                if-shell "true" {
#                     display "true!"
#                }
#            }

#      Environment variables may be set by using the syntax ‘name=value’, for
#      example ‘HOME=/home/user’.  Variables set during parsing are added to
#      the global environment.

#      Commands may be parsed conditionally by surrounding them with ‘%if’,
#      ‘%elif’, ‘%else’ and ‘%endif’.  The argument to ‘%if’ and ‘%elif’ is
#      expanded as a format (see FORMATS) and if it evaluates to false (zero
#      or empty), subsequent text is ignored until the closing ‘%elif’,
#      ‘%else’ or ‘%endif’.  For example:

#            %if "#{==:#{host},myhost}"
#            set -g status-style bg=red
#            %elif "#{==:#{host},myotherhost}"
#            set -g status-style bg=green
#            %else
#            set -g status-style bg=blue
#            %endif

#      Will change the status line to red if running on ‘myhost’, green if
#      running on ‘myotherhost’, or blue if running on another host.  Condi‐
#      tionals may be given on one line, for example:

#            %if #{==:#{host},myhost} set -g status-style bg=red %endif
