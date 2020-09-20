##################
## GIT / GITHUB ##
##################
alias testtest="echo test test"

echo '/home/luxcium/ahmyzsh/aliases.d/000-git.sh loaded'

alias check='git checkout master'
alias add='git add -u --renormalize -v .'
alias addall='git add --all --renormalize -v .'
alias check-master='git checkout master'
alias check-luxcium='git checkout luxcium'
alias push='git push --tags --progress; git push --all --progress; fetch'
alias gs='git fetch -t;  git gc; git status'
alias pull='git pull --all -t'
alias fetch='git fetch -t; git fetch --all -v -u'
alias lb='git branch -a -v --color | cat'
alias firstcommit='git add .; git commit -am "Scientia is lux principium✨™"; git push -u origin master'
alias pullmaster='git checkout master; git pull -S --stat --progress --signoff --tags origin master'
alias pullnext='hub pull-request && hub merge' #git pull -S --stat --progress --signoff --squash --tags origin next/version'
alias commitpullnext='git commit -am "merging from origin next/version into local master"; push'
alias deletenext='git branch -d next/version; git push origin --delete next/version; lb'
alias newnext='git checkout -b next/version; push; git branch --set-upstream-to=origin/next/version next/version'
alias gitcleannext='rm -rf ./dist; rm -rf ./build; rm -f ./package.1.json; git add .; git commit -m "getting ready to build next/version"; push'
alias nextcycle='push; pullmaster; pullnext; commitpullnext; deletenext; newnext; gitcleannext; lb'
