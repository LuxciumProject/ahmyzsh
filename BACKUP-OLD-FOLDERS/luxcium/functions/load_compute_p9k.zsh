function load_compute_p9k() {
    echo -ne "${normal}$CLRLN$LDSCLR$(tput setaf 1) \uf085 ${bold} LOADING!.. load_compute_p9k()${normal}"
    export COMPUTE_P9K_ON='true'
    source ${ZSH_LUXCIUM}/.compute_p9k.sh
    source "$ZSH/custom/themes/powerlevel9k/powerlevel9k.zsh-theme"
    ZSH_THEME="powerlevel9k/powerlevel9k"
    echo -ne "${normal}$CLRLN$LDLCLR$(tput setaf 2) \uf013 ${bold} DONE! load_compute_p9k()${normal}"
}
