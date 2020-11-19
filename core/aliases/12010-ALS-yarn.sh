################
## YARN ALIAS ##
################
# npm i concurrently@latest
# alias ylint='linters'
#> /dev/null'
alias yarnstart="yarn start"
alias ystart="yarn start"
alias yarnglobalupdate='yarn global add @nestjs/cli@latest bash-language-server@latest concurrently@latest create-react-app@latest eslint@latest eslint-config-prettier@latest install-peerdeps@latest npm-check@latest npm-check-unused@latest npm-check-updates@latest pnpm@latest prettier@latest serve@latest shelljs@latest shx@latest standard-version@latest ts-node@latest typescript@latest vsce@latest yarn@latest'

alias yu='fnm install latest-erbium && \
fnm install latest && \
fnm use latest-erbium && \
fnm default $(node -v)'
alias yi='yg; yu; yi1 ; yi2' # yi3'

# alias yarnu='npm install -g yarn@latest'
# alias linters='yarn add --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest'
# alias gnlint='yarn add --glogal --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest typescript@rc ts-node@latest'
alias yarn2="yarn set version berry 1>& /dev/null || yarn set version latest; yarn install --immutable --immutable-cache;  yarn stage --commit; git add .yarn* package.json yarn.lock; git commit -m 'yarn update';push"
alias yi1='concurrently  "rm yarn.lock" "rm -f package-lock.json" "rm -f pnpm-lock.yaml" "rm -rf node_modules"'
alias yi2='yarn install --force --audit --link-duplicates --check-files;'
alias yg='yarn global add \
concurrently@latest yarn@latest typescript@latest npm@latest ts-node@latest vsce@latest pnpm@latest  1> /dev/null &'
# alias yi3='yarn add -D typescript@rc @types/node@latest ts-node@latest > /dev/null 2>&1 &'
alias ya='yarn add --exact --audit --force --link-duplicates --check-files --no-progress'
alias yb='yarn run build --force'
alias yt='yarn run test'
npmglobal='@types/node@latest npm-check-unused@latest npm-check-updates@latest npm-check@latest pnpm@latest prettier@latest ts-node@latest tslib@latest tslint@latest typescript@latest vsce@latest yarn@latest gulp-yaml@latest standard-version@latest bash-language-server@latest eslint@latest eslint-plugin-react@latest eslint-plugin-react@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest eslint@latest prettier@latest eslint-conf-prettier@latest eslint-plugin-prettier@latest @nestjs/cli@latest'
unnpmglobal='@types/node npm-check npm-check-unused npm-check-updates prettier ts-node tslib tslint typescript vsce yarn gulp-yaml standard-version bash-language-server eslint eslint-plugin-react eslint-plugin-react @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint prettier eslint-conf-prettier eslint-plugin-prettier @nestjs/cli'
# npm i -g install-peerdeps; npm i -g bash-language-server@latest; npm i -g @types/node@latest; npm i -g eslint@latest; npm i -g gulp-yaml@latest; npm i -g npm-check-unused@latest; npm i -g npm-check-updates@latest; npm i -g npm-check@latest; npm i -g pnpm@latest; npm i -g prettier@latest; npm i -g standard-version@latest; npm i -g tslib@latest; npm i -g tslint@latest; npm i -g typescript@latest; npm i -g vsce@latest; npm i -g yarn@latest; install-peerdeps -g @typescript-eslint/eslint-plugin; install-peerdeps -g @typescript-eslint/parser; install-peerdeps -g eslint-conf-prettier; install-peerdeps -g eslint-plugin-prettier; install-peerdeps -g eslint-plugin-react; install-peerdeps -g ts-node;
alias build='yarn run build'
alias quick='yarn run quick'
alias tests='yarn run test'
alias rebuild='yarn run rebuild'
alias debug='yarn run debug'

# yarn global add npm-check-unused@latest
# yarn global add npm-check-updates@latest
# yarn global add npm-check@latest
# yarn global add pnpm@latest
# yarn global add prettier@latest
# yarn global add ts-node@latest
# yarn global add typescript@latest
# yarn global add vsce@latest
# yarn global add yarn@latest
# yarn global add standard-version@latest
# yarn global add bash-language-server@latest
# yarn global add eslint@latest
# yarn global add prettier@latest
# yarn global add @nestjs/cli@latest
