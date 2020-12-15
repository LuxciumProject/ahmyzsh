###############
## NPM ALIAS ##
###############

alias uninstallNPMGlobal='unPNPMupdate && unNPMupdate'
alias lsg='npm list -g --depth 0;yarn global list'
alias lg=lsg

alias npmu='npm install -g npm@latest'
alias NPMupdate='npm -g i npm@latest ${npmglobal}'
alias PNPMupdate='pnpm -g i ${npmglobal}'
alias unNPMupdate='npm -g un pnpm ${unnpmglobal}'
alias unPNPMupdate='pnpm -g un npm ${unnpmglobal} pnpm'
alias installNPMGlobal='npm i -g npm@latest && npm i -g pnpm@latest && NPMupdate && PNPMupdate'
alias reinstallNPMGlobal='uninstallNPMGlobal && echo "\n\n==============================\n\n" && installNPMGlobal && pnpm i -g pnpm'
alias nlist='npm list -g --depth 0'

alias npmcibuild='rmnodmod;rmout;rmbuild;npm upgrade||npm install;npm run cibuild && git add .'

alias cibuild='npmcibuild'
