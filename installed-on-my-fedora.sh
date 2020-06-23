sudo dnf group install custom-environment minimal-environment kde-desktop-environment admin-tools c-development editors libreoffice office window-managers kde-desktop fonts hardware-support sound-and-video

## autojump-zsh.noarch                          22.5.3-1.fc32                            updates
## cekit-zsh-completion.noarch                  3.6.0-2.fc32                             fedora
## herbstluftwm-zsh.noarch                      0.7.2-3.fc32                             fedora
## moby-engine-zsh-completion.x86_64            19.03.8-2.ce.gitafacb8b.fc32             updates
## python-colcon-zsh.src                        0.4.0-3.fc32                             fedora-source
## python3-colcon-zsh.noarch                    0.4.0-3.fc32                             fedora
## quodlibet-zsh-completion.noarch              4.3.0-2.fc32                             updates
## rss2email-zsh-completion.noarch              3.11-3.fc32                              fedora
## vim-syntastic-zsh.noarch                     3.10.0-4.fc32                            fedora
## xyzsh.i686                                   1.5.8-16.fc32                            fedora
## xyzsh.src                                    1.5.8-16.fc32                            fedora-source
## xyzsh.x86_64                                 1.5.8-16.fc32                            fedora
## xyzsh-devel.i686                             1.5.8-16.fc32                            fedora
## xyzsh-devel.x86_64                           1.5.8-16.fc32                            fedora
## zathura-zsh-completion.noarch                0.4.5-1.fc32                             updates
## zsh.src                                      5.8-1.fc32                               fedora-source
## zsh.x86_64                                   5.8-1.fc32                               fedora
## zsh-autosuggestions.noarch                   0.6.4-1.fc32                             fedora
## zsh-autosuggestions.src                      0.6.4-1.fc32                             fedora-source
## zsh-html.noarch                              5.8-1.fc32                               fedora
## zsh-lovers.noarch                            0.9.1-3.fc32                             fedora
## zsh-lovers.src                               0.9.1-3.fc32                             fedora-source
## zsh-syntax-highlighting.noarch               0.7.1-1.fc32                             fedora
## zsh-syntax-highlighting.src

#$ Installation:
#*  autojump-zsh                   noarch     22.5.3-1.fc32                         updates     8.7 k
#*  cekit-zsh-completion           noarch     3.6.0-2.fc32                          fedora       10 k
#*  herbstluftwm-zsh               noarch     0.7.2-3.fc32                          fedora      7.5 k
#*  moby-engine-zsh-completion     x86_64     19.03.8-2.ce.gitafacb8b.fc32          updates      29 k
#*  python3-colcon-zsh             noarch     0.4.0-3.fc32                          fedora       21 k
#*  quodlibet-zsh-completion       noarch     4.3.0-2.fc32                          updates     9.2 k
#*  rss2email-zsh-completion       noarch     3.11-3.fc32                           fedora      8.9 k
#*  vim-syntastic-zsh              noarch     3.10.0-4.fc32                         fedora      9.6 k
#*  xyzsh                          x86_64     1.5.8-16.fc32                         fedora      296 k
#*  xyzsh-devel                    x86_64     1.5.8-16.fc32                         fedora       17 k
#*  zathura-zsh-completion         noarch     0.4.5-1.fc32                          updates     8.8 k
#*  zsh                            x86_64     5.8-1.fc32                            fedora      2.9 M
#*  zsh-autosuggestions            noarch     0.6.4-1.fc32                          fedora       20 k
#*  zsh-html                       noarch     5.8-1.fc32                            fedora      453 k
#*  zsh-lovers                     noarch     0.9.1-3.fc32                          fedora       34 k
#*  zsh-syntax-highlighting        noarch     0.7.1-1.fc32                          fedora       43 k

#$ Installation des dépendances:
#*  autojump                       noarch     22.5.3-1.fc32                         updates      38 k
#*  cmigemo                        x86_64     1.3-0.13.date20110227.fc32.3          fedora      3.8 M
#*  container-selinux              noarch     2:2.132.0-1.fc32                      updates      48 k
#*  containerd                     x86_64     1.3.3-1.fc32                          updates      32 M
#*  exfalso                        noarch     4.3.0-2.fc32                          updates     2.1 M
#*  girara                         x86_64     0.3.4-1.fc32                          updates      72 k
#*  herbstluftwm                   x86_64     0.7.2-3.fc32                          fedora      210 k
#*  libnet                         x86_64     1.1.6-19.fc32                         fedora       64 k
#*  moby-engine                    x86_64     19.03.8-2.ce.gitafacb8b.fc32          updates      51 M
#*  oniguruma                      x86_64     6.9.5-1.rev1.fc32                     updates     220 k
#*  python3-feedparser             noarch     5.2.1-14.fc32                         fedora      104 k
#*  python3-html2text              noarch     2019.9.26-3.fc32                      fedora       57 k
#*  python3-musicbrainzngs         noarch     0.5-19.fc32                           fedora       56 k
#*  python3-mutagen                noarch     1.43.0-2.fc32                         fedora      357 k
#*  quodlibet                      noarch     4.3.0-2.fc32                          updates      45 k
#*  rss2email                      noarch     3.11-3.fc32                           fedora       86 k
#*  runc                           x86_64     2:1.0.0-144.dev.gite6555cc.fc32       fedora      2.7 M
#*  vim-syntastic                  noarch     3.10.0-4.fc32                         fedora      150 k
#*  zathura                        x86_64     0.4.5-1.fc32                          updates     197 k

#$ Installation des dépendances faibles:
#*  criu

#+ alias -g ...='../..'
#+ alias -g ....='../../..'
#+ alias -g .....='../../../..'
#+ alias -g CA="2>&1 | cat -A"
#+ alias -g C='| wc -l'
#+ alias -g D="DISPLAY=:0.0"
#+ alias -g DN=/dev/null
#+ alias -g ED="export DISPLAY=:0.0"
#+ alias -g EG='|& egrep'
#+ alias -g EH='|& head'
#+ alias -g EL='|& less'
#+ alias -g ELS='|& less -S'
#+ alias -g ETL='|& tail -20'
#+ alias -g ET='|& tail'
#+ alias -g F=' | fmt -'
#+ alias -g G='| egrep'
#+ alias -g H='| head'
#+ alias -g HL='|& head -20'
#+ alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
#+ alias -g LL="2>&1 | less"
#+ alias -g L="| less"
#+ alias -g LS='| less -S'
#+ alias -g MM='| most'
#+ alias -g M='| more'
#+ alias -g NE="2> /dev/null"
#+ alias -g NS='| sort -n'
#+ alias -g NUL="> /dev/null 2>&1"
#+ alias -g PIPE='|'
#+ alias -g R=' > /c/aaa/tee.txt '
#+ alias -g RNS='| sort -nr'
#+ alias -g S='| sort'
#+ alias -g TL='| tail -20'
#+ alias -g T='| tail'
#+ alias -g US='| sort -u'
#+ alias -g VM=/var/log/messages
#+ alias -g X0G='| xargs -0 egrep'
#+ alias -g X0='| xargs -0'
#+ alias -g XG='| xargs egrep'
#+ alias -g X='| xargs'
