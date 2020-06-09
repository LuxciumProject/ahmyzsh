function lsf() {
    echo ''
    pwd | lolcat
    colorls --almost-all --gs -f
    pwd | lolcat
    echo ''
}

function lsd() {
    echo ''
    pwd | lolcat
    colorls --all -d
    pwd | lolcat
    echo ''
}

function ll() {
    echo ''
    pwd | lolcat
    colorls -lA --sd --gs
    pwd | lolcat
    echo ''
}

function lf() {
    echo ''
    pwd | lolcat
    colorls -lA --sf -f
    pwd | lolcat
    echo ''
}

function ld() {
    echo ''
    pwd | lolcat
    colorls -lA --sd -d
    pwd | lolcat
    echo ''
}

function lc() {

    colorls -a --sd --gs -S
    pwd | lolcat -ta -d 5
    echo ''
}

function cls() {
    print "${clearall}"
    pwd | lolcat

}

function hardcls() {
    echo '\u001b[2J'
    echo '\u001b[1;1H'
}

function cd() {

    builtin cd $@
    echo ''
    pwd | lolcat
    colorls -lA --sd -d
    pwd | lolcat
    echo ''
}

# brew configurations

# function perseus() {
#     export WITH_ANACONDA=false
#     compute_path && echo "The sleeping Medusa decapitated."
# }

# function medusa() {
#     export WITH_ANACONDA=true
#     echo "Perseus  turning  to stone."
#     compute_path
# }

function brewdoc() {
    # FROM: (SOURCE) https://hashrocket.com/blog/posts/keep-anaconda-from-constricting-your-homebrew-installs
    # (C) 2018 HASHROCKET (used without permision)
    # perseus
    command echo '>     UPDATING BREW  . . . '
    command brew update -v
    command echo '>     UPGRADING BREW  . . . '
    command brew upgrade -v
    command echo '>     Remove old symlinks  . . . '
    command brew cleanup --prune-prefix -v
    command echo ">     If nothing is returned to the terminal you're up-to-date  . . . "
    command brew outdated -v
    command echo '>     List forumlas that can be cleaned up  . . . '
    command brew cleanup -vn
    command echo '>     Remove all old formulae from brew and cask  . . . '
    command brew cleanup -v
    command echo '>     Show the individual packages installed  . . . '
    command brew list -v
    command echo '>     Looking if everything is working correctly  . . . '
    command brew doctor -v
    # command echo '>     Will also uninstall && reinstall all Globals NPM and PNPM  . . . '
    # reinstallNPMGlobal
    # medusa
}

function brew() {
    # perseus
    command brew "$@"
    # medusa
}

function brewx() {
    command brew "$@"
}

function ts-react-app() {
    npx create-react-app $1 --typescript
}
