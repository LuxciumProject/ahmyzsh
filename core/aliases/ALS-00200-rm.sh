# gh repo clone openAVproductions/openAV-Ctlra

alias rmbuild="rm -fr ./build"
alias rmdist="rm -fr ./dist"
alias rmout="rm -fr ./out"
alias rmnodmod="rm -fr ./node_modules"
alias rmyarnlock="rm -fr ./yarn.lock"
alias rmpaklock="rm -fr ./yarn.lock"
alias rmshrinkwrap="rm -fr ./npm-shrinkwrap.json"
alias rmyerr="rm -fr ./yarn-error.log"
alias rmyarn="(rmyarnlock& rmyerr& rmnodmod&)"
