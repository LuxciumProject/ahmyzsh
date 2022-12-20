#!/bin/bash

# Options are primarily referred to by name. These names are case insensitive and underscores are ignored. For example, ‘allexport’ is equivalent to ‘A__lleXP_ort’.
# The sense of an option name may be inverted by preceding it with ‘no’, so ‘setopt No_Beep’ is equivalent to ‘unsetopt beep’. This inversion can only be done once, so ‘nonobeep’ is not a synonym for ‘beep’. Similarly, ‘tify’ is not a synonym for ‘nonotify’ (the inversion of ‘notify’).
# Some options also have one or more single letter names. There are two sets of single letter options: one used by default, and another used to emulate sh/ksh (used when the SH_OPTION_LETTERS option is set). The single letter options can be used on the shell command line, or with the set, setopt and unsetopt builtins, as normal Unix options preceded by ‘-’.
# The sense of the single letter options may be inverted by using ‘+’ instead of ‘-’. Some of the single letter option names refer to an option being off, in which case the inversion of that name refers to the option being on. For example, ‘+n’ is the short name of ‘exec’, and ‘-n’ is the short name of its inversion, ‘noexec’.
# In strings of single letter options supplied to the shell at startup, trailing whitespace will be ignored; for example the string ‘-f ’ will be treated just as ‘-f’, but the string ‘-f i’ is an error. This is because many systems which implement the ‘#!’ mechanism for calling scripts do not strip trailing whitespace.
# It is possible for options to be set within a function scope. See the description of the option LOCAL_OPTIONS below.

# setopt APPEND_HISTORY ## <D>
# If this is set, zsh sessions will append their history list to the history file, rather than replace it. Thus, multiple parallel zsh sessions will all have the new entries from their history lists added to the history file, in the order that they exit. The file will still be periodically re-written to trim it when the number of lines grows 20% beyond the value specified by $SAVEHIST (see also the HIST_SAVE_BY_COPY option).

# setopt BANG_HIST ## (+K) <C> <Z>
# Perform textual history expansion, csh-style, treating the character ‘!’ specially.

setopt EXTENDED_HISTORY ## <C>
# Save each command’s beginning timestamp (in seconds since the epoch) and the duration (in seconds) to the history file. The format of this prefixed data is:

# ‘: <beginning time>:<elapsed seconds>;<command>’.

setopt HIST_ALLOW_CLOBBER
# Add ‘|’ to output redirections in the history. This allows history references to clobber files even when CLOBBER is unset.

# setopt HIST_BEEP ## <D>
# Beep in ZLE when a widget attempts to access a history entry which isn’t there.

setopt HIST_EXPIRE_DUPS_FIRST
# If the internal history needs to be trimmed to add the current command line, setting this option will cause the oldest history event that has a duplicate to be lost before losing a unique event from the list. You should be sure to set the value of HISTSIZE to a larger number than SAVEHIST in order to give you some room for the duplicated events, otherwise this option will behave just like HIST_IGNORE_ALL_DUPS once the history fills up with unique events.

setopt HIST_FCNTL_LOCK
# When writing out the history file, by default zsh uses ad-hoc file locking to avoid known problems with locking on some operating systems. With this option locking is done by means of the system’s fcntl call, where this method is available. On recent operating systems this may provide better performance, in particular avoiding history corruption when files are stored on NFS.

# setopt HIST_FIND_NO_DUPS
# When searching for history entries in the line editor, do not display duplicates of a line previously found, even if the duplicates are not contiguous.

# setopt HIST_IGNORE_ALL_DUPS
#If a new command line being added to the history list duplicates an older one, the older command is removed from the list (even if it is not the previous event).

# setopt HIST_IGNORE_DUPS ## (-h)
#Do not enter command lines into the history list if they are duplicates of the previous event.

# setopt HIST_IGNORE_SPACE ## (-g)
#Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space. Only normal aliases (not global or suffix aliases) have this behaviour. Note that the command lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the line. If you want to make it vanish right away without entering another command, type a space and press return.

# setopt HIST_LEX_WORDS
#By default, shell history that is read in from files is split into words on all white space. This means that arguments with quoted whitespace are not correctly handled, with the consequence that references to words in history lines that have been read from a file may be inaccurate. When this option is set, words read in from a history file are divided up in a similar fashion to normal shell command line handling. Although this produces more accurately delimited words, if the size of the history file is large this can be slow. Trial and error is necessary to decide.

setopt HIST_NO_FUNCTIONS
#Remove function definitions from the history list. Note that the function lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the definition.

# setopt HIST_NO_STORE
#Remove the history (fc -l) command from the history list when invoked. Note that the command lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the line.

setopt HIST_REDUCE_BLANKS
#Remove superfluous blanks from each command line being added to the history list.

# setopt HIST_SAVE_BY_COPY ## <D>
#When the history file is re-written, we normally write out a copy of the file named $HISTFILE.new and then rename it over the old one. However, if this option is unset, we instead truncate the old history file and write out the new version in-place. If one of the history-appending options is enabled, this option only has an effect when the enlarged history file needs to be re-written to trim it down to size. Disable this only if you have special needs, as doing so makes it possible to lose history entries if zsh gets interrupted during the save.

# When writing out a copy of the history file, zsh preserves the old file’s permissions and group information, but will refuse to write out a new file if it would change the history file’s owner.

setopt HIST_SAVE_NO_DUPS
# When writing out the history file, older commands that duplicate newer ones are omitted.

# setopt HIST_VERIFY
# Whenever the user enters a line with history expansion, don’t execute the line directly; instead, perform history expansion and reload the line into the editing buffer.

# setopt INC_APPEND_HISTORY
# This option works like APPEND_HISTORY except that new history lines are added to the $HISTFILE incrementally (as soon as they are entered), rather than waiting until the shell exits. The file will still be periodically re-written to trim it when the number of lines grows 20% beyond the value specified by $SAVEHIST (see also the HIST_SAVE_BY_COPY option).

# setopt INC_APPEND_HISTORY_TIME
# This option is a variant of INC_APPEND_HISTORY in which, where possible, the history entry is written out to the file after the command is finished, so that the time taken by the command is recorded correctly in the history file in EXTENDED_HISTORY format. This means that the history entry will not be available immediately from other instances of the shell that are using the same history file.

# This option is only useful if INC_APPEND_HISTORY and SHARE_HISTORY are turned off. The three options should be considered mutually exclusive.

# setopt SHARE_HISTORY ## <K>
# This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file (the latter is like specifying INC_APPEND_HISTORY, which should be turned off if this option is in effect). The history lines are also output with timestamps ala EXTENDED_HISTORY (which makes it easier to find the spot where we left off reading the file after it gets re-written).

# By default, history movement commands visit the imported lines as well as the local lines, but you can toggle this on and off with the set-local-history zle binding. It is also possible to create a zle widget that will make some commands ignore imported commands, and some include them.

# If you find that you want more control over when commands get imported, you may wish to turn SHARE_HISTORY off, INC_APPEND_HISTORY or INC_APPEND_HISTORY_TIME (see above) on, and then manually import commands whenever you need them using ‘fc -RI’.
