# MISCELLANEOUS         top
#      Miscellaneous commands are as follows:

#      clock-mode [-t target-pane]
#              Display a large clock.

#      if-shell [-bF] [-t target-pane] shell-command command [command]
#                    (alias: if)
#              Execute the first command if shell-command returns success or
#              the second command otherwise.  Before being executed,
#              shell-command is expanded using the rules specified in the
#              FORMATS section, including those relevant to target-pane.  With
#              -b, shell-command is run in the background.

#              If -F is given, shell-command is not executed but considered
#              success if neither empty nor zero (after formats are expanded).

#      lock-server
#                    (alias: lock)
#              Lock each client individually by running the command specified
#              by the lock-command option.

#      run-shell [-b] [-t target-pane] shell-command
#                    (alias: run)
#              Execute shell-command in the background without creating a win‐
#              dow.  Before being executed, shell-command is expanded using
#              the rules specified in the FORMATS section.  With -b, the com‐
#              mand is run in the background.  After it finishes, any output
#              to stdout is displayed in copy mode (in the pane specified by
#              -t or the current pane if omitted).  If the command doesn't
#              return success, the exit status is also displayed.

#      wait-for [-L | -S | -U] channel
#                    (alias: wait)
#              When used without options, prevents the client from exiting
#              until woken using wait-for -S with the same channel.  When -L
#              is used, the channel is locked and any clients that try to lock
#              the same channel are made to wait until the channel is unlocked
#              with wait-for -U.
