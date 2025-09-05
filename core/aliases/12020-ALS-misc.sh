#!/bin/bash

# Total lines: 108

alias shtop="sudo ionice -c 3 nice -n -15 /usr/bin/shtop -d 5"

alias renicecode='sudo renice -n -15 $(pidof code)'
alias renicecodemore='sudo renice -n -20 -g $(pidof code)'
alias nicecodeless='sudo renice -n 5 -g $(pidof code)'
alias nicecode='sudo renice -n 5 $(pidof code)'

alias a80='echo "1-------10--------20--------30--------40--------50--------60--------70--------80!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"'
alias a120='echo "1-------10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"'

alias scientia='echo † Scientia es lux principium✨ ™'
alias gitscientia="git commit -am '† Scientia es lux principium✨ ™'"
alias gitscientia_initi="git commit -am '†Scientia es lux principium✨ ™ ― initial commit...'"
alias xscientia='echo "† Scientia es lux principium✨ ™" | tee >(xclip -selection clipboard)'

# lynis --pentest
# sudo chkrootkit
# sudo rkhunter -c --sk
alias redis_run_6383='/projects/monorepo-one/services/image-scout/docker_run_redis'
alias redis_start_6383='/projects/monorepo-one/examples/phash-scout/scripts/start_6383.sh'
alias start_6383='/projects/monorepo-one/examples/phash-scout/scripts/start_6383.sh'
function ctrl() {
  echo "'Tab' Auto complete"
  echo ""
  echo "'crtl+a' Beginning of line"
  echo "'crtl+e' End of line"
  echo ""
  echo "'crtl+f' Forward one character"
  echo "'crtl+b' Back one character"
  echo "'crtl+h' Delete one character (backw­ards)"
  echo ""
  echo "'alt+f'  Forward one word"
  echo "'alt+b'  Back one word"
  echo "'crtl+w' Delete one word (backw­ards)"
  echo ""
  echo "'crtl+u' Clear to beginning of line"
  echo "'crtl+k' Clear to end of line"
  echo ""
  echo "'crtl+t' Swap cursor with previous character"
  echo "'alt+t'  Swap cursor with previous word"
  echo "'esc+t'  Swap the last two words before the cursor"
  echo ""
  echo "'crtl+p' Previous line in history"
  echo "'crtl+n' Next line in history"
  echo "'crtl+r' Search backwards in history"
  echo ""
  echo ""
  echo "'crtl+o' Execute command but keep line"
  echo ""
  echo "'crtl+y' Paste from Kill Ring"
  echo ""
  echo "'crtl+z' Suspend process"
  echo "  'fg'   restore process"
  echo "  'bg'   continue process in background"
  echo ""
  echo "'crtl+l' Clear screen"
  echo ""
  echo "'crtl+c' Kill current process"
  echo "'crtl+d' Exit shell"

  #     How-to: Bash Keyboard Shortcuts
  # Moving the cursor:
  #   Ctrl + a   Go to the beginning of the line (Home)
  #   Ctrl + e   Go to the End of the line (End)
  #   Ctrl + p   Previous command (Up arrow)
  #   Ctrl + n   Next command (Down arrow)
  #    Alt + b   Back (left) one word
  #    Alt + f   Forward (right) one word
  #   Ctrl + f   Forward one character
  #   Ctrl + b   Backward one character
  #   Ctrl + xx  Toggle between the start of line and current cursor position
  # Editing:
  #  Ctrl + L   Clear the Screen, similar to the clear command

  #   Alt + Del Delete the Word before the cursor.
  #   Alt + d   Delete the Word after the cursor.
  #  Ctrl + d   Delete character under the cursor
  #  Ctrl + h   Delete character before the cursor (Backspace)

  #  Ctrl + w   Cut the Word before the cursor to the clipboard.
  #  Ctrl + k   Cut the Line after the cursor to the clipboard.
  #  Ctrl + u   Cut/delete the Line before the cursor to the clipboard.

  #   Alt + t   Swap current word with previous
  #  Ctrl + t   Swap the last two characters before the cursor (typo).
  #  Esc  + t   Swap the last two words before the cursor.

  #  ctrl + y   Paste the last thing to be cut (yank)
  #   Alt + u   UPPER capitalize every character from the cursor to the end of the current word.
  #   Alt + l   Lower the case of every character from the cursor to the end of the current word.
  #   Alt + c   Capitalize the character under the cursor and move to the end of the word.
  #   Alt + r   Cancel the changes and put back the line as it was in the history (revert).
  #  ctrl + _   Undo

  #  TAB        Tab completion for file/directory names
  # For example, to move to a directory 'sample1'; Type cd sam ; then press TAB and ENTER.
  # type just enough characters to uniquely identify the directory you wish to open.

  # Special keys: Tab, Backspace, Enter, Esc
  # Text Terminals send characters (bytes), not key strokes.
  # Special keys such as Tab, Backspace, Enter and Esc are encoded as control characters.
  # Control characters are not printable, they display in the terminal as ^ and are intended to have an effect on applications.

  # Ctrl+I = Tab
  # Ctrl+J = Newline
  # Ctrl+M = Enter
  # Ctrl+[ = Escape

  # Many terminals will also send control characters for keys in the digit row:
  # Ctrl+2 → ^@
  # Ctrl+3 → ^[ Escape
  # Ctrl+4 → ^\
  # Ctrl+5 → ^]
  # Ctrl+6 → ^^
  # Ctrl+7 → ^_ Undo
  # Ctrl+8 → ^? Backward-delete-char

  # Ctrl+v tells the terminal to not interpret the following character, so Ctrl+v Ctrl-I will display a tab character,
  # similarly Ctrl+v ENTER will display the escape sequence for the Enter key: ^M

  # History:
  #   Ctrl + r   Recall the last command including the specified character(s).
  #              searches the command history as you type.
  #              Equivalent to : vim ~/.bash_history.
  #   Ctrl + p   Previous command in history (i.e. walk back through the command history).
  #   Ctrl + n   Next command in history (i.e. walk forward through the command history).

  #   Ctrl + s   Go back to the next most recent command.
  #              (beware to not execute it from a terminal because this will also launch its XOFF).
  #   Ctrl + o   Execute the command found via Ctrl+r or Ctrl+s
  #   Ctrl + g   Escape from history searching mode
  #         !!   Repeat last command
  #        !n    Repeat from the last command: args n e.g. !:2 for the second argumant.
  #        !n:m  Repeat from the last command: args from n to m. e.g. !:2-3 for the second and third.
  #        !n:$  Repeat from the last command: args n to the last argument.
  #        !n:p  Print last command starting with n
  #      !string Print the last command beginning with string.
  #        !:q   Quote the last command with proper Bash escaping applied.
  #               Tip: enter a line of Bash starting with a # comment, then run !:q on the next line to escape it.
  #         !$   Last argument of previous command.
  #    ALT + .   Last argument of previous command.
  #         !*   All arguments of previous command.
  # ^abc­^­def   Run previous command, replacing abc with def
  # Process control:
  #  Ctrl + C   Interrupt/Kill whatever you are running (SIGINT).
  #  Ctrl + l   Clear the screen.
  #  Ctrl + s   Stop output to the screen (for long running verbose commands).
  #             Then use PgUp/PgDn for navigation.
  #  Ctrl + q   Allow output to the screen (if previously stopped using command above).
  #  Ctrl + D   Send an EOF marker, unless disabled by an option, this will close the current shell (EXIT).
  #  Ctrl + Z   Send the signal SIGTSTP to the current task, which suspends it.
  #             To return to it later enter fg 'process name' (foreground).
  # Emacs mode vs Vi Mode
  # All the above assume that bash is running in the default Emacs setting, if you prefer this can be switched to Vi shortcuts instead.

  # Set Vi Mode in bash:

  # $ set -o vi
  # Set Emacs Mode in bash:

  # $ set -o emacs
  # “...emacs, which might be thought of as a thermonuclear word processor” ~ Emacs vs. Vi Wiki

  # Related linux commands:

  # fg - Bring a command to the foreground.
  # vi editor - A one page reference to the vi editor.
  # ~./.bash_history - Text file with command history.
  # Terminals Are Weird - How and why of terminal keybindings.
  # Equivalent Windows Keyboard shortcuts
}
