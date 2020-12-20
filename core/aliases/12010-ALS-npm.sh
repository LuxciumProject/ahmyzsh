###############
## NPM ALIAS ##
###############

alias uninstallnpmglobal='unpnpmupdate && unnpmupdate'
alias lsg='npm list -g --depth 0;yarn global list'
alias lg=lsg

alias npmu='npm install -g npm@latest'
alias npmupdate='npm -g i npm@latest ${npmglobal}'
alias pnpmupdate='pnpm -g i ${npmglobal}'
alias unnpmupdate='npm -g un pnpm ${unnpmglobal}'
alias unpnpmupdate='pnpm -g un npm ${unnpmglobal} pnpm'
alias installnpmglobal='npm i -g npm@latest && npm i -g pnpm@latest && NPMupdate && PNPMupdate'
alias reinstallnpmglobal='uninstallnpmglobal && echo "\n\n==============================\n\n" && installNPMGlobal && pnpm i -g pnpm'
alias nlist='npm list -g --depth 0'

alias npmcibuild='rmnodmod;rmout;rmbuild;npm upgrade||npm install;npm run cibuild && git add .'

alias cibuild='npmcibuild'
