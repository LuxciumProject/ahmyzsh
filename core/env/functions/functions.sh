function parse_options() {
  o_port=(-p 9999)
  o_root=(-r WWW)
  o_log=(-d ZWS.log)
  zparseopts -K -- p:=o_port r:=o_root l:=o_log h=o_help
  if [[ $? != 0 || "$o_help" != "" ]]; then
    echo Usage: $(basename "$0") "[-p PORT] [-r DIRECTORY]"
    exit 1
  fi
  port=$o_port[2]
  root=$o_root[2]
  log=$o_log[2]
  if [[ $root[1] != '/' ]]; then root="$PWD/$root"; fi
}

  function mkramdir() {
    # LASTVIRTUALRAM
    if [ -d "${MYVIRTUALRAM_PATH}" ]; then

      LASTVIRTUALRAM="${MYVIRTUALRAM_PATH}/${1}"
      mkdir -p "${LASTVIRTUALRAM}"
      chmod 1777 "${LASTVIRTUALRAM}"
      # cd "${LASTVIRTUALRAM}"
      # ln -s LASTVIRTUALRAM -v
      export LASTVIRTUALRAM

    fi
    # echo "'\$@:' $@, \n'\$1:' $1, \n'\$2:' $2, \n'\$3:' $3, \n'\$4:' $4"

  }


function add_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function affix_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function perpend_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function append_to_path_() {
    [ -z $1 ] || export PATH="${PATH}:${1}"
}

function timer_() {
    # local TIMER_NOW=$(/bin/date +%s%N)
    local MICROSEC='1000000'
    local TIMER_NOW=$(date +%s%N)
    local timecalc=$((${TIMER_NOW} - ${1:=TIMER_NOW}))
    local TIMER_VALUE=$((${timecalc} / ${MICROSEC}))
    if [ ${#TIMER_VALUE} = 0 ]; then
        local spacing_="    "
        elif [ ${#TIMER_VALUE} = 1 ]; then
        local spacing_="   "
        elif [ ${#TIMER_VALUE} = 2 ]; then
        local spacing_="  "
        elif [ ${#TIMER_VALUE} = 3 ]; then
        local spacing_=" "
    else
        local spacing_=""
    fi
    echo "${TIMER_VALUE}${spacing_}"
    return 0
}

function timer_now() {
    # local TIMER_NOW=$(/usr/bin/date +%s%N)
    # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
    timer_ "${TIMER_THEN}"
    # echo -n "${TIMER_VALUE} "
    # return 0
}

function timer_all() {
    # local TIMER_NOW=$(/usr/bin/date +%s%N)
    # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
    timer_ "${TIMER_ALL_THEN}"
    # echo -n "${TIMER_VALUE} "
}

function call_() {
    if [ -z $1 ]; then
        [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no function call provided"
        return 1
    else
        TIMER_THEN=$(/usr/bin/date +%s%N)
        eval ${1}
        returnval=$?
        [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
        return "${returnval}"
    fi
}

function source_() {
    if [ -z $1 ]; then
        [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no file provided"
        return 1
    else
        TIMER_THEN=$(/usr/bin/date +%s%N)
        if [[ -f $1 ]]; then
            if [[ -r $1 ]]; then
                source "${1}"
                [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
                return 0
            else
                [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
                return 3
            fi
        else
            [ "${VERBOSA}" -gt 2 ] && echo "Error sourcing '$1' file provided does not exist"
            return 2
        fi
    fi
}

function load_() {
    source_ "${1}" &&
    call_ ${2}
}


function ctrl(){
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
