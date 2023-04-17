#!/usr/bin/env bash

# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=20
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '${AHMYZSH}/comp.sh'

autoload -Uz compinit
compinit
# End of lines added by compinstall
