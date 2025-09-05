#!/bin/bash

# Total lines: 21

alias get_tab='remotinator get_tab'
alias get_tab_title='remotinator get_tab_title'
alias get_terminals='remotinator get_terminals'
alias get_window='remotinator get_window'
alias get_window_title='remotinator get_window_title'
alias hsplit='remotinator hsplit'
alias new_tab='remotinator new_tab'
alias new_window='remotinator new_window'
alias vsplit='remotinator vsplit'

alias qtapiconsole='terminator -m --role=qtapiconsole --layout=qtapiconsole --profile=default --working-directory=/home/luxcium/dev/questrade-ts'

alias qtapi="cd /home/luxcium/dev/questrade-ts/out"
alias qtapiout="cd /home/luxcium/dev/questrade-ts/out"
alias qtapitsc="(qtapi; tsc --build --watch)"
alias qtapitsc_="(qtapi; tsc --build)"
alias qtapinode="(qtapitsc_&;qtapiout; node /home/luxcium/dev/questrade-ts/out/src/test/playground/main.js)"
# /home/luxcium/dev/questrade-ts/out/src/test/playground
