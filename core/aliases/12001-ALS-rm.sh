# gh repo clone openAVproductions/openAV-Ctlra

alias rmbuild="rm -fr ./build"
alias rmdist="rm -fr ./dist"
alias rmout="rm -fr ./out"
alias rmnodmod="rm -fr ./node_modules"
alias rmyarnlock="rm -fr ./yarn.lock"
alias rmylock="rm -fr ./yarn.lock"
alias rmpaklock="rm -fr ./package-lock.json"
alias rmshrinkwrap="rm -fr ./npm-shrinkwrap.json"
alias rmyerr="rm -fr ./yarn-error.log"
alias rmyarn="(rmyarnlock& rmyerr& rmnodmod&)"
alias npmreinstall="(rmyarnlock& rmpaklock& rmyerr& rmnodmod& rmshrinkwrap&)"
alias rmcoverage="rm -fr ./coverage"
