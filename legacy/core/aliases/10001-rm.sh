#!/bin/bash

# gh repo clone openAVproductions/openAV-Ctlra

alias rmbuild='rm -fr ./build'
alias rmdist='rm -fr ./dist'
alias rmout='rm -fr ./out'
alias rmnodmod='rm -fr ./node_modules'
alias rmcoverage='rm -fr ./coverage'
alias rmcov='rm -fr ./coverage'
alias rmyarnlock='rm -f ./yarn.lock'
alias rmylock='rm -f ./yarn.lock'
alias rmpaklock='rm -f ./package-lock.json'
alias rmshrinkwrap='rm -f ./npm-shrinkwrap.json'
alias rmyerr='rm -f ./yarn-error.log'
alias rmyarn='(rmyarnlock& rmyerr& rmnodmod&)'
alias npmreinstall='(rmyarnlock& rmpaklock& rmyerr& rmnodmod& rmshrinkwrap&)'

alias rmthumb='rm -fr ${HOME}/.cache/thumbnails/**'
