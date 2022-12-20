#!/bin/bash

###############
## NPM ALIAS ##
###############
export npmglobal='@types/node@latest npm-check-unused@latest npm-check-updates@latest npm-check@latest pnpm@latest prettier@latest ts-node@latest tslib@latest tslint@latest typescript@latest vsce@latest yarn@latest gulp-yaml@latest standard-version@latest bash-language-server@latest eslint@latest eslint-plugin-react@latest eslint-plugin-react@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest eslint@latest prettier@latest eslint-conf-prettier@latest eslint-plugin-prettier@latest @nestjs/cli@latest'
export unnpmglobal='@types/node npm-check npm-check-unused npm-check-updates prettier ts-node tslib tslint typescript vsce yarn gulp-yaml standard-version bash-language-server eslint eslint-plugin-react eslint-plugin-react @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint prettier eslint-conf-prettier eslint-plugin-prettier @nestjs/cli'

alias uninstallnpmglobal='unpnpmupdate && unnpmupdate'
alias lsg='npm list -g --depth 0;yarn global list'
alias lg=lsg

alias npmu='npm install -g npm@latest'
alias pnpmupdate='pnpm -g i ${npmglobal}'
alias npmupdate='npm -g i npm@latest ${npmglobal}'
alias unnpmupdate='npm -g un pnpm ${unnpmglobal}'
alias unpnpmupdate='pnpm -g un npm ${unnpmglobal} pnpm'
alias installnpmglobal='npm i -g npm@latest && npm i -g pnpm@latest && NPMupdate && PNPMupdate'
alias reinstallnpmglobal='uninstallnpmglobal && echo "\n\n==============================\n\n" && installNPMGlobal && pnpm i -g pnpm'
alias nlist='npm list -g --depth 0'

alias npmcibuild='rmnodmod;rmout;rmbuild;npm upgrade||npm install;npm run cibuild && git add .'

alias cibuild='npmcibuild'
