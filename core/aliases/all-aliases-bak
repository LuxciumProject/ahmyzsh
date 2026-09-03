#!/usr/bin/env zsh
# Auto-generated on 2025-11-02T03:56:01Z by concat_aliases.sh
# Do not edit manually; rerun concat_aliases.sh instead.

# ---- 00000-man-ls.sh ----
#!/bin/bash

# Total lines: 224

#+ NAME
#+        ls - list directory contents

#+ SYNOPSIS
#+        ls [OPTION]... [FILE]...

#+ DESCRIPTION
#+        List information about the FILEs (the current directory by default).  Sort entries alphabetically if none of -cftu‐
#+        vSUX nor --sort is specified.

#+        Mandatory arguments to long options are mandatory for short options too.

#+        -a, --all
#+               do not ignore entries starting with .

#+        -A, --almost-all
#+               do not list implied . and ..

#+        --author
#+               with -l, print the author of each file

#+        -b, --escape
#+               print C-style escapes for nongraphic characters

#+        --block-size=SIZE
#+               with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below

#+        -B, --ignore-backups
#+               do not list implied entries ending with ~

#+        -c     with -lt: sort by, and show, ctime (time of last modification of file status  information);  with  -l:  show
#+               ctime and sort by name; otherwise: sort by ctime, newest first

#+        -C     list entries by columns

#+        --color[=WHEN]
#+               colorize the output; WHEN can be 'always' (default if omitted), 'auto', or 'never'; more info below

#+        -d, --directory
#+               list directories themselves, not their contents

#+        -D, --dired
#+               generate output designed for Emacs' dired mode

#+        -f     do not sort, enable -aU, disable -ls --color

#+        -F, --classify
#+               append indicator (one of */=>@|) to entries

#+        --file-type
#+               likewise, except do not append '*'

#+        --format=WORD
#+               across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C

#+        --full-time
#+               like -l --time-style=full-iso

#+        -g     like -l, but do not list owner

#+        --group-directories-first
#+               group directories before files;

#+               can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping

#+        -G, --no-group
#+               in a long listing, don't print group names

#+        -h, --human-readable
#+               with -l and -s, print sizes like 1K 234M 2G etc.

#+        --si   likewise, but use powers of 1000 not 1024

#+        -H, --dereference-command-line
#+               follow symbolic links listed on the command line

#+        --dereference-command-line-symlink-to-dir
#+               follow each command line symbolic link

#+               that points to a directory

#+        --hide=PATTERN
#+               do not list implied entries matching shell PATTERN (overridden by -a or -A)

#+        --hyperlink[=WHEN]
#+               hyperlink file names; WHEN can be 'always' (default if omitted), 'auto', or 'never'

#+        --indicator-style=WORD
#+               append  indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), clas‐
#+               sify (-F)

#+        -i, --inode
#+               print the index number of each file

#+        -I, --ignore=PATTERN
#+               do not list implied entries matching shell PATTERN

#+        -k, --kibibytes
#+               default to 1024-byte blocks for disk usage; used only with -s and per directory totals

#+        -l     use a long listing format

#+        -L, --dereference
#+               when showing file information for a symbolic link, show information for the file the link references  rather
#+               than for the link itself

#+        -m     fill width with a comma separated list of entries

#+        -n, --numeric-uid-gid
#+               like -l, but list numeric user and group IDs

#+        -N, --literal
#+               print entry names without quoting

#+        -o     like -l, but do not list group information

#+        -p, --indicator-style=slash
#+               append / indicator to directories

#+        -q, --hide-control-chars
#+               print ? instead of nongraphic characters

#+        --show-control-chars
#+               show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)

#+        -Q, --quote-name
#+               enclose entry names in double quotes

#+        --quoting-style=WORD
#+               use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-al‐
#+               ways, c, escape (overrides QUOTING_STYLE environment variable)

#+        -r, --reverse
#+               reverse order while sorting

#+        -R, --recursive
#+               list subdirectories recursively

#+        -s, --size
#+               print the allocated size of each file, in blocks

#+        -S     sort by file size, largest first

#+        --sort=WORD
#+               sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X)

#+        --time=WORD
#+               change the default of using modification times; access time (-u): atime,  access,  use;  change  time  (-c):
#+               ctime, status; birth time: birth, creation;

#+               with -l, WORD determines which time to show; with --sort=time, sort by WORD (newest first)

#+        --time-style=TIME_STYLE
#+               time/date format with -l; see TIME_STYLE below

#+        -t     sort by time, newest first; see --time

#+        -T, --tabsize=COLS
#+               assume tab stops at each COLS instead of 8

#+        -u     with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by ac‐
#+               cess time, newest first

#+        -U     do not sort; list entries in directory order

#+        -v     natural sort of (version) numbers within text

#+        -w, --width=COLS
#+               set output width to COLS.  0 means no limit

#+        -x     list entries by lines instead of by columns

#+        -X     sort alphabetically by entry extension

#+        -Z, --context
#+               print any security context of each file

#+        -1     list one file per line.  Avoid '\n' with -q or -b

#+        --help display this help and exit

#+        --version
#+               output version information and exit

#+        The SIZE argument is an integer and optional unit (example: 10K is 10*1024).  Units are K,M,G,T,P,E,Z,Y (powers  of
#+        1024) or KB,MB,... (powers of 1000).  Binary prefixes can be used, too: KiB=K, MiB=M, and so on.

#+        The TIME_STYLE argument can be full-iso, long-iso, iso, locale, or +FORMAT.  FORMAT is interpreted like in date(1).
#+        If FORMAT is FORMAT1<newline>FORMAT2, then FORMAT1 applies  to  non-recent  files  and  FORMAT2  to  recent  files.
#+        TIME_STYLE  prefixed  with  'posix-'  takes  effect only outside the POSIX locale.  Also the TIME_STYLE environment
#+        variable sets the default style to use.

#+        Using color to distinguish file types is disabled both by default and with --color=never.   With  --color=auto,  ls
#+        emits  color  codes  only  when standard output is connected to a terminal.  The LS_COLORS environment variable can
#+        change the settings.  Use the dircolors command to set it.

#+    Exit status:
#+        0      if OK,

#+        1      if minor problems (e.g., cannot access subdirectory),

#+        2      if serious trouble (e.g., cannot access command-line argument).

#+ AUTHOR
#+        Written by Richard M. Stallman and David MacKenzie.

#+ REPORTING BUGS
#+        GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
#+        Report any translation bugs to <https://translationproject.org/team/>

#+ COPYRIGHT
#+        Copyright © 2020 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3  or  later  <https://gnu.org/li‐
#+        censes/gpl.html>.
#+        This  is  free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted
#+        by law.

#+ SEE ALSO
#+        Full documentation <https://www.gnu.org/software/coreutils/ls>
#+        or available locally via: info '(coreutils) ls invocation'

#+ GNU coreutils 8.32                                     February 2022                                                 LS(1)

# ---- 0000-projects.sh ----
#!/usr/bin/bash

alias rpcstart='(cd ${RPC_WORKER_POOL}; npm run deploy:local; (npm run docker:live:server) &)'
alias rpcrestart='(cd ${RPC_WORKER_POOL}; npm run stop:docker:live:server; npm run deploy:local; (npm run docker:live:server) &)'
alias rpcstop='(cd ${RPC_WORKER_POOL}; npm run stop:docker:live:server) &'

alias prompter="/projects/monorepo-one/prompts/typing_prompter/main.sh"

# ---- 00100-aliases-manager.sh ----
#!/bin/bash

# Aliases manager - provides utilities for managing aliases

# Generate the alias inventory (enhanced version with change tracking)
alias generate-alias-inventory='/projects/templates/ahmyzsh/tools/alias-inventory-enhanced.sh'

# Open the alias inventory in the default editor
alias view-aliases='${EDITOR:-nano} /projects/templates/ahmyzsh/core/aliases/00000-alias-inventory.md'

# Search for a specific alias across all alias files
alias find-alias='function _find_alias() { grep -n "^alias $1" /projects/templates/ahmyzsh/core/aliases/*.sh; }; _find_alias'

# Count aliases in all files
alias count-aliases='grep -c "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | sort -t: -k2 -nr'

# Find potential alias duplicates
alias find-duplicate-aliases='grep "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | cut -d= -f1 | sort | uniq -d'

# Run the alias maintenance check
alias alias-maintenance='/projects/templates/ahmyzsh/tools/alias-maintenance.sh && ${EDITOR:-nano} /projects/templates/ahmyzsh/tools/alias-maintenance-report.md'

# View alias history
alias alias-history='ls -lt /projects/templates/ahmyzsh/tools/alias-history/ | head -10'
alias view-alias-history='function _view_history() { ${EDITOR:-nano} "/projects/templates/ahmyzsh/tools/alias-history/$1"; }; _view_history'

# Compare current aliases with a previous snapshot
alias compare-aliases='function _compare_aliases() { diff -u "/projects/templates/ahmyzsh/tools/alias-history/$1" /projects/templates/ahmyzsh/core/aliases/00000-alias-inventory.md; }; _compare_aliases'

# Run the scheduler manually (updates inventory and runs maintenance check)
alias update-aliases='/projects/templates/ahmyzsh/tools/alias-inventory-scheduler.sh'

# Add a new alias file (creates a template with header)
alias create-alias-file='function _create_alias_file() {
  if [[ -z "$1" ]]; then
    echo "Usage: create-alias-file filename.sh"
    return 1
  fi

  filepath="/projects/templates/ahmyzsh/core/aliases/$1"

  if [[ -f "$filepath" ]]; then
    echo "File already exists: $filepath"
    return 1
  fi

  echo "#!/bin/bash" > "$filepath"
  echo "# Aliases for: ${1%.sh}" >> "$filepath"
  echo "# Created on: $(date)" >> "$filepath"
  echo "" >> "$filepath"
  echo "# Example:" >> "$filepath"
  echo "# alias example-alias=\"command --with --options\"" >> "$filepath"
  echo "" >> "$filepath"

  chmod +x "$filepath"
  echo "Created new alias file: $filepath"
  ${EDITOR:-nano} "$filepath"
}; _create_alias_file'

# Update the alias inventory file when this script is sourced
generate-alias-inventory > /dev/null 2>&1

# ---- 10000-images-files.sh ----
#!/bin/bash

alias mv_tg_img="mkdir tmbnails; mv *_thumb* ./tmbnails; mv_imgs"
alias tg_mv_img="mkdir tmbnails; mv *_thumb* ./tmbnails; mv_imgs"

# ---- 10001-rm.sh ----
#!/bin/bash

# gh repo clone openAVproductions/openAV-Ctlra

alias rmbuild='rm -fr ./build'
alias rmdist='rm -fr ./dist'
alias rmout='rm -fr ./out'
alias rmnodmod='rm -fr ./node_modules'
alias rmcoverage='rm -fr ./coverage'
alias rmcov='rm -fr ./coverage'
alias rmyarnlock='rm -f ./yarn.lock'
alias rmylock='rm -f ./yarn.lock'
alias rmpaklock='rm -f ./package-lock.json'
alias rmshrinkwrap='rm -f ./npm-shrinkwrap.json'
alias rmyerr='rm -f ./yarn-error.log'
alias rmyarn='(rmyarnlock& rmyerr& rmnodmod&)'
alias npmreinstall='(rmyarnlock& rmpaklock& rmyerr& rmnodmod& rmshrinkwrap&)'

alias rmthumb='rm -fr ${HOME}/.cache/thumbnails/**'

# ---- 10002-cd.sh ----
#!/bin/bash

# Total lines: 94

# gh repo clone openAVproductions/openAV-Ctlra

alias cdtemp='cd /home/luxcium/src/temp'
alias ctemp='cd /home/luxcium/src/temp'
alias cdsrc='cd /home/luxcium/src'
alias csrc='cd /home/luxcium/src'
alias cddev='cd /home/luxcium/dev'
alias cdev='cd /home/luxcium/dev'
alias cdtmp='cd /tmp'
alias ctmp='cd /tmp'

alias cdetc='cd /etc'
alias cetc='cd /etc'
alias cdusr='cd /usr'
alias cusr='cd /usr'
alias cdopt='cd /opt'
alias copt='cd /opt'
alias cdvar='cd /var'
alias cvar='cd /var'

alias cdapp='cd /usr/share/applications/'
alias capp='cd /usr/share/applications/'

function cdir() {
  mkdir -p "$1" &&
    cd "$1" || return
}
alias cmdir='cdir'

alias cmtmp='cd $(mktemp -d)'

function __vsCodeTarget() {
  (
    TARGET_=$1
    cd "$TARGET_" || exit
    code "$TARGET_"
  )
}
# alias=( TARGET_=''; cd $TARGET_; code $TARGET_ )
alias vscacorn="__vsCodeTarget '\${HOME}/src/temp/acorn'"                              # temp/acorn
alias vsccli="__vsCodeTarget '\${HOME}/src/temp/cli'"                                  # temp/cli
alias vsceslint="__vsCodeTarget '\${HOME}/src/temp/eslint'"                            # temp/eslint
alias vscespree="__vsCodeTarget '\${HOME}/src/temp/espree'"                            # temp/espree
alias vscfpts="__vsCodeTarget '\${HOME}/src/temp/fp-ts'"                               # temp/fpts
alias vscmocha="__vsCodeTarget '\${HOME}/src/temp/mocha'"                              # temp/mocha
alias vscnode="__vsCodeTarget '\${HOME}/src/temp/node'"                                # temp/node
alias vscPython="__vsCodeTarget '\${HOME}/src/temp/Python-3.9.5'"                      # temp/Python-3.9.5
alias vscsyntax="__vsCodeTarget '\${HOME}/src/temp/syntax'"                            # temp/syntax
alias vscTypeScript="__vsCodeTarget '\${HOME}/src/temp/TypeScript'"                    # temp/TypeScript
alias vscvscode="__vsCodeTarget '\${HOME}/src/temp/vscode'"                            # temp/vscode
alias vscworkerpool="__vsCodeTarget '\${HOME}/src/temp/workerpool'"                    # temp/workerpool
alias vsczsh-code="__vsCodeTarget '\${HOME}/src/temp/zsh-code'"                        # temp/zsh-code
alias vsc100-days-of-code="__vsCodeTarget '\${HOME}/src/100-days-of-code'"             # 100-days-of-code
alias vscchroma.js="__vsCodeTarget '\${HOME}/src/chroma.js'"                           # chroma.js
alias vsccolor-math="__vsCodeTarget '\${HOME}/src/color-math'"                         # color-math
alias vschexSorter="__vsCodeTarget '\${HOME}/src/hexSorter'"                           # hexSorter
alias vsciexjs="__vsCodeTarget '\${HOME}/src/iexjs'"                                   # iexjs
alias vscjacobo-test="__vsCodeTarget '\${HOME}/src/jacobo-test'"                       # jacobo-test
alias vscnestjs-colligated-docs="__vsCodeTarget '\${HOME}/src/nestjs-colligated-docs'" # nestjs-colligated-docs
alias vscpmap="__vsCodeTarget '\${HOME}/src/parallel-mapping'"                         # parallel-mapping
alias vscregexp-tree="__vsCodeTarget '\${HOME}/src/regexp-tree'"                       # regexp-tree
alias vscsecond_iex="__vsCodeTarget '\${HOME}/src/second_iex'"                         # second_iex
alias vsctelegram-bot-api="__vsCodeTarget '\${HOME}/src/telegram-bot-api'"             # telegram-bot-api
alias vscv4l2loopback="__vsCodeTarget '\${HOME}/src/v4l2loopback'"                     # v4l2loopback
# alias vsctemp="__vsCodeTarget '${HOME}/src/temp'" # temp

#bin
#boot
#com
#dev
#dracut.conf.d
#etc
#home
#lib
#lib64
#lost+found
#media
#mnt
#modules.d
#opt
#proc
#root
#run
#sbin
#snap
#srv
#stratis
#sys
#tmp
#usr
#var

# ---- 10003-ls.sh ----
#!/bin/bash

# Total lines: 256

alias al='ls -alhSvF -X'
alias alt='ls -alGhSvF -rt'
alias alu='ls -alGhSvF -rut'
alias alc='ls -alGhSvF -rct'

alias lsl='ls -AlhSvF -X'
alias lst='ls -AlGhSvF -rt'
alias lsu='ls -AlGhSvF -rut'
alias lsc='ls -AlGhSvF -rct'

alias ls1='ls -A1hSvF -X'
alias ls1c='ls -A1hScvF -X'

#+ LS(1)                                                                          Manuel de l'utilisateur Linux                                                                         LS(1)

#+ NOM
#+        ls, dir, vdir - Afficher le contenu d'un répertoire

#+ SYNOPSIS
#+        ls [options] [fichier...]
#+        dir [fichier...]
#+        vdir [fichier...]

#+        Options POSIX : [-CFRacdilqrtu1] [--]

#+        Options GNU (forme courte) : [-1abcdfgiklmnopqrstuvwxABCDFGHLNQRSUX] [-w cols] [-T cols] [-I motif] [--full-time] [--show-control-chars] [--block-size=taille] [--format={long,ver‐
#+        bose,commas,across,vertical,single-column}] [--sort={none,time,size,extension}] [--time={atime,access,use,ctime,status}] [--color[={none,auto,always}]] [--help] [--version] [--]

#+ DESCRIPTION
#+        La commande ls affiche tout d'abord l'ensemble de ses arguments fichiers autres que des répertoires. Puis ls affiche l'ensemble des fichiers contenus dans chaque répertoire  indi‐
#+        qué.  Si aucun argument autre qu'une option n'est fourni, l'argument « . » (répertoire en cours) est pris par défaut. Avec l'option -d, les répertoires fournis en argument ne sont
#+        pas considérés comme des répertoires (on affiche leurs noms et pas leurs contenus). Un fichier n'est affiché que si son nom ne commence pas par un point, ou  si  l'option  -a  est
#+        fournie.

#+        Chacune des listes de fichiers (fichiers autres que des répertoires, et contenu de chaque répertoire) est triée séparément en fonction de la séquence d'ordre de la localisation en
#+        cours. Lorsque l'option -l est fournie, chaque liste est précédée d'une ligne indiquant la taille totale des fichiers de la liste, exprimée en blocs de 512 ou 1024 octets.

#+        Le résultat est envoyé sur la sortie standard, un élément par ligne, sauf si un affichage multi-colonnes est demandé avec l'option -C. Toutefois, lorsque la sortie standard est un
#+        terminal, l'affichage peut se faire sur une ou plusieurs colonnes suivant l'implémentation. Les options -1 et -C forcent un affichage sur une seule colonne ou plusieurs, respecti‐
#+        vement.

#+ OPTIONS POSIX
#+        -C     Présenter les fichiers en colonnes, triés verticalement.

#+        -F     Ajouter un caractère à chaque nom de fichier pour indiquer son type. les fichiers réguliers exécutables sont suivis d'un « * ». Les répertoires sont suivis  de  « / »,  les
#+               liens symboliques d'un « @ », les FIFOs d'un « | ». Les fichiers réguliers non-exécutables ne sont suivis d'aucun caractère.

#+        -R     Afficher récursivement le contenu des sous-répertoires.

#+        -a     Afficher tous les fichiers des répertoires, y compris les fichiers commençant par un « . ».

#+        -c     Employer la date de changement de statut des fichiers plutôt que la date de modification, autant pour l'affichage (option -l) que pour le tri (option -t).

#+        -d     Afficher les répertoires avec la même présentation que les fichiers, sans lister leur contenu.

#+        -i     Afficher le numéro d'index (i-noeud) de chaque fichier à gauche de son nom.

#+        -l     En  plus  du nom, afficher le type du fichier, les permissions d'accès, le nombre de liens physiques, le nom du propriétaire et du groupe, la taille en octets, et l'horoda‐
#+               tage. La ligne de résumé utilise des unités de 512 octets. Les types de fichiers sont indiqués par les caractères suivants : - pour  les  fichiers  ordinaires,  d  pour  un
#+               répertoire (directory), b pour un fichier spécial en mode bloc, c pour un fichier spécial en mode caractère, l pour un lien symbolique, p pour une fifo (named pipe), s pour
#+               une socket. Par défaut, l'horodatage présenté est celui de la dernière modification du fichier. Les options -c et -u réclament les autres  horodatages.  Pour  les  fichiers
#+               spéciaux, le champ de taille est généralement remplacé par les numéros majeur et mineur du périphérique.

#+        -q     Afficher  des  points d'interrogation à la place des caractères non-imprimables dans les noms de fichiers. Il est possible que cela soit le cas par défaut lorsque la sortie
#+               standard est un terminal.

#+        -r     Inverser le tri du contenu des répertoires.

#+        -t     Trier le contenu des répertoires en fonction de la date et non pas en ordre alphabétique. Les fichiers les plus récents sont présentés en premier.

#+        -u     Employer la date des derniers accès aux fichiers plutôt que la date de modification, autant pour l'affichage (option -l) que pour le tri (option -t).

#+        -1     Présenter un fichier par ligne.

#+        --     Indique la fin explicite des options.

#+ PARTICULARITÉS GNU
#+        Si la sortie standard est un terminal, la sortie est en colonnes (triées verticalement).

#+        dir (parfois installé sous le nom d) est équivalent à « ls -C -b ». C'est-à-dire que les fichiers sont par défaut présentés en colonnes, triés verticalement. dir (parfois installé
#+        sous le nom v) est équivalent à « ls -l -b ». C'est-à-dire que les fichiers sont par défaut affichés en format long.

#+ OPTIONS GNU
#+        -1, --format=single-column
#+               Présenter un fichier par ligne. C'est le comportement par défaut lorsque la sortie standard n'est pas un terminal (un pipeline vers une autre commande par exemple).

#+        -a, --all
#+               Afficher tous les fichiers des répertoires, y compris les fichiers commençant par un « . ».

#+        -b, --escape
#+               Présenter  les caractères non-affichables des noms de fichiers en utilisant des séquences alphabétiques ou octales commençant par une contre oblique « \ » comme en C. Cette
#+               option est identique à -Q avec la différence que les noms de fichiers ne sont pas encadrés de guillemets.

#+        -c, --time=ctime, --time=status
#+               Trier le contenu des répertoires en fonction des dates de changement des statuts de fichiers, plutôt qu'en fonction de la date de  modification.  S'il  s'agit  d'un  format
#+               long, afficher la date de changement de statut plutôt que la date de modification du fichier.

#+        -d, --directory
#+               Afficher les répertoires avec la même présentation que les fichiers, sans lister leur contenu.

#+        -f     Ne pas trier le contenu des répertoires, l'afficher dans l'ordre où il se présente sur le disque. Active les options -a et -U et désactive -l, --color -s, et -t.

#+        -g     Option sans effet, conservée pour assurer la compatibilité avec Unix.

#+        -h, --human-readable
#+               Ajouter une lettre indiquant l'unité de taille, comme M pour méga-octets. (Nouveauté dans fileutils-4.0).

#+        -i, --inode
#+               Afficher le numéro d'index (i-noeud) de chaque fichier à gauche de son nom. Ce numéro identifie un fichier de manière unique au sein d'un système de fichiers donné.

#+        -k, --kilobytes
#+               Si la taille des fichiers est affichée, la mesurer en kilo-octets.

#+        -l, --format=long, --format=verbose
#+               En  plus  du nom, afficher le type du fichier, les permissions d'accès, le nombre de liens physiques, le nom du propriétaire et du groupe, la taille en octets, et l'horoda‐
#+               tage (de la dernière modification, sauf si une autre date est réclamée). Pour les fichiers vieux de plus de 6 mois, ou en avance sur la date de plus d'une heure,  l'horoda‐
#+               tage contient l'année à la place de l'heure.

#+               Pour  chaque  répertoire  indiqué,  les fichiers sont précédés d'une ligne « total nb_blocs », où nb_blocs est l'espace disque utilisé par l'ensemble des fichiers du réper‐
#+               toire. Par défaut, on utilise des blocs de 1024 octets. Si la variable d'environnement POSIXLY_CORRECT est configurée, on utilise des blocs de 512 octets (sauf si  l'option
#+               -k est fournie). Le calcul de nb_blocs se fait en comptant séparement chaque lien physique. On peut trouver cela dommage.

#+               Les autorisations d'accès listées sont similaires aux spécifications de modes, mais ls regroupe plusieurs bits dans le troisième caractère de chaque jeu de permissions.

#+               s      si le bit setuid ou setgid et le bit d'exécution correspondant sont tous deux valides.

#+               S      si le bit setuid ou setgid est actif mais le bit d'exécution correspondant n'est pas configuré.

#+               t      Si les bits « Sticky » et « Exécution par les autres » sont actifs.

#+               T      Si le bit « Sticky » est actif mais pas le bit « Exécution par les autres ».

#+               x      Si le bit d'exécution est actif mais aucun de ceux cités ci-dessus.

#+               -      Sinon.

#+        -m, --format=commas
#+               Afficher sur chaque ligne autant de fichiers que possible, séparés par des virgules.

#+        -n, --numeric-uid-gid
#+               Afficher les UID et GID numériques plutôt que les noms.

#+        -o     Produire un listing de répertoire sous forme longue mais sans les informations de groupe. C'est équivalent à --format=long --no-group. Cette option sert à assurer la compa‐
#+               tibilité avec d'autres versions de ls.

#+        -p, --file-type, --indicator-style=file-type
#+               Ajouter un caractère à chaque nom de fichier pour indiquer son type. Cette option est identique à -F sauf que les exécutables ne sont  pas  marqués.  En  fait,  la  version
#+               fileutils-4.0 traite l'option --file-ype comme --classify.

#+        -q, --hide-control-chars
#+               Afficher des points d'interrogation à la place des caractères non-imprimables dans les noms de fichiers. C'est le comportement par défaut.

#+        -r, --reverse
#+               Inverser le tri du contenu des répertoires.

#+        -s, --size
#+               Afficher  la  taille  de  chaque  fichier, mesurée en bloc de 1 Ko, à gauche du nom. Si la variable d'environnement POSIXLY_CORRECT est configurée, la taille est mesurée en
#+               blocs de 512 octets (sauf si l'option -k est fournie).

#+        -t, --sort=time
#+               Trier le contenu des répertoires en fonction de la date et non pas en ordre alphabétique. Les fichiers les plus récents sont présentés en premier.

#+        -u, --time=atime, --time=access, --time=use
#+               Trier le contenu des répertoires en fonction de la date de dernier accès au fichier plutôt que selon la date de modification. Si le format d'affichage est large,  c'est  la
#+               date de dernier accès qui est affichée.

#+        -v     Trier  le  contenu  des  répertoires  en fonction de la version des fichiers. Ceci prend en compte le fait que les noms de fichiers utilisent fréquemment des indices ou des
#+               numéros de version. Les fonctions de tri standards ne fournissent pas en général l'ordre attendu car les comparaisons ont lieu caractère par caractère. Le  tri  de  version
#+               gère  ce  problème,  et  est  particulièrement utile lorsque l'on parcourt des répertoires contenant de nombreux indices ou numéros de version dans les noms de fichier. Par
#+               exemple :
#+                    $ ls -1            $ ls -1v
#+                    foo.zml-1.gz       foo.zml-1.gz
#+                    foo.zml-100.gz     foo.zml-12.gz
#+                    foo.zml-12.gz      foo.zml-25.gz
#+                    foo.zml-25.gz      foo.zml-100.gz
#+               Remarquez que les parties numériques commençant par des zéros sont considérées comme des décimales :
#+                    $ ls -1            $ ls -1v
#+                    abc-1.007.tgz      abc-1.007.tgz
#+                    abc-1.012b.tgz     abc-1.01a.tgz
#+                    abc-1.01a.tgz      abc-1.012b.tgz
#+               (Ceci est une nouveauté des fileutils-4.0).

#+        -w, --width cols
#+               Supposer que l'écran dispose de cols colonnes en largeur. La valeur par défaut est réclamée si possible au gestionnaire  de  terminal.  Sinon  la  variable  d'environnement
#+               COLUMNS est utilisée si elle est positionnée. Sinon, la valeur par défaut est 80.

#+        -x, --format=across, --format=horizontal
#+               Présenter les fichiers en colonnes, triés horizontalement.

#+        -A, --almost-all
#+               Afficher tous les fichiers du répertoire sauf « . » et « .. ».

#+        -B, --ignore-backups
#+               Ne pas afficher les fichiers se terminant par « ~ », à moins qu'ils ne soient mentionnés sur la ligne de commande.

#+        -C, --format=vertical
#+               Présenter les fichiers en colonnes, triés verticalement.

#+        -D, --dired
#+               Avec le format long -l, imprimer une ligne supplémentaire après les données principales:
#+               //DIRED// DEBUT_1 FIN_1 DEBUT_2 FIN_2 ...

#+               Les  valeurs  DEBUT_n  et  FIN_n sont des entiers non-signés qui enregistrent la position en octets de chaque noms de fichier dans la sortie. Ceci permet à Emacs de trouver
#+               facilement les noms de fichiers, même ceux qui contiennent des caractères inhabituels comme espace ou retour-chariot.

#+               Si les répertoires sont listés de manière récursive -R, une ligne similaire est affichée après chaque sous-répertoires :
#+               //SUBDIRED// DEBUT_1 FIN_1 ...

#+        -F, --classify
#+               Ajouter un caractère à chaque nom de fichier pour indiquer son type. les fichiers réguliers exécutables sont suivis d'un « * ». Les répertoires sont suivis  de  « / »,  les
#+               liens symboliques d'un « @ », les FIFOs d'un « | ». Les fichiers réguliers non-exécutables ne sont suivis d'aucun caractère.

#+        -G, --no-group
#+               Ne pas afficher les informations de groupe dans le format large.

#+        -H, --si
#+               Fonctionne  comme  -h,  mais en utilisant les unités du Système International (avec des puissances 1000 et pas de 1024). Ainsi M correspond à 1000000 à la place de 1048576.
#+               Ceci est une nouveauté des fileutils-4.0.

#+        -I, --ignore motif
#+               Ne pas afficher les fichiers dont le nom correspond au motif (suivant l'interprétation du shell), à moins qu'ils ne soient explicitement mentionnés sur  la  ligne  de  com‐
#+               mande.  Comme  avec le shell, les noms de fichiers commençant par un point « . » ne sont pas supposés correspondre avec un motif commençant par un caractère générique. Pour
#+               les root-kits élémentaires : ajoutez une ligne LS_OPTIONS="$LS_OPTIONS -I mes_trucs" dans /etc/profile et compagnie pour cacher vos répertoires.

#+        -L, --dereference
#+               Afficher les informations concernant les fichiers pointés par les liens symboliques et non pas celles concernant les liens eux-mêmes.

#+        -N, --literal
#+               Afficher les noms de fichiers sans modification.

#+        -Q, --quote-name
#+               Encadrer les noms de fichiers avec des guillemets, et citer les caractères non-imprimables par des séquences semblables à celles utilisées en C.

#+        -R, --recursive
#+               Afficher récursivement le contenu des sous-répertoires.

#+        -S, --sort=size
#+               Trier les répertoires en fonction de la taille de fichier et non pas en ordre alphabétique. Les fichiers les plus gros sont affichés en premier.

#+        -T, --tabsize cols
#+               Supposer que les tabulations sont espacées de cols colonnes. La valeur par défaut est 8, mais elles peut être modifiée par la variable d'environnement  TABSIZE  lorsque  la
#+               variable POSIXLY_CORRECT n'est pas validée. ls utilise des tabulations pour accélérer l'affichage, mais si cols vaut zéro, aucune tabulation ne sera employée.

#+        -U, --sort=none
#+               Ne  pas  trier  le contenu des répertoires. Les présenter dans l'ordre des fichiers sur le disque. La différence entre -U et -f est que le premier ne modifie pas d'options.
#+               Ceci sert surtout lorsqu'on liste de gros répertoires, car le tri sera notablement plus rapide.

#+        -X, --sort=extension
#+               Trier le contenu des répertoires en fonction de l'extension du nom de fichier (les caractères après le dernier « . »). Les fichiers sans extension sont affichés en premier.

#+        --block-size=nombre
#+               Afficher les tailles de fichiers en blocs ayant le nombre indiqué d'octets. (Nouveauté de fileutils-4.0).

#+        --color[=manière]
#+               Spécifie comment utiliser les couleurs pour distinguer les types de fichiers. Les couleurs sont définie en utilisant la variable d'environnement LS_COLORS. Pour  avoir  des
#+               précisions sur la configuration de cette variable, voir dircolors(1). La manière, si elle est indiquée, peut prendre l'une des valeurs suivantes :

#+               none   Ne pas utiliser de couleurs. C'est le comportement par défaut.

#+               auto   N'utiliser de couleurs que si la sortie standard est un terminal.

#+               always Toujours utiliser des couleurs. Indiquer seulement --color sans indiquer de manière est équivalent à --color=always.

#+        --full-time
#+               Afficher  les  temps  de  manière complète, sans utiliser les heuristiques habituelles d'abréviation. Le format est celui par défaut de date(1). On ne peut pas le modifier,
#+               mais on peut au besoin l'extraire avec cut(1) et de passer le résultat à « date -d ».

#+               Ceci est surtout utile car l'affichage contient les secondes (les systèmes de fichiers Unix utilisent un horodatage à la seconde la plus proche, aussi vous disposez ici  de
#+               toutes les informations existantes). Par exemple, cela peut servir à corriger un Makefile qui ne régénère pas correctement les fichiers.

#+        --quoting-style=style
#+               Utiliser le style indiqué pour présenter les noms de fichiers. Le style peut être :

#+               literal
#+                      Afficher les noms tels quels. C'est le comportement par défaut de ls.

#+               shell  Protéger les noms avec des apostrophes s'ils contiennent des caractères spéciaux ambigus pour le shell.

#+               shell-always
#+                      Protéger les noms avec des apostrophes même s'ils n'ont a priori pas besoin de protection.

#+               c      Encadrer les noms avec des guillemets, comme des chaînes pour le langage C. C'est équivalent à l'option -Q.

#+               escape Protéger comme le style c en évitant les guillemets. Ceci est équivalent à l'option -b.

#+               Une valeur par défaut peut être indiquée dans la variable d'environnement QUOTING_STYLE (Voir le paragraphe ENVIRONNEMENT plus bas).

#+        --show-control-chars
#+               Afficher  les caractère non-graphiques tels quels dans les noms de fichiers. C'est le comportement par défaut, sauf si la sortie standard est un terminal et si le programme
#+               invoqué est ls.

#+ OPTIONS STANDARDS GNU
#+        --help Afficher un message d'aide sur la sortie standard, et se terminer normalement.

#+        --version
#+               Afficher un numéro de version sur la sortie standard, et se terminer normalement.

#+        --     Terminer la liste des options.

#+ ENVIRONNEMENT
#+        La variable d'environnement POSIXLY_CORRECT détermine le choix des unités. Si elle n'est pas configurée, alors la variable TABSIZE détermine le nombre de caractères  par  saut  de
#+        tabulation.  La  variable  COLUMNS (lorsqu'elle contient un entier décimal) déterminer le nombre de colonnes pour la largeur de sortie (option -C). Les noms de fichiers ne doivent
#+        pas être tronqués pour tenir dans une sortie multi-colonnes.

#+        Les variables LANG, LC_ALL, LC_COLLATE, LC_CTYPE, LC_MESSAGES et LC_TIME ont leurs significations habituelles. La variable TZ indique le fuseau horaire pour les chaînes de  carac‐
#+        tères représentant des horodatages. La variable LS_COLORS est utilisée pour préciser les couleurs utilisées. La variable LS_OPTIONS contient les options par défaut.

#+        La  variable QUOTING_STYLE indique le comportement par défaut correspondant à l'option --quoting-style. Par défaut elle prend actuellement la valeur literal, mais les auteurs pré‐
#+        viennent que cela peut basculer vers la valeur shell dans des versions à venir.

#+ BOGUES
#+        Sur les systèmes BSD, l'option -s affiche des tailles correspondant à la moitié de la taille réelle pour les fichiers situés sur un système HP-UX monté par NFS. Sur  les  systèmes
#+        HP-UX, les tailles sont doublées pour les fichiers monté par NFS depuis un système BSD. Ceci est dû à un défaut d'HP-UX, qui affecte également la version HP-UX de la commande ls.

#+ CONFORMITÉ
#+        POSIX.2

#+ NOTES
#+        Cette page documente la version de ls trouvée dans le paquetage fileutils-4.0, d'autres versions peuvent différer légèrement.

#+ VOIR AUSSI
#+        dircolors(1)

#+ TRADUCTION
#+        Ce document est une traduction réalisée par Christophe Blaess <http://www.blaess.fr/christophe/> le 19 décembre 1996 et révisée le 19 novembre 2007.

#+        L'équipe  de traduction a fait le maximum pour réaliser une adaptation française de qualité. La version anglaise la plus à jour de ce document est toujours consultable via la com‐
#+        mande : « LANG=C man 1 ls ». N'hésitez pas à signaler à l'auteur ou au traducteur, selon le cas, toute erreur dans cette page de manuel.

#+ LDP                                                                                   25 juillet 2003                                                                                LS(1)

#+        ls, dir, vdir - Afficher le contenu d'un répertoire
#+        Options POSIX : [-CFRacdilqrtu1] [--]
#+        Options GNU (forme courte) : [-1abcdfgiklmnopqrstuvwxABCDFGHLNQRSUX] [-w cols] [-T cols] [-I motif] [--full-time] [--show-control-chars] [--block-size=taille] [--format={long,ver‐
#+        bose,commas,across,vertical,single-column}] [--sort={none,time,size,extension}] [--time={atime,access,use,ctime,status}] [--color[={none,auto,always}]] [--help] [--version] [--]
#+        qué.  Si aucun argument autre qu'une option n'est fourni, l'argument « . » (répertoire en cours) est pris par défaut. Avec l'option -d, les répertoires fournis en argument ne sont
#+        pas considérés comme des répertoires (on affiche leurs noms et pas leurs contenus). Un fichier n'est affiché que si son nom ne commence pas par un point, ou  si  l'option  -a  est
#+        cours. Lorsque l'option -l est fournie, chaque liste est précédée d'une ligne indiquant la taille totale des fichiers de la liste, exprimée en blocs de 512 ou 1024 octets.
#+        Le résultat est envoyé sur la sortie standard, un élément par ligne, sauf si un affichage multi-colonnes est demandé avec l'option -C. Toutefois, lorsque la sortie standard est un
#+        terminal, l'affichage peut se faire sur une ou plusieurs colonnes suivant l'implémentation. Les options -1 et -C forcent un affichage sur une seule colonne ou plusieurs, respecti‐
#+        -C     Présenter les fichiers en colonnes, triés verticalement.
#+        -F     Ajouter un caractère à chaque nom de fichier pour indiquer son type. les fichiers réguliers exécutables sont suivis d'un « * ». Les répertoires sont suivis  de  « / »,  les
#+               liens symboliques d'un « @ », les FIFOs d'un « | ». Les fichiers réguliers non-exécutables ne sont suivis d'aucun caractère.
#+        -R     Afficher récursivement le contenu des sous-répertoires.
#+        -a     Afficher tous les fichiers des répertoires, y compris les fichiers commençant par un « . ».
#+        -c     Employer la date de changement de statut des fichiers plutôt que la date de modification, autant pour l'affichage (option -l) que pour le tri (option -t).
#+        -d     Afficher les répertoires avec la même présentation que les fichiers, sans lister leur contenu.
#+        -i     Afficher le numéro d'index (i-noeud) de chaque fichier à gauche de son nom.
#+        -l     En  plus  du nom, afficher le type du fichier, les permissions d'accès, le nombre de liens physiques, le nom du propriétaire et du groupe, la taille en octets, et l'horoda‐
#+               tage. La ligne de résumé utilise des unités de 512 octets. Les types de fichiers sont indiqués par les caractères suivants : - pour  les  fichiers  ordinaires,  d  pour  un
#+               une socket. Par défaut, l'horodatage présenté est celui de la dernière modification du fichier. Les options -c et -u réclament les autres  horodatages.  Pour  les  fichiers
#+        -q     Afficher  des  points d'interrogation à la place des caractères non-imprimables dans les noms de fichiers. Il est possible que cela soit le cas par défaut lorsque la sortie
#+        -r     Inverser le tri du contenu des répertoires.
#+        -t     Trier le contenu des répertoires en fonction de la date et non pas en ordre alphabétique. Les fichiers les plus récents sont présentés en premier.
#+        -u     Employer la date des derniers accès aux fichiers plutôt que la date de modification, autant pour l'affichage (option -l) que pour le tri (option -t).
#+        -1     Présenter un fichier par ligne.
#+        --     Indique la fin explicite des options.
#+        dir (parfois installé sous le nom d) est équivalent à « ls -C -b ». C'est-à-dire que les fichiers sont par défaut présentés en colonnes, triés verticalement. dir (parfois installé
#+        sous le nom v) est équivalent à « ls -l -b ». C'est-à-dire que les fichiers sont par défaut affichés en format long.
#+        -1, --format=single-column
#+        -a, --all
#+        -b, --escape
#+               Présenter  les caractères non-affichables des noms de fichiers en utilisant des séquences alphabétiques ou octales commençant par une contre oblique « \ » comme en C. Cette
#+               option est identique à -Q avec la différence que les noms de fichiers ne sont pas encadrés de guillemets.
#+        -c, --time=ctime, --time=status
#+        -d, --directory
#+        -f     Ne pas trier le contenu des répertoires, l'afficher dans l'ordre où il se présente sur le disque. Active les options -a et -U et désactive -l, --color -s, et -t.
#+        -g     Option sans effet, conservée pour assurer la compatibilité avec Unix.
#+        -h, --human-readable
#+               Ajouter une lettre indiquant l'unité de taille, comme M pour méga-octets. (Nouveauté dans fileutils-4.0).
#+        -i, --inode
#+               Afficher le numéro d'index (i-noeud) de chaque fichier à gauche de son nom. Ce numéro identifie un fichier de manière unique au sein d'un système de fichiers donné.
#+        -k, --kilobytes
#+               Si la taille des fichiers est affichée, la mesurer en kilo-octets.
#+        -l, --format=long, --format=verbose
#+               -k est fournie). Le calcul de nb_blocs se fait en comptant séparement chaque lien physique. On peut trouver cela dommage.
#+               x      Si le bit d'exécution est actif mais aucun de ceux cités ci-dessus.
#+               -      Sinon.
#+        -m, --format=commas
#+        -n, --numeric-uid-gid
#+        -o     Produire un listing de répertoire sous forme longue mais sans les informations de groupe. C'est équivalent à --format=long --no-group. Cette option sert à assurer la compa‐
#+        -p, --file-type, --indicator-style=file-type
#+               Ajouter un caractère à chaque nom de fichier pour indiquer son type. Cette option est identique à -F sauf que les exécutables ne sont  pas  marqués.  En  fait,  la  version
#+               fileutils-4.0 traite l'option --file-ype comme --classify.
#+        -q, --hide-control-chars
#+               Afficher des points d'interrogation à la place des caractères non-imprimables dans les noms de fichiers. C'est le comportement par défaut.
#+        -r, --reverse
#+        -s, --size
#+               blocs de 512 octets (sauf si l'option -k est fournie).
#+        -t, --sort=time
#+        -u, --time=atime, --time=access, --time=use
#+        -v     Trier  le  contenu  des  répertoires  en fonction de la version des fichiers. Ceci prend en compte le fait que les noms de fichiers utilisent fréquemment des indices ou des
#+                    $ ls -1            $ ls -1v
#+                    foo.zml-1.gz       foo.zml-1.gz
#+                    foo.zml-100.gz     foo.zml-12.gz
#+                    foo.zml-12.gz      foo.zml-25.gz
#+                    foo.zml-25.gz      foo.zml-100.gz
#+                    $ ls -1            $ ls -1v
#+                    abc-1.007.tgz      abc-1.007.tgz
#+                    abc-1.012b.tgz     abc-1.01a.tgz
#+                    abc-1.01a.tgz      abc-1.012b.tgz
#+               (Ceci est une nouveauté des fileutils-4.0).
#+        -w, --width cols
#+        -x, --format=across, --format=horizontal
#+        -A, --almost-all
#+        -B, --ignore-backups
#+        -C, --format=vertical
#+        -D, --dired
#+               Avec le format long -l, imprimer une ligne supplémentaire après les données principales:
#+               Les  valeurs  DEBUT_n  et  FIN_n sont des entiers non-signés qui enregistrent la position en octets de chaque noms de fichier dans la sortie. Ceci permet à Emacs de trouver
#+               facilement les noms de fichiers, même ceux qui contiennent des caractères inhabituels comme espace ou retour-chariot.
#+               Si les répertoires sont listés de manière récursive -R, une ligne similaire est affichée après chaque sous-répertoires :
#+        -F, --classify
#+               liens symboliques d'un « @ », les FIFOs d'un « | ». Les fichiers réguliers non-exécutables ne sont suivis d'aucun caractère.
#+        -G, --no-group
#+        -H, --si
#+               Fonctionne  comme  -h,  mais en utilisant les unités du Système International (avec des puissances 1000 et pas de 1024). Ainsi M correspond à 1000000 à la place de 1048576.
#+               Ceci est une nouveauté des fileutils-4.0.
#+        -I, --ignore motif
#+               les root-kits élémentaires : ajoutez une ligne LS_OPTIONS="$LS_OPTIONS -I mes_trucs" dans /etc/profile et compagnie pour cacher vos répertoires.
#+        -L, --dereference
#+               Afficher les informations concernant les fichiers pointés par les liens symboliques et non pas celles concernant les liens eux-mêmes.
#+        -N, --literal
#+        -Q, --quote-name
#+               Encadrer les noms de fichiers avec des guillemets, et citer les caractères non-imprimables par des séquences semblables à celles utilisées en C.
#+        -R, --recursive
#+               Afficher récursivement le contenu des sous-répertoires.
#+        -S, --sort=size
#+        -T, --tabsize cols
#+        -U, --sort=none
#+               Ne  pas  trier  le contenu des répertoires. Les présenter dans l'ordre des fichiers sur le disque. La différence entre -U et -f est que le premier ne modifie pas d'options.
#+        -X, --sort=extension
#+        --block-size=nombre
#+               Afficher les tailles de fichiers en blocs ayant le nombre indiqué d'octets. (Nouveauté de fileutils-4.0).
#+        --color[=manière]
#+               always Toujours utiliser des couleurs. Indiquer seulement --color sans indiquer de manière est équivalent à --color=always.
#+        --full-time
#+               mais on peut au besoin l'extraire avec cut(1) et de passer le résultat à « date -d ».
#+        --quoting-style=style
#+               shell-always
#+               c      Encadrer les noms avec des guillemets, comme des chaînes pour le langage C. C'est équivalent à l'option -Q.
#+               escape Protéger comme le style c en évitant les guillemets. Ceci est équivalent à l'option -b.
#+        --show-control-chars
#+               Afficher  les caractère non-graphiques tels quels dans les noms de fichiers. C'est le comportement par défaut, sauf si la sortie standard est un terminal et si le programme
#+        --help Afficher un message d'aide sur la sortie standard, et se terminer normalement.
#+        --version
#+        --     Terminer la liste des options.
#+        tabulation.  La  variable  COLUMNS (lorsqu'elle contient un entier décimal) déterminer le nombre de colonnes pour la largeur de sortie (option -C). Les noms de fichiers ne doivent
#+        pas être tronqués pour tenir dans une sortie multi-colonnes.
#+        La  variable QUOTING_STYLE indique le comportement par défaut correspondant à l'option --quoting-style. Par défaut elle prend actuellement la valeur literal, mais les auteurs pré‐
#+        Sur les systèmes BSD, l'option -s affiche des tailles correspondant à la moitié de la taille réelle pour les fichiers situés sur un système HP-UX monté par NFS. Sur  les  systèmes
#+        HP-UX, les tailles sont doublées pour les fichiers monté par NFS depuis un système BSD. Ceci est dû à un défaut d'HP-UX, qui affecte également la version HP-UX de la commande ls.
#+        Cette page documente la version de ls trouvée dans le paquetage fileutils-4.0, d'autres versions peuvent différer légèrement.

#+        --     Indique la fin explicite des options.

#+        -1     Présenter un fichier par ligne.

#+        -1, --format=single-column

#+        -A, --almost-all

#+        -b, --escape

#+        -B, --ignore-backups

#+        -C     Présenter les fichiers en colonnes, triés verticalement.

#+        -C, --format=vertical

#+        -c, --time=ctime, --time=status

#+        -d     Afficher les répertoires avec la même présentation que les fichiers, sans lister leur contenu.

#+        -d, --directory

#+        -D, --dired

#+        -F, --classify

#+        -G, --no-group

#+        -h, --human-readable

#+        -H, --si

#+        -i     Afficher le numéro d'index (i-noeud) de chaque fichier à gauche de son nom.

#+        -I, --ignore motif

#+        -k, --kilobytes

#+        -L, --dereference

#+        -l, --format=long, --format=verbose

#+        -m, --format=commas

#+        -N, --literal

#+        -n, --numeric-uid-gid

#+        -p, --file-type, --indicator-style=file-type

#+        -q, --hide-control-chars

#+        -Q, --quote-name

#+        -R     Afficher récursivement le contenu des sous-répertoires.

#+        -r     Inverser le tri du contenu des répertoires.

#+        -R, --recursive

#+        -r, --reverse

#+        -s, --size

#+        -S, --sort=size

#+        -t, --sort=time

#+        -T, --tabsize cols

#+        -u     Employer la date des derniers accès aux fichiers plutôt que la date de modification, autant pour

#+        -U, --sort=none

#+        -u, --time=atime, --time=access, --time=use

#+        -w, --width cols

#+        -x, --format=across, --format=horizontal

#+        -X, --sort=extension

#+        -F     Ajouter un caractère à chaque nom de fichier pour indiquer son type. les fichiers réguliers exécutables
#+               sont suivis d'un « * ». Les répertoires sont suivis  de  « / »,  les

#+        -l     En  plus  du nom, afficher le type du fichier, les permissions d'accès, le nombre de liens physiques, le
#+               nom du propriétaire et du groupe, la taille en octets, et l'horoda‐

#+        -q     Afficher  des  points d'interrogation à la place des caractères non-imprimables dans les noms de
#+               fichiers. Il est possible que cela soit le cas par défaut lorsque la sortie

#+        -t     Trier le contenu des répertoires en fonction de la date et non pas en ordre alphabétique. Les fichiers
#+               les plus récents sont présentés en premier.

#+        -c     Employer la date de changement de statut des fichiers plutôt que la date de modification, autant pour
#+               l'affichage (option -l) que pour le tri (option -t).

#+        -v     Trier  le  contenu  des  répertoires  en fonction de la version des fichiers. Ceci prend en compte le
#+               fait que les noms de fichiers utilisent fréquemment des indices ou des

#+        -f     Ne pas trier le contenu des répertoires, l'afficher dans l'ordre où il se présente sur le disque. Active
#+               les options -a et -U et désactive -l, --color -s, et -t.

#+        -g     Option sans effet, conservée pour assurer la compatibilité avec Unix.

#+        -o     Produire un listing de répertoire sous forme longue mais sans les informations de groupe. C'est
#+               équivalent à --format=long --no-group. Cette option sert à assurer la compa‐

# ---- 10004-cp.sh ----
#!/bin/bash

# Total lines: 256

#+ CP(1)
#+        cp - Copier des fichiers et des répertoires

#+ SYNOPSIS
#+        cp [options] fichier chemin
#+        cp [options] fichier... répertoire

#+        Options POSIX : [-fiprR] [--]

#+        Options POSIX.1-2001 supplémentaires : [-HLP]

#+        Options GNU file-utils 4.0 (forme courte) :
#+        [-abdfilprsuvxPR] [-S SUFFIXE] [-V {numbered,existing,simple}] [--backup=CONTROL] [--sparse=QUAND] [--help] [--version] [--]

#+        Options GNU file-utils 4.1 supplémentaires (forme courte) :
#+        [-HLP] [--copy-contents] [--no-preserve] [--reply=COMMENT] [--remove-destination] [--strip-trailing-slashes] [--target-directory=RÉP]

#+ DESCRIPTION
#+        cp sert à copier des fichiers (et éventuellement des répertoires). On peut aussi bien copier un fichier donné vers une destination précise que copier un ensemble de fichiers dans un répertoire.

#+        Si  le  dernier  argument  correspond  à  un nom de répertoire, cp copie dans ce répertoire chaque fichier indiqué en conservant le même nom. Sinon, s'il n'y a que deux fichiers indiqués, il copie le premier sur le second. Une
#+        erreur se produit si le dernier argument n'est pas un répertoire, et si plus de deux fichiers sont indiqués. Par défaut, on n'effectue pas la copie de répertoires.

#+        Ainsi, si /a est un répertoire, alors « cp -r /a /b » copiera /a dans /b/a et /a/x dans /b/a/x au cas où /b existe déjà, mais il copiera /a sur /b et /a/x dans /b/x si /b n'existait pas encore. Enfin, si /b  était  un  fichier
#+        ordinaire, la copie échouera.

#+        Les  autorisations  d'accès  des  fichiers  et  des  répertoires  créés seront les mêmes que celles des fichiers d'origine masquées avec un ET binaire avec 0777, et modifiées par le umask de l'utilisateur (sauf si l'on invoque
#+        l'option -p). Pendant la copie récursive de répertoires, les nouveaux répertoires verront leur masque temporairement étendu par un OU binaire avec S_IRWXU (0700), afin d'autoriser le processus d'y lire, écrire et  vérifier  le
#+        contenu.

#+        cp  ne  fait  rien  lorsque  l'on  tente  de  copier un fichier sur lui-même (sauf éventuellement afficher un message d'erreur). Lorsque la copie se fait sur un fichier existant, celui-ci est ouvert en utilisant « open(chemin,
#+        O_WRONLY | O_TRUNC) ». Lorsque la copie a lieu dans un nouveau fichier, on invoque « open(chemin, O_WRONLY | O_CREAT, mode) ». Si l'ouverture d'un fichier existant échoue, et si l'option -f a été invoquée, cp essaye de suppri‐
#+        mer, avec unlink(2), le fichier existant, puis de recréer un nouveau fichier.

#+ OPTIONS POSIX
#+        Posix définit quatre options et demi :

#+        -f     Effacer les fichiers cibles existants (voir ci-dessus).

#+        -i     Interroger l'utilisateur avant d'écraser des fichiers réguliers existants. La question est affichée sur stderr, et la réponse lue depuis stdin.

#+        -p     Conserver  le  propriétaire, le groupe, les permissions d'accès et les horodatages du fichier original. Si la conservation du propriétaire ou du groupe est impossible, les bits Set-UID et Set-GID sont effacés. L'horoda‐
#+               tage sera quand même légèrement différent entre l'original et la copie car l'opération de copie nécessite un accès en lecture au fichier source.

#+        -R     Copier récursivement les répertoires, et gérer correctement les copies des fichiers spéciaux ou des FIFOs.

#+        -r     Copier récursivement les répertoires mais la gestion des fichiers spéciaux n'est pas définie. En fait l'option -r est autorisée, et même encouragée à se comporter comme l'option -R, toutefois le  comportement  (stupide)
#+               de la version 4.0 GNU n'est pas interdit.

#+        --     Indique la fin explicite de la liste des options.

#+ OPTIONS POSIX SUPPLÉMENTAIRES
#+        La spécification POSIX.1-2001 ajoute trois options qui spécifient comment gérer les liens symboliques. Lorsque l'on effectue une copie non récursive, les liens symboliques sont suivis. Lorsque l'on effectue une copie récursive
#+        à l'aide de l'option -r, le résultat est dépend de l'implémentation. Lorsque l'on effectue une copie récursive à l'aide de l'option -R :

#+        -H     Suivre les liens symboliques donnés dans la liste des paramètres. Ne pas suivre les liens symboliques rencontrés lors de la copie récursive, simplement les copier en tant que liens symboliques.

#+        -L     Suivre tous les liens symboliques, ceux qui apparaissent dans la liste des paramètres et ceux rencontrés pendant la copie récursive.

#+        -P     Ne suivre aucun lien symbolique, ni ceux qui apparaissent dans la liste des paramètres, ni ceux rencontrés pendant la copie récursive. Simplement les copier en tant que liens symboliques.

#+        Il n'y a pas de comportement par défaut, on doit spécifier le comportement désiré.

#+ SPÉCIFICITÉS GNU
#+        En général les fichiers sont écrits immédiatement après lecture de l'original, sauf si l'on utilise l'option --sparse décrite plus bas.

#+        Par défaut, cp ne copie pas les répertoires (voir l'option -r).

#+        cp refuse généralement de copier un fichier sur lui-même, avec l'exception suivante : si les options --force et --backup sont indiquées, et si les fichiers origine et copie sont identiques et se rapportent à un  fichier  régu‐
#+        lier, cp effectuera une copie de sauvegarde (voir plus bas). Ceci peut servir à faire une sauvegarde d'un fichier avant de le modifier.

#+        Par défaut, les liens symboliques ne sont pas suivis.

#+ OPTIONS GNU
#+        -a, --archive
#+               Préserver autant que possible la structure et les attributs du fichier original lors de la copie. Cette option est équivalente à -dpPR.

#+        -b     Voir la discussion sur les sauvegardes plus loin.

#+        --copy-contents (depuis file-utils 4.1)
#+               Effectue  bêtement  ce que faisait file-utils 4.0, essayant de copier le contenu des fichiers périphériques et des FIFO pendant une copie récursive. N'utilisez jamais cette option. Avec elle, « cp » peut aussi bien blo‐
#+               quer indéfiniment en lecture d'une FIFO ou /dev/tty, ou remplir le disque cible en copiant /dev/zero.

#+        -d     Copier les liens symboliques en tant que tels plutôt que de copier les fichiers vers lesquels ils pointent. Préserver également les liens matériels entre les fichiers  sources  durant  la  copie.  Avec  file-utils  4.0,
#+               l'option longue --no-dereference était synonyme de -d, avec file-utils 4.1, elle est synomnyme de -P, alors que -d est équivalent à --no-dereference --preserve=links.

#+        -f, --force
#+               Effacer  les  fichiers cibles existants au cas où une ouverture en écriture échoue et ne jamais demander confirmation. (C'est ainsi depuis file-utils 4.1. Avec file-utils 4.0, cette option était équivalent à la nouvelle
#+               --remove-destination.)

#+        -H (depuis file-utils 4.1)
#+               Voir la description POSIX plus haut.

#+        -i, --interactive
#+               Interroger l'utilisateur avant d'écraser des fichiers réguliers existants.

#+        -l, --link
#+               Effectuer des liens matériels plutôt que des copies des fichiers réguliers.

#+        -L, --dereference (depuis file-utils 4.1)
#+               Voir la description POSIX plus haut.

#+        --no-preserve=ATTRIBUTS (depuis file-utils 4.1)
#+               Ne pas conserver les attributs spécifiés. Voir l'option --preserve plus loin.

#+        -p, --preserve
#+               Conserver le propriétaire, le groupe, les permissions d'accès et les horodatages du fichier original.

#+        --preserve=ATTRIBUTS (depuis file-utils 4.1)
#+               ATTRIBUTS peut être une des valeurs parmi « mode » (permissions), « ownership » (propriétaire et groupe), « timestamps », « links », « all » (toutes les valeurs précédentes).

#+        -P, --no-dereference (depuis file-utils 4.1)
#+               Voir la description POSIX plus haut. Ceci remplace la signification file-utils 4.0 de l'option -P, qui était synonyme de --parents. Voir également l'option -d plus haut.

#+        --parents (dans file-utils 4.0, également l'option courte -P)
#+               Construire le nom de chaque fichier destination en ajoutant au répertoire cible une barre oblique « / » et le nom du fichier source indiqué. Le dernier argument de cp doit être un répertoire existant.  Par  exemple,  la
#+               commande « cp --parents a/b/c rép_existant » copie le fichier a/b/c en rép_existant/a/b/c, tout en créant les sous-répertoires intermédiaires manquants.

#+        -r     Dans  file-utils 4.1 : synonyme de -R. Dans file-utils 4.0 : Copier récursivement les répertoires, copiant tout ce qui n'est pas répertoire ou lien symbolique (c'est-à-dire également les FIFO et fichiers spéciaux) comme
#+               s'ils étaient des fichiers réguliers. Ce comportement débile est obtenu avec file-utils 4.1 si l'option --copy-contents est fournie.

#+        -R     Copier récursivement les répertoires, en préservant tout ce qui n'est pas répertoire.

#+        --reply=COMMENT (depuis file-utils 4.1)
#+               COMMENT peut être une des valeurs parmi « yes », « no », « query », spécifiant qu'à toutes les questions la réponse sera respectivement « yes », « no » ou obtenue auprès de l'utilisateur.

#+        --remove-destination (depuis file-utils 4.1)
#+               Supprimer chaque fichier cible existant avant d'effectuer la copie. Avec file-utils 4.0, cette option était impliquée par -f.

#+        --sparse=QUAND
#+               [Ndt : sparse = clairsemé] Un fichier à trous (sparse file) contient des séquences d'octets nuls n'occupant pas de place sur le disque. L'appel système « read » lit ces données comme des zéros. Non seulement cela permet
#+               d'économiser  de  la  place sur le disque, mais on gagne également de la vitesse de lecture. De nombreux fichiers binaires (exécutables par exemple) contiennent des séquences importantes de zéros. Par défaut, cp détecte
#+               les trous dans les fichiers en utilisant une heuristique grossière et restituera les trous dans les fichiers de sortie.

#+               L'argument QUAND peut prendre l'une des valeurs suivantes :

#+               auto   Le comportement par défaut, le fichier de sortie est troué si des trous sont détectés dans le fichier d'entrée.

#+               always Toujours trouer les fichiers de sortie. Cette option sert lorsque les fichiers d'entrée se trouvent sur un système de fichiers n'acceptant pas les trous, et que les fichiers de sortie se trouveront sur un système
#+                      les acceptant.

#+               never  Ne jamais essayer de faire de trous dans les fichiers de sortie. Si vous trouvez une utilité à cette option, faites-le nous savoir...

#+        --strip-trailing-slashes (depuis file-utils 4.1)
#+               Supprimer la barre oblique « / » de fin de chaque argument source. (Ceci peut modifier l'interprétation dans le cas d'un lien symbolique vers un répertoire.)

#+        -s, --symbolic-link
#+               Créer  des  liens symboliques plutôt que des copies des fichiers réguliers. Tous les noms de fichiers sources doivent être absolus (commençant par « / ») à moins que les fichiers destinations résident dans le répertoire
#+               en cours. Cette option affiche un message d'erreur pour les systèmes de fichiers ne supportant pas les liens symboliques.

#+        -S     Suffixe de sauvegarde, voir plus loin.

#+        --target-directory=RÉP (depuis file-utils 4.1)
#+               Spécifier le répertoire cible. Destinée à être utilisée avec xargs(1), comme dans « ls | xargs cp --target-directory=../d ».

#+        -u, --update
#+               Ne pas effectuer la copie si le fichier destination existant (autre qu'un répertoire) a une date de modification égale ou plus récente que celle du fichier source.

#+        -v, --verbose
#+               Afficher le nom de chaque fichier avant de le copier.

#+        -x, --one-file-system
#+               Ignorer les sous-répertoires se trouvant sur un système de fichiers différent de celui du départ de la copie.

#+        -Z     Fixez le contexte de sécurité SELinux du fichier de destination au type par défaut.

#+        --context[=CTX]
#+               Comme -Z ou, si CTX est spécifié, fixez le contexte de sécurité SELinux ou SMACK à CTX.

#+ OPTIONS DE SAUVEGARDE GNU
#+        Les versions GNU des programmes comme cp, mv, ln, install et patch créeront au besoin une copie de sauvegarde des fichiers à écraser, à modifier ou à détruire. On demande une copie de sauvegarde à l'aide  de  l'option  -b,  on
#+        indique la nomenclature à adopter avec l'option -V, et si la sauvegarde se fait avec un suffixe, celui-ci est précisé avec l'option -S.

#+        -b, --backup
#+               Créer une copie de sauvegarde des fichiers à écraser ou à détruire.

#+        --backup=CONTROL
#+               (Depuis fileutils-4.1.)

#+        -S SUFFIXE, --suffix=SUFFIXE
#+               Ajouter  le  SUFFIXE  indiqué  à  chaque  fichier  de  sauvegarde créé. Si cette option n'est pas indiquée, on utilisera la valeur de la variable d'environnement SIMPLE_BACKUP_SUFFIX. Si la variable SIMPLE_BACKUP_SUFFIX
#+               n'existe pas, la valeur par défaut est « ~ ».

#+        -V MÉTHODE, --version-control=MÉTHODE
#+               Préciser la nomenclature des fichiers de sauvegarde La MÉTHODE indiquée peut être « numbered » (« t »), « existing » (« nil »), ou « never » (« simple »). Si cette option n'est pas indiquée, la  valeur  de  la  variable
#+               d'environnement VERSION_CONTROL est utilisée, et si la variable VERSION_CONTROL n'existe pas, la valeur par défaut est « existing ».

#+               Cette option correspond à la variable « version-control » sous Emacs. Les MÉTHODES valides (les abréviations non ambiguës sont acceptées) sont :

#+               t, numbered
#+                      Toujours faire une sauvegarde numérotée.

#+               nil, existing
#+                      Faire une sauvegarde numérotée des fichiers en ayant déjà une précédente, et une sauvegarde simple pour les autres.

#+               never, simple
#+                      Faire toujours une sauvegarde simple.

#+ OPTIONS STANDARDS GNU
#+        --help Afficher un message d'aide sur la sortie standard, et se terminer correctement.

#+        --version
#+               Afficher un numéro de version sur la sortie standard, et se terminer correctement.

#+        --     Fin de la liste d'options.

#+ ENVIRONNEMENT
#+        Les  variables  LANG, LC_ALL, LC_CTYPE et LC_MESSAGES ont leurs significations habituelles. Pour la version GNU, les variables SIMPLE_BACKUP_SUFFIX et VERSION_CONTROL configurent la nomenclature adoptée pour les sauvegardes de
#+        fichiers.

#+ CONFORMITÉ
#+        POSIX.2.

#+ NOTES
#+        Cette page décrit la version de cp trouvée dans le paquetage fileutils-4.1, d'autres versions peuvent différer légèrement.

#+ TRADUCTION
#+        Ce document est une traduction réalisée par Christophe Blaess <http://www.blaess.fr/christophe/> le  5 décembre 1996,  mise  à  jour  par  Alain  Portal  <aportal  AT  univ-montp2  DOT  fr>  le  8 juillet 2005  et  révisée  le
#+        19 novembre 2007.

#+        L'équipe  de  traduction  a  fait  le maximum pour réaliser une adaptation française de qualité. La version anglaise la plus à jour de ce document est toujours consultable via la commande : « LANG=C man 1 cp ». N'hésitez pas à
#+        signaler à l'auteur ou au traducteur, selon le cas, toute erreur dans cette page de manuel.

#+ LDP                                                                                                           Novembre 2003                                                                                                         CP(1)

#+        -f     Effacer les fichiers cibles existants (voir ci-dessus).

#+        -i     Interroger l'utilisateur avant d'écraser des fichiers réguliers existants. La question est affichée sur
#+               stderr, et la réponse lue depuis stdin.

#+        -p     Conserver  le  propriétaire, le groupe, les permissions d'accès et les horodatages du fichier original.
#+               Si la conservation du propriétaire ou du groupe est impossible, les bits Set-UID et Set-GID sont
#+               effacés. L'horoda‐

#+        -R     Copier récursivement les répertoires, et gérer correctement les copies des fichiers spéciaux ou des
#+               FIFOs.

#+        -r     Copier récursivement les répertoires mais la gestion des fichiers spéciaux n'est pas définie. En fait
#+               l'option -r est autorisée, et même encouragée à se comporter comme l'option -R, toutefois le
#+               comportement  (stupide)

#+        --     Indique la fin explicite de la liste des options.

#+        -H     Suivre les liens symboliques donnés dans la liste des paramètres. Ne pas suivre les liens symboliques
#+               rencontrés lors de la copie récursive, simplement les copier en tant que liens symboliques.

#+        -L     Suivre tous les liens symboliques, ceux qui apparaissent dans la liste des paramètres et ceux rencontrés
#+               pendant la copie récursive.

#+        -P     Ne suivre aucun lien symbolique, ni ceux qui apparaissent dans la liste des paramètres, ni ceux
#+               rencontrés pendant la copie récursive. Simplement les copier en tant que liens symboliques.

#+        -a, --archive

#+        -b     Voir la discussion sur les sauvegardes plus loin.

#+        --copy-contents (depuis file-utils 4.1)

#+        -d     Copier les liens symboliques en tant que tels plutôt que de copier les fichiers vers lesquels ils
#+               pointent. Préserver également les liens matériels entre les fichiers  sources  durant  la  copie.
#+               Avec  file-utils  4.0,

#+        -f, --force

#+        -H (depuis file-utils 4.1)

#+        -i, --interactive

#+        -l, --link

#+        -L, --dereference (depuis file-utils 4.1)

#+        --no-preserve=ATTRIBUTS (depuis file-utils 4.1)

#+        -p, --preserve

#+        --preserve=ATTRIBUTS (depuis file-utils 4.1)

#+        -P, --no-dereference (depuis file-utils 4.1)

#+        --parents (dans file-utils 4.0, également l'option courte -P)

#+        -r     Dans  file-utils 4.1 : synonyme de -R. Dans file-utils 4.0 : Copier récursivement les répertoires,
#+               copiant tout ce qui n'est pas répertoire ou lien symbolique (c'est-à-dire également les FIFO et fichiers
#+               spéciaux) comme

#+        -R     Copier récursivement les répertoires, en préservant tout ce qui n'est pas répertoire.

#+        --reply=COMMENT (depuis file-utils 4.1)

#+        --remove-destination (depuis file-utils 4.1)

#+        --sparse=QUAND

#+        --strip-trailing-slashes (depuis file-utils 4.1)

#+        -s, --symbolic-link

#+        -S     Suffixe de sauvegarde, voir plus loin.

#+        --target-directory=RÉP (depuis file-utils 4.1)

#+        -u, --update

#+        -v, --verbose

#+        -x, --one-file-system

#+        -Z     Fixez le contexte de sécurité SELinux du fichier de destination au type par défaut.

#+        --context[=CTX]

#+        -b, --backup

#+        --backup=CONTROL

#+        -S SUFFIXE, --suffix=SUFFIXE

#+        -V MÉTHODE, --version-control=MÉTHODE

# ---- 10005-mv.sh ----
#!/bin/bash

#+ MV(1) mv - Déplacer ou renommer des fichiers

#+ SYNOPSIS
#+        mv [option...] source cible
#+        mv [option...] source... cible

#+        Options POSIX : [-fi] [--]

#+        Options GNU (formes courtes) : [-bfiuv] [-Ssuffixe] [-V {numbered,existing,simple}] [--help] [--version] [--]

#+ DESCRIPTION
#+        mv déplace ou renomme des fichiers ou des répertoires.

#+        Si  le  dernier  argument est le nom d'un répertoire existant, mv placera tous les autres fichiers à l'intérieur de ce répertoire, en conservant leurs noms. Sinon, s'il n'y a que deux fichiers indiqués, il renommera le premier
#+        pour remplacer le second. Une erreur se produit s'il y a plus de deux fichiers indiqués et si le dernier argument n'est pas un répertoire.

#+        Ainsi, « mv /a/x/y /b » va renommer le fichier /a/x/y en /b/y si /b était un répertoire déjà existant, et en /b sinon.

#+        Appelons destination le fichier vers lequel un fichier va être déplacé. Si la destination existe, et si l'option -i est indiquée ou si la destination n'est pas accessible en écriture ou encore si l'entrée standard est un  ter‐
#+        minal,  et si l'option -f n'est pas mentionnée, mv interrogera l'utilisateur avant de remplacer le fichier. La question est affichée sur la sortie d'erreur standard, et la réponse est attendue sur l'entrée standard. Le fichier
#+        n'est écrasé que si la réponse est affirmative.

#+        Lorsque la source et la destination sont sur le même système de fichiers, seul le nom est modifié, les propriétaires, modes et horodatages sont conservés. S'ils sont sur deux systèmes de fichiers différents, le fichier  source
#+        est  recopié  puis  effacé.  mv  copiera  si  possible les horodatages de modification et d'accès, les identités de groupe et de propriétaire, et le mode. Si la copie des identités de groupe ou de propriétaire échoue, les bits
#+        Set-UID et Set-GID sont effacés dans les permissions de la destination.

#+ OPTIONS POSIX
#+        -f     Écraser les fichiers de destination existants sans demander confirmation à l'utilisateur.

#+        -i     Demander la confirmation pour écraser tout fichier existant. Si la réponse ne commence pas par « y » ou « Y », le déplacement n'est pas effectué. Si les options -f et -i sont fournies simultanément, la dernière  sur  la
#+               ligne de commande a l'avantage.

#+        --     Fin explicite de la liste des options.

#+ PARTICULARITÉS GNU
#+        L'implémentation GNU de mv du paquetage fileutils-3.16 ne sait déplacer que des fichiers réguliers entre des systèmes de fichiers différents.

#+ OPTIONS GNU
#+        -f, --force
#+               Écraser les fichiers de destination existants sans demander confirmation à l'utilisateur.

#+        -i, --interactive
#+               Demander la confirmation pour écraser tout fichier existant. Si la réponse ne commence pas par « y » ou « Y », le déplacement n'est pas effectué.
alias mvu="mv -uv"
#+        -u, --update
#+               Ne pas déplacer un fichier régulier, qui écraserait un fichier destination existant ayant une date de modification plus récente.

#+        -v, --verbose
#+               Afficher le nom des fichiers avant de les déplacer.

#+ OPTIONS DE SAUVEGARDE GNU
#+        Les  versions GNU des programmes comme cp, mv, ln, install et patch effectueront au besoin une copie de sauvegarde des fichiers à écraser, modifier ou effacer. Ces sauvegardes sont demandées à l'aide de l'option -b. La manière
#+        de nommer les copies est indiquée par l'option -V. Dans le cas où l'on utilise le nom du fichier original suivi d'un suffixe, ce dernier est précisé à l'aide de l'option -S.

#+        -b, --backup
#+               Effectuer une copie de secours des fichiers qui doivent être écrasés ou effacés.

#+        -S suffixe, --suffix=suffixe
#+               Utiliser le suffixe lors des copie de sauvegarde des fichiers. Ce suffixe peut également être indiqué par la variable d'environnement SIMPLE_BACKUP_SUFFIX. Cette option est prioritaire sur la  variable  d'environnement.
#+               Si aucun de ces deux éléments n'est indiqué, le suffixe « ~ », est utilisé par défaut.

#+        -V méthode, --version-control=méthode
#+               Cette option permet d'indiquer le type de sauvegarde à effectuer. La méthode peut être : « numbered » (ou « t »), « existing » (ou « nil »), ou « never » (ou « simple »). La variable d'environnement VERSION_CONTROL peut
#+               également être employée, mais cette option est prioritaire. Si VERSION_CONTROL n'est pas renseignée, et si cette option n'est pas fournie, le type de sauvegarde par défaut est « existing ».  La  valeur  de  la  variable
#+               d'environnement VERSION_CONTROL ou de cet argument correspond à la variable « version-control » d'Emacs. Les valeurs acceptées sont (ainsi que les abréviations uniques) :

#+                      « t » ou « numbered »
#+                             Toujours numéroter les sauvegardes.

#+                      « nil »' ou « existing »
#+                             Numéroter la sauvegarde s'il en existe déjà une, sinon faire une sauvegarde simple.

#+                      « never » ou « simple »
#+                             Toujours faire une sauvegarde simple.

#+ ENVIRONNEMENT
#+        Les  variables LANG, LC_ALL, LC_COLLATE, LC_CTYPE et LC_MESSAGES ont leurs significations habituelles. Pour la version GNU, les variables SIMPLE_BACKUP_SUFFIX et VERSION_CONTROL configurent les noms des fichiers de sauvegarde,
#+        comme mentionné plus haut.

#+ CONFORMITÉ
#+        POSIX.2, sauf que les hiérarchies de répertoires ne peuvent pas être déplacés entre systèmes de fichiers différents.

# alias unsplash="mv ./*unsplash*.jpg ./*unsplash*.png ${HOME}/Images/unsplash"
# alias unsplash='mv ./*unsplash*.*p*g ${HOME}/Images/unsplash'

# function unsplash() {
#   "mv ./*unsplash*.jpg ${HOME}/Images/unsplash"
#   "mv ./*unsplash*.png ${HOME}/Images/unsplash"
# }
function isthere() {
  (ls "$1" &>/dev/null)
  __result=$?
  return $__result
}

function __mvx_() {
  if [[ -o no_match ]]; then
    __no_match=1
    # echo no_match was set
    unsetopt NOMATCH
  else
    __no_match=0
    # echo no_match is not set
  fi

  local dir01="${1}s"
  local ext01="${1}"
  unsetopt NOMATCH
  # echo "isthere *.${ext01}"
  isthere ./*."${ext01}"
  local _STATUS_ext=$?
  # echo "isthere ./${dir01}"
  isthere ./"${dir01}"
  local _STATUS_dir=$?

  if [[ _STATUS_ext -eq 0 ]]; then
    if [[ _STATUS_dir -ne 0 ]]; then
      mkdir -p ./"${dir01}"
    fi
    mv ./*."${ext01}" ./"${dir01}"
    __result=$?
  fi

  if [[ __no_match -eq 1 ]]; then
    setopt NOMATCH
    # echo no_match is set back
  fi

  return $__result
}

function mp4s() {
  __mvx_ mp4
  mv ./*.MP4 ./mp4s
  mv ./*.MOV ./mp4s
}

function jpgs() {
  if [[ -o no_match ]]; then
    __no_match=1
    # echo no_match was set
    unsetopt NOMATCH
  else
    __no_match=0
    # echo no_match is not set
  fi
  __mvx_ jpg
  mv ./*.jpeg ./jpgs

  if [[ __no_match -eq 1 ]]; then
    setopt NOMATCH
    # echo no_match is set back
  fi
}

function pngs() {
  __mvx_ png
}

function gifs() {
  __mvx_ gif
}

function webps() {
  __mvx_ webp
}

function webvs() {
  __mvx_ webv
}

function mv_imgs() {
  # unsplash
  mp4s
  pngs
  gifs
  jpgs
  webps
  webvs
}
# mkdir jpegs pngs gifs webps
# ( (ls *.mp4) 2>/dev/null 1>&2)
# ls *.mp4 1&2> /dev/null
# /home/luxcium/Téléchargements/

# ---- 10006-ip.sh ----
#!/bin/bash

alias iplist="sudo iptables -t filter -L"
alias iprules="sudo iptables -t filter -S"
alias ipruleslist="sudo iptables -t filter -S"
alias iplinks="sudo ip -c -h -p -a link show"
alias ipaddresses="sudo ip -c -h -p -a -4 addres show"
alias ip6addresses="sudo ip -c -h -p -a -6 addres show"
alias ip0addresses="sudo ip -c -h -p -a -4 -0 addres show"

alias ipeno1reset="zsh \${AHMYZSH}/settings/iptables-eno1.sh"
alias ipreset="zsh  \${AHMYZSH}/settings/iptables-reset.sh"
alias ipenable="zsh  \${AHMYZSH}/settings/iptables-enabler.sh"
# enp0s31f6 ${AHMYZSH}/settings/iptables-enabler.sh

# sudo ip -c -br -0 addres show
# sudo ip -c -br -6 addres show
# sudo ip -c -br -4 addres show
# sudo ip -c -br -4 -r addres show

function iphelp() {
  echo sudo ip link help --------------------------------------------------------
  sudo ip link help
  echo sudo ip address help --------------------------------------------------------
  sudo ip address help
  echo sudo ip addrlabel help --------------------------------------------------------
  sudo ip addrlabel help
  echo sudo ip route help --------------------------------------------------------
  sudo ip route help
  echo sudo ip rule help --------------------------------------------------------
  sudo ip rule help
  echo sudo ip neigh help --------------------------------------------------------
  sudo ip neigh help
  echo sudo ip ntable help --------------------------------------------------------
  sudo ip ntable help
  echo sudo ip tunnel help --------------------------------------------------------
  sudo ip tunnel help
  echo sudo ip tuntap help --------------------------------------------------------
  sudo ip tuntap help
  echo sudo ip maddress help --------------------------------------------------------
  sudo ip maddress help
  echo sudo ip mroute help --------------------------------------------------------
  sudo ip mroute help
  echo sudo ip mrule help --------------------------------------------------------
  sudo ip mrule help
  echo sudo ip monitor help --------------------------------------------------------
  sudo ip monitor help
  echo sudo ip xfrm help --------------------------------------------------------
  sudo ip xfrm help
  echo sudo ip netns help --------------------------------------------------------
  sudo ip netns help
  echo sudo ip l2tp help --------------------------------------------------------
  sudo ip l2tp help
  echo sudo ip tcp_metrics help --------------------------------------------------------
  sudo ip tcp_metrics help
  echo sudo ip token help --------------------------------------------------------
  sudo ip token help
  echo sudo ip macsec help --------------------------------------------------------
  sudo ip macsec help
  echo sudo ip vrf help --------------------------------------------------------
  sudo ip vrf help
  echo sudo ip mptcp help --------------------------------------------------------
  sudo ip mptcp help
}

# lo               UNKNOWN        00:00:00:00:00:00 <LOOPBACK,UP,LOWER_UP>
# enp4s0           UP             10:7b:44:54:c3:53 <BROADCAST,MULTICAST,UP,LOWER_UP>
# eno1             UP             10:7b:44:54:c3:50 <BROADCAST,MULTICAST,UP,LOWER_UP>
# ❯ sudo ip -c -br -6 addres show
# lo               UNKNOWN        ::1/128
# enp4s0           UP             fe80::f010:827f:90f8:e32a/64
# eno1             UP             fe80::fa1a:3d68:d59e:1391/64

#*    -4     shortcut for -family inet.
#*    -6     shortcut for -family inet6.
#*    -B     shortcut for -family bridge.
#*    -M     shortcut for -family mpls.
#*    -0     shortcut for -family link.

function ipreload() {
  ##
  ## Force the connection to reload
  ##
  sudo ifconfig eno1 down
  sudo ifconfig enp4s0 down
  sleep 2
  sudo ifconfig eno1 up
  sudo ifconfig enp4s0 up
  sleep 3

  (
    sudo nmcli con reload conf eno1 &
    sudo nmcli con reload conf enp4s0
  )
  sleep 0.5
  (
    sudo nmcli con reload dns-rc eno1 &
    sudo nmcli con reload dns-rc enp4s0
  )
  sleep 0.5
  (
    sudo nmcli con reload dns-full eno1 &
    sudo nmcli con reload dns-full enp4s0
  )
  sleep 0.5

  sudo nmcli con reload eno1
  sleep 1.25
  sudo nmcli con reload enp4s0
  sleep 1.25
}

# ---- 11000-kill.sh ----
#!/bin/bash

alias killshot='kill $(pidof shotwell)'

alias restartplasma="kquitapp5 plasmashell && kstart5 plasmashell"
# plasmashell --replace

# ---- 11001-dnf.sh ----
#!/bin/bash

# ---- DNF ---------------------------------------------------------------------

#@ https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/dnf/dnf.plugin.zsh
#@ commit:c0b1252
#@ created by https://github.com/GioMac
#@ updated and maintained by https://github.com/mcornella

# alias dnfl='dnf list'             # List packages
# alias dnfli="dnf list installed"  # List installed packages
alias dnfgl='dnf grouplist' # List package groups
alias dnfp='dnf info'       # Show package information
alias dnfs='dnf search'     # Search package
# alias dnfu='sudo dnf upgrade --refresh'   # Upgrade package
# alias dnfuy='sudo dnf upgrade -y --refresh' # Upgrade package
# alias dnfi='sudo dnf install'     # Install package
alias dnfgi='sudo dnf groupinstall' # Install package group
alias dnfgr='sudo dnf groupremove'  # Remove package group
alias dnfmc='dnf makecache'         # Generate metadata cache
alias dnfc='sudo dnf clean all'     # Clean cache
alias dnfmkcln='dnfc -v; dnfmc'     # Clean cache & Regenerate metadata cache
alias distrosync='sudo dnf distro-sync --refresh'
# alias dnfgl="dnf grouplist"                 # List package groups
# alias dnfmc="dnf makecache"                 # Generate metadata cache

# alias dnfu="sudo dnf upgrade"               # Upgrade package
# alias dnfi="sudo dnf install"               # Install package
# alias dnfgi="sudo dnf groupinstall"         # Install package group
# alias dnfr="sudo dnf remove"                # Remove package
# alias dnfgr="sudo dnf groupremove"          # Remove package group
# alias dnfc="sudo dnf clean all"             # Clean cache

## Additional Aliases
#@ created by https://github.com/Luxcium
alias dnfud='sudo dnf upgrade --downloadonly -y --refresh' # Upgrade package
alias dnfpi='dnf info'                                     # Show package information

## Functions
#@ created by https://github.com/Luxcium

function dnfl() {
  sudo dnf list "*${1}*" "${2}"
}

function dnfli() {
  sudo dnf list --installed "*${1}*" "${2}"
}

function dnfr() {
  sudo dnf remove "*${1}*" "${2}"
}

function dnfi() {
  sudo dnf install "*${1}*" # "${2}"
}

function dnfxr() {
  sudo nice -n -15 ionice -c 1 -n 2 dnf remove "*${1}*" "${2}"
}

function dnfxi() {
  sudo nice -n -15 ionice -c 1 -n 2 dnf install "*${1}*" "${2}"
}

function _dnf_clean_all() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  echo "CLEAN ALL:"
  sudo nice -25 ionice -c 3 dnf clean all --refresh && play_osx1_0012_critical_chronicles || play_osx2_0002_assend_attention
  echo ""
}

# sudo nice -n -15 ionice -c 1 -n 1
alias dnfxu='sudo nice -n -15 ionice -c 1 -n 1 dnf upgrade' # Upgrade package

# clean and get updates:

function dnfcup() {
  # _dnf_clean_all && _dnf_makecache && _get_updates &
  echo ""
  echo "UPGRADE:"
  sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --setopt=keepcache=1 --assumeno
  echo ""
  echo "DISTRO-SYNC:"
  sudo nice -n -15 ionice -c 1 -n 2 dnf distro-sync --setopt=keepcache=1 --assumeno
}

function dnfcleanupgrade() {
  _dnf_clean_all && _dnf_makecache && _get_updates &
  echo ""
  echo "UPGRADE:"
  sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --setopt=keepcache=1 -y
  echo ""
  echo "DISTRO-SYNC:"
  sudo nice -n -15 ionice -c 1 -n 2 dnf distro-sync --setopt=keepcache=1 -y
}

## Aliases
function dnf_update() {
  _get_updates
  _dnfup "${1}"
  dnfcup
}

# download updates
function _get_updates() {

  (
    (
      (
        dnfmc
        sudo nice -n -15 ionice -c 2 -n 0 dnf upgrade --downloadonly --setopt=keepcache=1 --assumeyes
      ) &
    ) >/dev/null
  ) 2>/dev/null
}

function _dnf_makecache_quick_update() {
  _dnf_clean_all
  # yumFedoraDeactivate
  # yumFedoraTestingDeactivate
  yumOthersDeactivate
  yumMicrosoftDeactivate
  echo "MAKECACHE:"
  sudo nice -25 ionice -c 3 dnf makecache --refresh
  echo ""
  _get_updates
  # yumFedoraActivate
  # yumFedoraTestingActivate
  yumOthersActivate
  yumMicrosoftActivate
}

function _dnf_makecache_auto_update() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  _dnf_clean_all
  yumFedoraDeactivate
  yumFedoraTestingDeactivate
  yumOthersDeactivate # && (play_001 &)
  yumMicrosoftDeactivate
  echo "MAKECACHE:"
  sudo nice -25 ionice -c 3 dnf makecache --refresh && play_osx2_0007_old_school1 || play_osx2_0002_assend_attention
  echo ""
  sudo dnf upgrade -y && play_phone_0045 || play_osx2_0002_assend_attention
  yumFedoraActivate
  yumFedoraTestingActivate
  # yumOthersActivate
  yumMicrosoftActivate
  play_osx2_0005_old_school2 # play_osx2_0007_old_school1
}

function _dnf_makecache() {
  # yumFedoraDeactivate
  # yumFedoraTestingDeactivate
  # yumOthersDeactivate
  yumMicrosoftDeactivate
  echo "MAKECACHE:"
  sudo nice -25 ionice -c 3 dnf makecache --refresh && play_osx2_0007_old_school1
  echo ""
  # yumFedoraActivate
  # yumFedoraTestingActivate
  # yumOthersActivate
  yumMicrosoftActivate
  play_osx2_0005_old_school2
}

function _dnf_makecache_all() {
  _reset_all_repos
  echo "MAKECACHE (all):"
  sudo nice -25 ionice -c 3 dnf makecache --refresh
  echo ""
  _dnfup
}

function _dnf_makecache_quick() {
  # yumFedoraDeactivate
  yumFedoraTestingDeactivate
  yumOthersDeactivate
  yumMicrosoftDeactivate
  echo "MAKECACHE:"
  sudo nice -25 ionice -c 3 dnf makecache --refresh
  echo ""
  # yumFedoraActivate
  yumFedoraTestingActivate
  yumOthersActivate
  yumMicrosoftActivate
}

function _reset_all_repos() {
  (
    yumFedoraDeactivate
    yumFedoraActivate &
  )
  (
    yumFedoraTestingDeactivate
    yumFedoraTestingActivate &
  )
  (
    yumMicrosoftDeactivate
    yumMicrosoftActivate &
  )
  (
    yumOthersDeactivate
    yumOthersActivate &
  )
  (
    exclude_repos_
    include_repos_
  ) &
}

# inatall updates
function _dnfup() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_019
  sudo nice -n -15 ionice -c 1 -n 2 dnf distro-sync --setopt=keepcache=1 "$1" || play_etc-dialog
}

function yumFedoraActivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumFedoraActivate"
  echo "+++"
  echo "activate: "
  (sudo mv /etc/yum.repos.d/fedora.repo.off /etc/yum.repos.d/fedora.repo) && (
    sleep 0.153
    # play_013 &
  ) &
  echo "activate: fedora-updates"
  (sudo mv /etc/yum.repos.d/fedora-updates.repo.off /etc/yum.repos.d/fedora-updates.repo) && (
    sleep 0.13
    # play_013 &
  ) &
  # +++
  echo "activate: fedora-modular"
  (sudo mv /etc/yum.repos.d/fedora-modular.repo.off /etc/yum.repos.d/fedora-modular.repo) && (
    sleep 0.14
    # play_013 &
  ) &
  echo "activate: fedora-updates-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-modular.repo.off /etc/yum.repos.d/fedora-updates-modular.repo) && (
    sleep 0.15
    # play_013 &
  ) &
  # +++
  echo "activate: rpmfusion-free"
  (sudo mv /etc/yum.repos.d/rpmfusion-free.repo.off /etc/yum.repos.d/rpmfusion-free.repo) && (
    sleep 0.16
    # play_013 &
  ) &
  echo "activate: rpmfusion-free-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates.repo.off /etc/yum.repos.d/rpmfusion-free-updates.repo) && (
    sleep 0.17
    # play_013 &
  ) &
  # +++
  echo "activate: rpmfusion-nonfree"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree.repo.off /etc/yum.repos.d/rpmfusion-nonfree.repo) && (
    sleep 0.18
    # play_013 &
  ) &
  echo "activate: rpmfusion-nonfree-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates.repo.off /etc/yum.repos.d/rpmfusion-nonfree-updates.repo) && (
    sleep 0.19
    # play_013 &
  ) &
  # +++
  echo ""
}

function yumFedoraDeactivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumFedoraDeactivate"
  echo "+++"
  echo "deactivate: fedora"
  (sudo mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.off) && (
    sleep 0.110
    # play_013 &
  ) &
  echo "deactivate: fedora-updates"
  (sudo mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.off) && (
    sleep 0.111
    # play_013 &
  ) &
  # +++
  echo "deactivate: fedora-modular"
  (sudo mv /etc/yum.repos.d/fedora-modular.repo /etc/yum.repos.d/fedora-modular.repo.off) && (
    sleep 0.112
    # play_013 &
  ) &
  echo "deactivate: fedora-updates-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-modular.repo /etc/yum.repos.d/fedora-updates-modular.repo.off) && (
    sleep 0.113
    # play_013 &
  ) &
  # +++
  echo "deactivate: rpmfusion-free"
  (sudo mv /etc/yum.repos.d/rpmfusion-free.repo /etc/yum.repos.d/rpmfusion-free.repo.off) && (
    sleep 0.114
    # play_013 &
  ) &
  echo "deactivate: rpmfusion-free-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates.repo /etc/yum.repos.d/rpmfusion-free-updates.repo.off) && (
    sleep 0.115
    # play_013 &
  ) &
  # +++
  echo "deactivate: rpmfusion-nonfree"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree.repo /etc/yum.repos.d/rpmfusion-nonfree.repo.off) && (
    sleep 0.116
    # play_013 &
  ) &
  echo "deactivate: rpmfusion-nonfree-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates.repo /etc/yum.repos.d/rpmfusion-nonfree-updates.repo.off) && (
    sleep 0.117
    # play_013 &
  ) &
  # +++
  echo ""
}

function yumFedoraTestingActivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumFedoraTestingActivate"
  echo "+++"

  echo "activate: fedora-updates-testing"
  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo.off /etc/yum.repos.d/fedora-updates-testing.repo) && (
    sleep 0.118
    # play_013 &
  ) &
  echo "activate: fedora-updates-testing-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo.off /etc/yum.repos.d/fedora-updates-testing-modular.repo) && (
    sleep 0.119
    # play_013 &
  ) &
  echo "activate: rpmfusion-free-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-free-updates-testing.repo) && (
    sleep 0.120
    # play_013 &
  ) &
  echo "activate: rpmfusion-nonfree-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo) && (
    sleep 0.121
    # play_013 &
  ) &
  # +++
  echo ""
}

function yumFedoraTestingDeactivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumFedoraTestingDeactivate"
  echo "+++"
  echo "deactivate: fedora-updates-testing"
  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo.off) && (
    sleep 0.122
    # play_013 &
  ) &
  echo "deactivate: fedora-updates-testing-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo /etc/yum.repos.d/fedora-updates-testing-modular.repo.off) && (
    sleep 0.123
    # play_013 &
  ) &
  echo "deactivate: rpmfusion-free-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off) && (
    sleep 0.124
    # play_013 &
  ) &
  echo "deactivate: rpmfusion-nonfree-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off) && (
    sleep 0.125
    # play_013 &
  ) &
  # +++
  echo ""
}

function yumOthersActivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumOthersActivate"
  echo "+++"
  echo "activate: gh-cli"
  (sudo mv /etc/yum.repos.d/gh-cli.repo.off /etc/yum.repos.d/gh-cli.repo) && (
    sleep 0.126
    # play_013 &
  ) &
  echo "activate: bintray-ookla-rhel"
  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo.off /etc/yum.repos.d/bintray-ookla-rhel.repo) && (
    sleep 0.127
    # play_013 &
  ) &
  echo "activate: google-chrome"
  (sudo mv /etc/yum.repos.d/google-chrome.repo.off /etc/yum.repos.d/google-chrome.repo) && (
    sleep 0.128
    # play_013 &
  ) &
  echo "activate: google-chrome-beta"
  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo.off /etc/yum.repos.d/google-chrome-beta.repo) && (
    sleep 0.129
    # play_013 &
  ) &
  echo "activate: google-chrome-unstable"
  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo.off /etc/yum.repos.d/google-chrome-unstable.repo) && (
    sleep 0.130
    # play_013 &
  ) &
  echo "activate: vscode"
  (sudo mv /etc/yum.repos.d/vscode.repo.off /etc/yum.repos.d/vscode.repo) && (
    sleep 0.131
    # play_013 &
  ) &
  echo "activate: mongodb-org-4.4"
  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo.off /etc/yum.repos.d/mongodb-org-4.4.repo) && (
    sleep 0.132
    # play_013 &
  ) &
  echo "activate: docker-ce"
  (sudo mv /etc/yum.repos.d/docker-ce.repo.off /etc/yum.repos.d/docker-ce.repo) && (
    sleep 0.133
    # play_013 &
  ) &
  echo "activate: fedora-cisco-openh264"
  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo.off /etc/yum.repos.d/fedora-cisco-openh264.repo) && (
    sleep 0.134
    # play_013 &
  ) &
  echo "activate: cuda-fedora32"
  (sudo mv /etc/yum.repos.d/cuda-fedora32.repo.off /etc/yum.repos.d/cuda-fedora32.repo) && (
    sleep 0.135
    # play_013 &
  ) &
  # +++
  echo ""
}

function yumOthersDeactivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumOthersDeactivate"
  echo "+++"
  echo "deactivate: gh-cli"
  (sudo mv /etc/yum.repos.d/gh-cli.repo /etc/yum.repos.d/gh-cli.repo.off) && (
    sleep 0.136
    # play_013 &
  ) &
  echo "deactivate: bintray-ookla-rhel"
  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo /etc/yum.repos.d/bintray-ookla-rhel.repo.off) && (
    sleep 0.137
    # play_013 &
  ) &
  echo "deactivate: google-chrome"
  (sudo mv /etc/yum.repos.d/google-chrome.repo /etc/yum.repos.d/google-chrome.repo.off) && (
    sleep 0.138
    # play_013 &
  ) &
  echo "deactivate: google-chrome-beta"
  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo /etc/yum.repos.d/google-chrome-beta.repo.off) && (
    sleep 0.139
    # play_013 &
  ) &
  echo "deactivate: google-chrome-unstable"
  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo /etc/yum.repos.d/google-chrome-unstable.repo.off) && (
    sleep 0.140
    # play_013 &
  ) &
  echo "deactivate: vscode"
  (sudo mv /etc/yum.repos.d/vscode.repo /etc/yum.repos.d/vscode.repo.off) && (
    sleep 0.141
    # play_013 &
  ) &
  echo "deactivate: mongodb-org-4.4"
  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo.off) && (
    sleep 0.142
    # play_013 &
  ) &
  echo "deactivate: docker-ce"
  (sudo mv /etc/yum.repos.d/docker-ce.repo /etc/yum.repos.d/docker-ce.repo.off) && (
    sleep 0.143
    # play_013 &
  ) &
  echo "deactivate: fedora-cisco-openh264"
  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo /etc/yum.repos.d/fedora-cisco-openh264.repo.off) && (
    sleep 0.144
    # play_013 &
  ) &
  echo "deactivate: cuda-fedora32"
  (sudo mv /etc/yum.repos.d/cuda-fedora32.repo /etc/yum.repos.d/cuda-fedora32.repo.off) && (
    sleep 0.145
    # play_013 &
  ) &
  # +++
  echo ""
}

function yumMicrosoftActivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumMicrosoftActivate"
  echo "+++"
  echo "activate: microsoft-insiders-fast"
  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo.off /etc/yum.repos.d/microsoft-insiders-fast.repo) && (
    sleep 0.146
    # play_013 &
  ) &
  echo "activate: microsoft-insiders-slow"
  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo.off /etc/yum.repos.d/microsoft-insiders-slow.repo) && (
    sleep 0.147
    # play_013 &
  ) &
  echo "activate: microsoft-prod"
  (sudo mv /etc/yum.repos.d/microsoft-prod.repo.off /etc/yum.repos.d/microsoft-prod.repo) && (
    sleep 0.148
    # play_013 &
  ) &
  echo "activate: azure-cli"
  (sudo mv /etc/yum.repos.d/azure-cli.repo.off /etc/yum.repos.d/azure-cli.repo) && (
    sleep 0.149
    # play_013 &
  ) &
  # +++
  echo ""
}

function yumMicrosoftDeactivate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumMicrosoftDeactivate"
  echo "+++"
  echo "deactivate: microsoft-insiders-fast"
  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo /etc/yum.repos.d/microsoft-insiders-fast.repo.off) && (
    sleep 0.150
    # play_013 &
  ) &
  echo "deactivate: microsoft-insiders-slow"
  echo "deactivate: microsoft-insiders-slow"
  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo /etc/yum.repos.d/microsoft-insiders-slow.repo.off) && (
    sleep 0.151
    # play_013 &
  ) &
  echo "deactivate: microsoft-prod"
  (sudo mv /etc/yum.repos.d/microsoft-prod.repo /etc/yum.repos.d/microsoft-prod.repo.off) && (
    sleep 0.152
    # play_013 &
  ) &
  echo "deactivate: azure-cli"
  (sudo mv /etc/yum.repos.d/azure-cli.repo /etc/yum.repos.d/azure-cli.repo.off) && (
    sleep 0.12
    # play_013 &
  ) &
  # +++
  echo ""
}

function exclude_azure-cli() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/azure-cli.repo /etc/yum.repos.d/azure-cli.repo.off) && echo 'exclude: azure-cli' || echo 'exclude: azure-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_azure-cli() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/azure-cli.repo.off /etc/yum.repos.d/azure-cli.repo) && echo 'include: azure-cli' || echo 'include: azure-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_bintray-ookla-rhel() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo /etc/yum.repos.d/bintray-ookla-rhel.repo.off) && echo 'exclude: bintray-ookla-rhel' || echo 'exclude: bintray-ookla-rhel → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_bintray-ookla-rhel() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo.off /etc/yum.repos.d/bintray-ookla-rhel.repo) && echo 'include: bintray-ookla-rhel' || echo 'include: bintray-ookla-rhel → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude__copr_phracek-PyCharm() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/_copr_phracek-PyCharm.repo /etc/yum.repos.d/_copr_phracek-PyCharm.repo.off) && echo 'exclude: _copr_phracek-PyCharm' || echo 'exclude: _copr_phracek-PyCharm → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include__copr_phracek-PyCharm() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/_copr_phracek-PyCharm.repo.off /etc/yum.repos.d/_copr_phracek-PyCharm.repo) && echo 'include: _copr_phracek-PyCharm' || echo 'include: _copr_phracek-PyCharm → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_docker-ce() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/docker-ce.repo /etc/yum.repos.d/docker-ce.repo.off) && echo 'exclude: docker-ce' || echo 'exclude: docker-ce → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_docker-ce() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/docker-ce.repo.off /etc/yum.repos.d/docker-ce.repo) && echo 'include: docker-ce' || echo 'include: docker-ce → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_fedora-cisco-openh264() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo /etc/yum.repos.d/fedora-cisco-openh264.repo.off) && echo 'exclude: fedora-cisco-openh264' || echo 'exclude: fedora-cisco-openh264 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_fedora-cisco-openh264() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo.off /etc/yum.repos.d/fedora-cisco-openh264.repo) && echo 'include: fedora-cisco-openh264' || echo 'include: fedora-cisco-openh264 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_fedora-updates-testing-modular() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo /etc/yum.repos.d/fedora-updates-testing-modular.repo.off) && echo 'exclude: fedora-updates-testing-modular' || echo 'exclude: fedora-updates-testing-modular → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_fedora-updates-testing-modular() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo.off /etc/yum.repos.d/fedora-updates-testing-modular.repo) && echo 'include: fedora-updates-testing-modular' || echo 'include: fedora-updates-testing-modular → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_fedora-updates-testing() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo.off) && echo 'exclude: fedora-updates-testing' || echo 'exclude: fedora-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_fedora-updates-testing() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo.off /etc/yum.repos.d/fedora-updates-testing.repo) && echo 'include: fedora-updates-testing' || echo 'include: fedora-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_gh-cli() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/gh-cli.repo /etc/yum.repos.d/gh-cli.repo.off) && echo 'exclude: gh-cli' || echo 'exclude: gh-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_gh-cli() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/gh-cli.repo.off /etc/yum.repos.d/gh-cli.repo) && echo 'include: gh-cli' || echo 'include: gh-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_google-chrome-beta() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo /etc/yum.repos.d/google-chrome-beta.repo.off) && echo 'exclude: google-chrome-beta' || echo 'exclude: google-chrome-beta → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_google-chrome-beta() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo.off /etc/yum.repos.d/google-chrome-beta.repo) && echo 'include: google-chrome-beta' || echo 'include: google-chrome-beta → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_google-chrome() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome.repo /etc/yum.repos.d/google-chrome.repo.off) && echo 'exclude: google-chrome' || echo 'exclude: google-chrome → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_google-chrome() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome.repo.off /etc/yum.repos.d/google-chrome.repo) && echo 'include: google-chrome' || echo 'include: google-chrome → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_google-chrome-unstable() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo /etc/yum.repos.d/google-chrome-unstable.repo.off) && echo 'exclude: google-chrome-unstable' || echo 'exclude: google-chrome-unstable → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_google-chrome-unstable() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo.off /etc/yum.repos.d/google-chrome-unstable.repo) && echo 'include: google-chrome-unstable' || echo 'include: google-chrome-unstable → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_microsoft-insiders-fast() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo /etc/yum.repos.d/microsoft-insiders-fast.repo.off) && echo 'exclude: microsoft-insiders-fast' || echo 'exclude: microsoft-insiders-fast → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_microsoft-insiders-fast() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo.off /etc/yum.repos.d/microsoft-insiders-fast.repo) && echo 'include: microsoft-insiders-fast' || echo 'include: microsoft-insiders-fast → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_microsoft-insiders-slow() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo /etc/yum.repos.d/microsoft-insiders-slow.repo.off) && echo 'exclude: microsoft-insiders-slow' || echo 'exclude: microsoft-insiders-slow → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_microsoft-insiders-slow() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo.off /etc/yum.repos.d/microsoft-insiders-slow.repo) && echo 'include: microsoft-insiders-slow' || echo 'include: microsoft-insiders-slow → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_microsoft-prod() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-prod.repo /etc/yum.repos.d/microsoft-prod.repo.off) && echo 'exclude: microsoft-prod' || echo 'exclude: microsoft-prod → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_microsoft-prod() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-prod.repo.off /etc/yum.repos.d/microsoft-prod.repo) && echo 'include: microsoft-prod' || echo 'include: microsoft-prod → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_mongodb-org-4-4() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo.off) && echo 'exclude: mongodb-org-4.4' || echo 'exclude: mongodb-org-4.4 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_mongodb-org-4-4() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo.off /etc/yum.repos.d/mongodb-org-4.4.repo) && echo 'include: mongodb-org-4.4' || echo 'include: mongodb-org-4.4 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-free-updates-testing() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off) && echo 'exclude: rpmfusion-free-updates-testing' || echo 'exclude: rpmfusion-free-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-free-updates-testing() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-free-updates-testing.repo) && echo 'include: rpmfusion-free-updates-testing' || echo 'include: rpmfusion-free-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-nonfree-nvidia-driver() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo.off) && echo 'exclude: rpmfusion-nonfree-nvidia-driver' || echo 'exclude: rpmfusion-nonfree-nvidia-driver → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-nonfree-nvidia-driver() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo.off /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo) && echo 'include: rpmfusion-nonfree-nvidia-driver' || echo 'include: rpmfusion-nonfree-nvidia-driver → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-nonfree-steam() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-steam.repo /etc/yum.repos.d/rpmfusion-nonfree-steam.repo.off) && echo 'exclude: rpmfusion-nonfree-steam' || echo 'exclude: rpmfusion-nonfree-steam → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-nonfree-steam() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-steam.repo.off /etc/yum.repos.d/rpmfusion-nonfree-steam.repo) && echo 'include: rpmfusion-nonfree-steam' || echo 'include: rpmfusion-nonfree-steam → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-nonfree-updates-testing() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off) && echo 'exclude: rpmfusion-nonfree-updates-testing' || echo 'exclude: rpmfusion-nonfree-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-nonfree-updates-testing() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo) && echo 'include: rpmfusion-nonfree-updates-testing' || echo 'include: rpmfusion-nonfree-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_teamviewer() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/teamviewer.repo /etc/yum.repos.d/teamviewer.repo.off) && echo 'exclude: teamviewer' || echo 'exclude: teamviewer → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_teamviewer() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/teamviewer.repo.off /etc/yum.repos.d/teamviewer.repo) && echo 'include: teamviewer' || echo 'include: teamviewer → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_vscode() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/vscode.repo /etc/yum.repos.d/vscode.repo.off) && echo 'exclude: vscode' || echo 'exclude: vscode → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_vscode() {
  # source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/vscode.repo.off /etc/yum.repos.d/vscode.repo) && echo 'include: vscode' || echo 'include: vscode → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}

function include_repos_() {
  # (include_azure-cli) 2>/dev/null
  (include_bintray-ookla-rhel) 2>/dev/null
  (include__copr_phracek-PyCharm) 2>/dev/null
  (include_docker-ce) 2>/dev/null
  (include_fedora-cisco-openh264) 2>/dev/null
  (include_fedora-updates-testing-modular) 2>/dev/null
  (include_fedora-updates-testing) 2>/dev/null
  (include_gh-cli) 2>/dev/null
  (include_google-chrome-beta) 2>/dev/null
  (include_google-chrome) 2>/dev/null
  (include_google-chrome-unstable) 2>/dev/null
  (include_microsoft-insiders-fast) 2>/dev/null
  (include_microsoft-insiders-slow) 2>/dev/null
  (include_microsoft-prod) 2>/dev/null
  (include_mongodb-org-4-4) 2>/dev/null
  (include_rpmfusion-free-updates-testing) 2>/dev/null
  (include_rpmfusion-nonfree-nvidia-driver) 2>/dev/null
  (include_rpmfusion-nonfree-steam) 2>/dev/null
  (include_rpmfusion-nonfree-updates-testing) 2>/dev/null
  (include_teamviewer) 2>/dev/null
  (include_vscode) 2>/dev/null
}

function exclude_repos_() {
  # (exclude_azure-cli) 2>/dev/null
  (exclude_bintray-ookla-rhel) 2>/dev/null
  (exclude__copr_phracek-PyCharm) 2>/dev/null
  (exclude_docker-ce) 2>/dev/null
  (exclude_fedora-cisco-openh264) 2>/dev/null
  (exclude_fedora-updates-testing-modular) 2>/dev/null
  (exclude_fedora-updates-testing) 2>/dev/null
  (exclude_gh-cli) 2>/dev/null
  (exclude_google-chrome-beta) 2>/dev/null
  (exclude_google-chrome) 2>/dev/null
  (exclude_google-chrome-unstable) 2>/dev/null
  (exclude_microsoft-insiders-fast) 2>/dev/null
  (exclude_microsoft-insiders-slow) 2>/dev/null
  (exclude_microsoft-prod) 2>/dev/null
  (exclude_mongodb-org-4-4) 2>/dev/null
  (exclude_rpmfusion-free-updates-testing) 2>/dev/null
  (exclude_rpmfusion-nonfree-nvidia-driver) 2>/dev/null
  (exclude_rpmfusion-nonfree-steam) 2>/dev/null
  (exclude_rpmfusion-nonfree-updates-testing) 2>/dev/null
  (exclude_teamviewer) 2>/dev/null
  (exclude_vscode) 2>/dev/null
}

function include_repos_minimal() {
  (include_azure-cli) 2>/dev/null
  (include_bintray-ookla-rhel) 2>/dev/null
  # (include__copr_phracek-PyCharm) 2>/dev/null
  # (include_docker-ce) 2>/dev/null
  # (include_fedora-cisco-openh264) 2>/dev/null
  # (include_fedora-updates-testing-modular) 2>/dev/null
  # (include_fedora-updates-testing) 2>/dev/null
  (include_gh-cli) 2>/dev/null
  # (include_google-chrome-beta) 2>/dev/null
  (include_google-chrome) 2>/dev/null
  # (include_google-chrome-unstable) 2>/dev/null
  (include_microsoft-insiders-fast) 2>/dev/null
  (include_microsoft-insiders-slow) 2>/dev/null
  (include_microsoft-prod) 2>/dev/null
  (include_mongodb-org-4-4) 2>/dev/null
  # (include_rpmfusion-free-updates-testing) 2>/dev/null
  (include_rpmfusion-nonfree-nvidia-driver) 2>/dev/null
  (include_rpmfusion-nonfree-steam) 2>/dev/null
  # (include_rpmfusion-nonfree-updates-testing) 2>/dev/null
  (include_teamviewer) 2>/dev/null
  (include_vscode) 2>/dev/null
}

# ❯ la /etc/yum.repos.d/*.repo*
# /etc/yum.repos.d/azure-cli.repo
# /etc/yum.repos.d/bintray-ookla-rhel.repo
# /etc/yum.repos.d/_copr_phracek-PyCharm.repo
# /etc/yum.repos.d/cuda-fedora32.repo-off
# /etc/yum.repos.d/cuda-fedora34.repo-err
# /etc/yum.repos.d/cuda-rhel8.repo-off
# /etc/yum.repos.d/docker-ce.repo
# /etc/yum.repos.d/fedora-cisco-openh264.repo
# /etc/yum.repos.d/fedora-modular.repo
# /etc/yum.repos.d/fedora.repo
# /etc/yum.repos.d/fedora-updates-modular.repo
# /etc/yum.repos.d/fedora-updates.repo
# /etc/yum.repos.d/fedora-updates-testing-modular.repo-off
# /etc/yum.repos.d/fedora-updates-testing.repo-off
# /etc/yum.repos.d/gh-cli.repo
# /etc/yum.repos.d/google-chrome-beta.repo
# /etc/yum.repos.d/google-chrome.repo
# /etc/yum.repos.d/google-chrome.repo.rpmnew
# /etc/yum.repos.d/google-chrome-unstable.repo
# /etc/yum.repos.d/microsoft-insiders-fast.repo
# /etc/yum.repos.d/microsoft-insiders-slow.repo
# /etc/yum.repos.d/microsoft-prod.repo
# /etc/yum.repos.d/mongodb-org-4.4.repo
# /etc/yum.repos.d/rpmfusion-free.repo
# /etc/yum.repos.d/rpmfusion-free-updates.repo
# /etc/yum.repos.d/rpmfusion-free-updates-testing.repo-off
# /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo
# /etc/yum.repos.d/rpmfusion-nonfree.repo
# /etc/yum.repos.d/rpmfusion-nonfree-steam.repo
# /etc/yum.repos.d/rpmfusion-nonfree-updates.repo
# /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo-off
# /etc/yum.repos.d/teamviewer.repo
# /etc/yum.repos.d/teamviewer.repo.save
# /etc/yum.repos.d/vscode.repo

function testing_repos_off() {
  sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo /etc/yum.repos.d/fedora-updates-testing-modular.repo-off
  sudo mv /etc/yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo-off
  sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo-off
  sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo-off
}
function testing_repos_on() {
  sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo-off /etc/yum.repos.d/fedora-updates-testing-modular.repo
  sudo mv /etc/yum.repos.d/fedora-updates-testing.repo-off /etc/yum.repos.d/fedora-updates-testing.repo
  sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo-off /etc/yum.repos.d/rpmfusion-free-updates-testing.repo
  sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo-off /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo
}

# sudo mv fedora-updates-testing-modular.repo  fedora-updates-testing-modular.repo-off
# sudo mv fedora-updates-testing.repo  fedora-updates-testing.repo-off
# sudo mv rpmfusion-free-updates-testing.repo  rpmfusion-free-updates-testing.repo-off
# sudo mv rpmfusion-nonfree-updates-testing.repo  rpmfusion-nonfree-updates-testing.repo-off

# ---- 11800-plasma_shell.sh ----
#!/bin/bash

alias restart-panel="(killall plasmashell && plasmashell & disown)"

# ---- 11811-docked.sh ----
#!/bin/bash

alias dps='docker ps'
alias dpsa='docker ps --all'
alias dpsa_stopped='docker ps -a --filter "status=exited"'
alias dpsa_running='docker ps -a --filter "status=running"'

alias dmi='docker images'
alias dimg='docker images'
alias dmia='docker images --all'
alias dimga='docker images --all'
alias drun='docker run'
alias drma='((docker rm $(docker ps -qa))2>/dev/null|| exit 5)'
alias drmaf='((docker rm --force $(docker ps -qa))2>/dev/null|| exit 5)'
alias drmia='((docker rmi $(docker images -qa))2>/dev/null|| exit 5)'
alias drmiaf='((docker rmi --force $(docker images -qa))2>/dev/null|| exit 5)'
alias inspectbridge='docker network inspect bridge'

alias dstart='docker start'
alias dstop='docker stop'

alias startdckr='sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

alias dspxs='sudo docker run -it -v /home/luxcium/spx-data:/data --rm msftspeech/spx synthesize'

alias dckr_start='sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'
alias dckr_stop='sudo systemctl disable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec'

alias dckr_ls_redis='docker container ls --filter label=redis'
alias dckr_killall_redis='docker rm --force $(docker container ls --filter label=redis --quiet)'

alias dckr_up='enable_containerd up;docker container ls --all --size'
alias dckr_down='enable_containerd down'
alias dckr_restart='enable_containerd restart;docker container ls --all --size'

alias dckr_images='docker images'
alias images='docker images'
alias dckr_rm_all_images='docker rmi $(docker images -aq) 2> /dev/null'
alias dckr_rm_all_images_f='docker rmi --force $(docker images -aq) 2> /dev/null'
alias dckr_ps='docker ps -a'
alias dckr_rm_all='docker rm $(docker ps -aq) 2> /dev/null'
alias dckr_rm_all_f='docker rm --force $(docker ps -aq) 2> /dev/null'
alias dckr_helloworld='docker run hello-world'

#+ // #### # REDIS # ####################################################### // +#
# export REDIS_DATA"${HOME}/WSD_250/redis/data"
# REDIS_DATA redislabs/rejson:latest
function dckr_redis_start_6381() {
  dckr_start
  (docker stop Redis_Main_6381 && docker rm Redis_Main_6381) 2>/dev/null
  docker container ls --no-trunc --filter id="$(docker run -d -p 6381:6379 -v "${REDIS_DATA}":/data --name=Redis_Main_6381 -l=redis redis:alpine redis-server --save 60 1 --loglevel warning 2>/dev/null)"
  ([[ $(redis-cli -p 6381 PING) == "PONG" ]] && (
    play -qv 0.75 ${AHMYZSH}/multimedia/sounds/dactylo-cloche.mp3 &
    (
      sleep 0.1875
      play -qv 0.50 ${AHMYZSH}/multimedia/sounds/pop-up.mp3
    ) &
  )) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
  # docker ps --no-trunc
}

function dckr_redis_stop_6381() {
  (
    docker stop Redis_Main_6381 2>/dev/null
    docker rm Redis_Main_6381 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6381() {
  ([[ $(redis-cli -p 6381 PING PONG) == "PONG" ]] && popsound) || notconnectsound
  return
}
# /home/luxcium/WSD_250/redis/6382/data/ // /home/luxcium/WSD_250/redis/6382/data/

function dckr_redis_start_6382() {
  echo path using REDIS_6382:"$REDIS_6382"

  dckr_start

  (docker stop Redis_JSON_6382 && docker rm Redis_JSON_6382) 2>/dev/null

  (docker container ls \
    --no-trunc \
    --filter id="$(docker run -d -p 6382:6379 \
      -v "${REDIS_6382}":/data \
      --name=Redis_JSON_6382 \
      -l=redis \
      redislabs/rejson:latest \
      redis-server \
      --save 60 1 \
      --loglevel debug \
      --loadmodule /usr/lib/redis/modules/rejson.so \
      --loadmodule /usr/lib/redis/modules/redisearch.so \
      2>/dev/null)" && [[ $(redis-cli -p 6382 PING) == "PONG" ]] && (
    play -qv 0.75 "${MY_SOUNDS}"/dactylo-cloche.mp3 &
    (
      sleep 0.1875
      play -qv 0.50 "${MY_SOUNDS}"/pop-up.mp3
    ) &
  )) || (play -qv 1 "${MY_SOUNDS}"/Oxygen-Im-Cant-Connect.ogg)
}
# function dckr_redis_start_6382() {
#   # // redislabs/rejson:latest
#   dckr_start
#   docker rm Redis_JSON_6382 2>/dev/null
#   docker container ls --filter id=$(docker run -d -p 6382:6379 --name=Redis_JSON_6382 -l=redis redis 2>/dev/null)
#   [[ $(redis-cli -p 6382 PING) == "PONG" ]] && popsound || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
# }

function dckr_redis_stop_6382() {
  (
    docker stop Redis_JSON_6382
    docker rm Redis_JSON_6382
  ) # 2>/dev/null
}

function isRedis_6382() {
  ([[ $(redis-cli -p 6382 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

alias notconnectsound="(play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)"
alias popsound="(play -qv 0.75 ${AHMYZSH}/multimedia/sounds/dactylo-cloche.mp3 & sleep 0.375;play -qv 0.50 ${AHMYZSH}/multimedia/sounds/pop-up.mp3 &)"
#
# alias play_Im-Cant-Connect='(play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)'
#

function dckr_redis_start_6384() {
  dckr_start
  docker rm Redis_Main_6384 2>/dev/null
  docker container ls --filter id="$(docker run -d -p 6384:6379 --name=Redis_Main_6384 -l=redis redis 2>/dev/null)"
  ([[ $(redis-cli -p 6384 PING) == "PONG" ]] && popsound) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
}

function dckr_redis_stop_6384() {
  (
    docker stop Redis_Main_6384 2>/dev/null
    docker rm Redis_Main_6384 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6384() {
  ([[ $(redis-cli -p 6384 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

function dckr_redis_start_6383() {
  dckr_start
  docker rm Redis_Main_6383 2>/dev/null
  docker container ls --filter id="$(docker run -d -p 6383:6379 --name=Redis_Main_6383 -l=redis redis 2>/dev/null)"
  ([[ $(redis-cli -p 6383 PING) == "PONG" ]] && popsound) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
}

function dckr_redis_stop_6383() {
  (
    docker stop Redis_Main_6383 2>/dev/null
    docker rm Redis_Main_6383 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6383() {
  ([[ $(redis-cli -p 6383 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

function dckr_redis_start_6380() {
  dckr_start
  docker rm Redis_Main_6380 2>/dev/null
  docker container ls --filter id="$(docker run -d -p 6380:6379 --name=Redis_Main_6380 -l=redis redis 2>/dev/null)"
  ([[ $(redis-cli -p 6380 PING) == "PONG" ]] && popsound) || (play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)
}

function dckr_redis_stop_6380() {
  (
    docker stop Redis_Main_6380 2>/dev/null
    docker rm Redis_Main_6380 2>/dev/null
  ) # 2>/dev/null
}

function isRedis_6380() {
  ([[ $(redis-cli -p 6380 PING) == "PONG" ]] && popsound) || notconnectsound
  return
}

function dckr_redis_start_all() {
  (
    (dckr_redis_start_6380) 2>/dev/null
    (dckr_redis_start_6381) 2>/dev/null
    (dckr_redis_start_6382) 2>/dev/null
    (dckr_redis_start_6383) 2>/dev/null
    (dckr_redis_start_6384) 2>/dev/null
    exit 0
  )

}

function dckr_redis_stop_all() {
  (
    (dckr_redis_stop_6380) 2>/dev/null
    (dckr_redis_stop_6381) 2>/dev/null
    (dckr_redis_stop_6382) 2>/dev/null
    (dckr_redis_stop_6383) 2>/dev/null
    (dckr_redis_stop_6384) 2>/dev/null
    exit 0
  )

}

# function dckr_redis_6380() {
#   dckr_start
#   docker container ls --filter id=$(docker run -d -p 6380:6379 --name=Redis_Main_6380 -l=redis redis)
# }

# function dckr_redis_random() {
#   dckr_start
#   docker container ls --filter id=$(docker run -d -P -l=redis redis)
# }

alias dckr_ls_redis='docker container ls --filter label=redis'
alias dckr_killall_redis='docker rm --force $(docker container ls --filter label=redis --quiet)'

#+ // #### # REDIS # ####################################################### // +#

# ---- 11812-redis.sh ----
#!/bin/bash

# Total lines: 256

function redisping() {
  redis-cli -p "$1" ping "PONG ${1}" 2>/dev/null
}

alias red_cli='redis-cli'
alias red_all='redis-cli --raw keys \*'
alias smembers='redis-cli smembers'
alias hgetall='redis-cli hgetall'
alias hexist='redis-cli hexist'
alias exists='redis-cli exists'

# !!
#% <option value="hyperloglog">
################################################################################
alias pfadd='redis-cli PFADD'
alias pfcount='redis-cli PFCOUNT'
alias pfmerge='redis-cli PFMERGE'

# !!
#% <option value="hyperloglog">
################################################################################
alias red_PFADD='redis-cli PFADD'
alias red_PFCOUNT='redis-cli PFCOUNT'
alias red_PFMERGE='redis-cli PFMERGE'

# !!
#% <option value="keys">
################################################################################
alias red_COPY='redis-cli COPY'
alias red_DEL='redis-cli DEL'
alias red_DUMP='redis-cli DUMP'
alias red_EXISTS='redis-cli EXISTS'
alias red_EXPIRE='redis-cli EXPIRE'
alias red_EXPIREAT='redis-cli EXPIREAT'
alias red_KEYS='redis-cli KEYS'
alias red_MIGRATE='redis-cli MIGRATE'
alias red_MOVE='redis-cli MOVE'
alias red_OBJECT='redis-cli OBJECT'
alias red_PERSIST='redis-cli PERSIST'
alias red_PEXPIRE='redis-cli PEXPIRE'
alias red_PEXPIREAT='redis-cli PEXPIREAT'
alias red_PTTL='redis-cli PTTL'
alias red_RANDOMKEY='redis-cli RANDOMKEY'
alias red_RENAME='redis-cli RENAME'
alias red_RENAMENX='redis-cli RENAMENX'
alias red_RESTORE='redis-cli RESTORE'
alias red_SCAN='redis-cli SCAN'
alias red_SORT='redis-cli SORT'
alias red_TOUCH='redis-cli TOUCH'
alias red_TTL='redis-cli TTL'
alias red_TYPE='redis-cli TYPE'
alias red_UNLINK='redis-cli UNLINK'
alias red_WAIT='redis-cli WAIT'

# !!
#% <option value="hash">
################################################################################
alias red_HDEL='redis-cli HDEL'
alias red_HEXISTS='redis-cli HEXISTS'
alias red_HGET='redis-cli HGET'
alias red_HGETALL='redis-cli HGETALL'
alias red_HINCRBY='redis-cli HINCRBY'
alias red_HINCRBYFLOAT='redis-cli HINCRBYFLOAT'
alias red_HKEYS='redis-cli HKEYS'
alias red_HLEN='redis-cli HLEN'
alias red_HMGET='redis-cli HMGET'
alias red_HMSET='redis-cli HMSET'
alias red_HSCAN='redis-cli HSCAN'
alias red_HSET='redis-cli HSET'
alias red_HSETNX='redis-cli HSETNX'
alias red_HSTRLEN='redis-cli HSTRLEN'
alias red_HVALS='redis-cli HVALS'

# !!
#% <option value="list">
################################################################################
alias red_BLMOVE='redis-cli BLMOVE'
alias red_BLPOP='redis-cli BLPOP'
alias red_BRPOP='redis-cli BRPOP'
alias red_BRPOPLPUSH='redis-cli BRPOPLPUSH'
alias red_LINDEX='redis-cli LINDEX'
alias red_LINSERT='redis-cli LINSERT'
alias red_LLEN='redis-cli LLEN'
alias red_LMOVE='redis-cli LMOVE'
alias red_LPOP='redis-cli LPOP'
alias red_LPOS='redis-cli LPOS'
alias red_LPUSH='redis-cli LPUSH'
alias red_LPUSHX='redis-cli LPUSHX'
alias red_LRANGE='redis-cli LRANGE'
alias red_LREM='redis-cli LREM'
alias red_LSET='redis-cli LSET'
alias red_LTRIM='redis-cli LTRIM'
alias red_RPOP='redis-cli RPOP'
alias red_RPOPLPUSH='redis-cli RPOPLPUSH'
alias red_RPUSH='redis-cli RPUSH'
alias red_RPUSHX='redis-cli RPUSHX'

# !!
#% <option value="set">
################################################################################
alias red_SADD='redis-cli SADD'
alias red_SCARD='redis-cli SCARD'
alias red_SDIFF='redis-cli SDIFF'
alias red_SDIFFSTORE='redis-cli SDIFFSTORE'
alias red_SINTER='redis-cli SINTER'
alias red_SINTERSTORE='redis-cli SINTERSTORE'
alias red_SISMEMBER='redis-cli SISMEMBER'
alias red_SMEMBERS='redis-cli SMEMBERS'
alias red_SMISMEMBER='redis-cli SMISMEMBER'
alias red_SMOVE='redis-cli SMOVE'
alias red_SPOP='redis-cli SPOP'
alias red_SRANDMEMBER='redis-cli SRANDMEMBER'
alias red_SREM='redis-cli SREM'
alias red_SSCAN='redis-cli SSCAN'
alias red_SUNION='redis-cli SUNION'
alias red_SUNIONSTORE='redis-cli SUNIONSTORE'

# !!
#% <option value="sorted_set">
################################################################################
alias red_BZPOPMAX='redis-cli BZPOPMAX'
alias red_BZPOPMIN='redis-cli BZPOPMIN'
alias red_ZADD='redis-cli ZADD'
alias red_ZCARD='redis-cli ZCARD'
alias red_ZCOUNT='redis-cli ZCOUNT'
alias red_ZDIFF='redis-cli ZDIFF'
alias red_ZDIFFSTORE='redis-cli ZDIFFSTORE'
alias red_ZINCRBY='redis-cli ZINCRBY'
alias red_ZINTER='redis-cli ZINTER'
alias red_ZINTERSTORE='redis-cli ZINTERSTORE'
alias red_ZLEXCOUNT='redis-cli ZLEXCOUNT'
alias red_ZMSCORE='redis-cli ZMSCORE'
alias red_ZPOPMAX='redis-cli ZPOPMAX'
alias red_ZPOPMIN='redis-cli ZPOPMIN'
alias red_ZRANGE='redis-cli ZRANGE'
alias red_ZRANGEBYLEX='redis-cli ZRANGEBYLEX'
alias red_ZRANGEBYSCORE='redis-cli ZRANGEBYSCORE'
alias red_ZRANGESTORE='redis-cli ZRANGESTORE'
alias red_ZRANK='redis-cli ZRANK'
alias red_ZREM='redis-cli ZREM'
alias red_ZREMRANGEBYLEX='redis-cli ZREMRANGEBYLEX'
alias red_ZREMRANGEBYRANK='redis-cli ZREMRANGEBYRANK'
alias red_ZREMRANGEBYSCORE='redis-cli ZREMRANGEBYSCORE'
alias red_ZREVRANGE='redis-cli ZREVRANGE'
alias red_ZREVRANGEBYLEX='redis-cli ZREVRANGEBYLEX'
alias red_ZREVRANGEBYSCORE='redis-cli ZREVRANGEBYSCORE'
alias red_ZREVRANK='redis-cli ZREVRANK'
alias red_ZSCAN='redis-cli ZSCAN'
alias red_ZSCORE='redis-cli ZSCORE'
alias red_ZUNION='redis-cli ZUNION'
alias red_ZUNIONSTORE='redis-cli ZUNIONSTORE'

# !!
#% <option value="stream">
################################################################################
alias red_XACK='redis-cli XACK'
alias red_XADD='redis-cli XADD'
alias red_XAUTOCLAIM='redis-cli XAUTOCLAIM'
alias red_XCLAIM='redis-cli XCLAIM'
alias red_XDEL='redis-cli XDEL'
alias red_XGROUP='redis-cli XGROUP'
alias red_XINFO='redis-cli XINFO'
alias red_XLEN='redis-cli XLEN'
alias red_XPENDING='redis-cli XPENDING'
alias red_XRANGE='redis-cli XRANGE'
alias red_XREAD='redis-cli XREAD'
alias red_XREADGROUP='redis-cli XREADGROUP'
alias red_XREVRANGE='redis-cli XREVRANGE'
alias red_XTRIM='redis-cli XTRIM'

# !!
#% <option value="string">
################################################################################
alias red_APPEND='redis-cli APPEND'
alias red_BITCOUNT='redis-cli BITCOUNT'
alias red_BITFIELD='redis-cli BITFIELD'
alias red_BITOP='redis-cli BITOP'
alias red_BITPOS='redis-cli BITPOS'
alias red_DECR='redis-cli DECR'
alias red_DECRBY='redis-cli DECRBY'
alias red_GET='redis-cli GET'
alias red_GETBIT='redis-cli GETBIT'
alias red_GETRANGE='redis-cli GETRANGE'
alias red_GETSET='redis-cli GETSET'
alias red_INCR='redis-cli INCR'
alias red_INCRBY='redis-cli INCRBY'
alias red_INCRBYFLOAT='redis-cli INCRBYFLOAT'
alias red_MGET='redis-cli MGET'
alias red_MSET='redis-cli MSET'
alias red_MSETNX='redis-cli MSETNX'
alias red_PSETEX='redis-cli PSETEX'
alias red_SET='redis-cli SET'
alias red_SETBIT='redis-cli SETBIT'
alias red_SETEX='redis-cli SETEX'
alias red_SETNX='redis-cli SETNX'
alias red_SETRANGE='redis-cli SETRANGE'
alias red_STRALGO='redis-cli STRALGO'
alias red_STRLEN='redis-cli STRLEN'

# !!
#% <option value="pub/sub">
################################################################################
alias red_PSUBSCRIBE='redis-cli PSUBSCRIBE'
alias red_PUBLISH='redis-cli PUBLISH'
alias red_PUBSUB='redis-cli PUBSUB'
alias red_PUNSUBSCRIBE='redis-cli PUNSUBSCRIBE'
alias red_SUBSCRIBE='redis-cli SUBSCRIBE'
alias red_UNSUBSCRIBE='redis-cli UNSUBSCRIBE'

# !!
#% <option value="geo">
################################################################################
alias red_GEOADD='redis-cli GEOADD'
alias red_GEODIST='redis-cli GEODIST'
alias red_GEOHASH='redis-cli GEOHASH'
alias red_GEOPOS='redis-cli GEOPOS'
alias red_GEORADIUS='redis-cli GEORADIUS'
alias red_GEORADIUSBYMEMBER='redis-cli GEORADIUSBYMEMBER'
alias red_GEOSEARCH='redis-cli GEOSEARCH'
alias red_GEOSEARCHSTORE='redis-cli GEOSEARCHSTORE'

# !!
#% <option value="server">
################################################################################
alias red_CAT='redis-cli ACL CAT'
alias red_DELUSER='redis-cli ACL DELUSER'
alias red_GENPASS='redis-cli ACL GENPASS'
alias red_GETUSER='redis-cli ACL GETUSER'
alias red_HELP='redis-cli ACL HELP'
alias red_LIST='redis-cli ACL LIST'
alias red_LOAD='redis-cli ACL LOAD'
alias red_LOG='redis-cli ACL LOG'
alias red_SAVE='redis-cli ACL SAVE'
alias red_SETUSER='redis-cli ACL SETUSER'
alias red_USERS='redis-cli ACL USERS'
alias red_WHOAMI='redis-cli ACL WHOAMI'
alias red_BGREWRITEAOF='redis-cli BGREWRITEAOF'
alias red_BGSAVE='redis-cli BGSAVE'
alias red_COMMAND='redis-cli COMMAND'
alias red_COMMAND_COUNT='redis-cli COMMAND COUNT'
alias red_COMMAND_GETKEYS='redis-cli COMMAND GETKEYS'
alias red_COMMAND_INFO='redis-cli COMMAND INFO'
alias red_CONFIG_GET='redis-cli CONFIG GET'
alias red_CONFIG_RESETSTAT='redis-cli CONFIG RESETSTAT'
alias red_CONFIG_REWRITE='redis-cli CONFIG REWRITE'
alias red_CONFIG_SET='redis-cli CONFIG SET'
alias red_DBSIZE='redis-cli DBSIZE'
alias red_DEBUG_OBJECT='redis-cli DEBUG OBJECT'
alias red_DEBUG_SEGFAULT='redis-cli DEBUG SEGFAULT'
alias red_FLUSHALL='redis-cli FLUSHALL'
alias red_FLUSHDB='redis-cli FLUSHDB'
alias red_INFO='redis-cli INFO'
alias red_LASTSAVE='redis-cli LASTSAVE'
alias red_LATENCY_DOCTOR='redis-cli LATENCY DOCTOR'
alias red_LATENCY_GRAPH='redis-cli LATENCY GRAPH'
alias red_LATENCY_HELP='redis-cli LATENCY HELP'
alias red_LATENCY_HISTORY='redis-cli LATENCY HISTORY'
alias red_LATENCY_LATEST='redis-cli LATENCY LATEST'
alias red_LATENCY_RESET='redis-cli LATENCY RESET'
alias red_LOLWUT='redis-cli LOLWUT'
alias red_MEMORY_DOCTOR='redis-cli MEMORY DOCTOR'
alias red_MEMORY_HELP='redis-cli MEMORY HELP'
alias red_MEMORY_MALLOC-STATS='redis-cli MEMORY MALLOC-STATS'
alias red_MEMORY_PURGE='redis-cli MEMORY PURGE'
alias red_MEMORY_STATS='redis-cli MEMORY STATS'
alias red_MEMORY_USAGE='redis-cli MEMORY USAGE'
alias red_MODULE_LIST='redis-cli MODULE LIST'
alias red_MODULE_LOAD='redis-cli MODULE LOAD'
alias red_MODULE_UNLOAD='redis-cli MODULE UNLOAD'
alias red_MONITOR='redis-cli MONITOR'
alias red_PSYNC='redis-cli PSYNC'
alias red_REPLICAOF='redis-cli REPLICAOF'
alias red_ROLE='redis-cli ROLE'
alias red_SAVE='redis-cli SAVE'
alias red_SHUTDOWN='redis-cli SHUTDOWN'
alias red_SLAVEOF='redis-cli SLAVEOF'
alias red_SLOWLOG='redis-cli SLOWLOG'
alias red_SWAPDB='redis-cli SWAPDB'
alias red_SYNC='redis-cli SYNC'
alias red_TIME='redis-cli TIME'

# !!
#% <option value="connection">
################################################################################
alias red_AUTH='redis-cli AUTH'
alias red_CLIENT_CACHING='redis-cli CLIENT CACHING'
alias red_CLIENT_GETNAME='redis-cli CLIENT GETNAME'
alias red_CLIENT_GETREDIR='redis-cli CLIENT GETREDIR'
alias red_CLIENT_ID='redis-cli CLIENT ID'
alias red_CLIENT_INFO='redis-cli CLIENT INFO'
alias red_CLIENT_KILL='redis-cli CLIENT KILL'
alias red_CLIENT_LIST='redis-cli CLIENT LIST'
alias red_CLIENT_PAUSE='redis-cli CLIENT PAUSE'
alias red_CLIENT_REPLY='redis-cli CLIENT REPLY'
alias red_CLIENT_SETNAME='redis-cli CLIENT SETNAME'
alias red_CLIENT_TRACKING='redis-cli CLIENT TRACKING'
alias red_CLIENT_TRACKINGINFO='redis-cli CLIENT TRACKINGINFO'
alias red_CLIENT_UNBLOCK='redis-cli CLIENT UNBLOCK'
alias red_CLIENT_UNPAUSE='redis-cli CLIENT UNPAUSE'
alias red_ECHO='redis-cli ECHO'
alias red_HELLO='redis-cli HELLO'
alias red_PING='redis-cli PING'
alias red_QUIT='redis-cli QUIT'
alias red_RESET='redis-cli RESET'
alias red_SELECT='redis-cli SELECT'

# !!
#% <option value="cluster">
################################################################################
alias red_CLSTR_ADDSLOTS='redis-cli CLUSTER ADDSLOTS'
alias red_CLSTR_BUMPEPOCH='redis-cli CLUSTER BUMPEPOCH'
alias red_CLSTR_COUNT-FAILURE-REPORTS='redis-cli CLUSTER COUNT-FAILURE-REPORTS'
alias red_CLSTR_COUNTKEYSINSLOT='redis-cli CLUSTER COUNTKEYSINSLOT'
alias red_CLSTR_DELSLOTS='redis-cli CLUSTER DELSLOTS'
alias red_CLSTR_FAILOVER='redis-cli CLUSTER FAILOVER'
alias red_CLSTR_FLUSHSLOTS='redis-cli CLUSTER FLUSHSLOTS'
alias red_CLSTR_FORGET='redis-cli CLUSTER FORGET'
alias red_CLSTR_GETKEYSINSLOT='redis-cli CLUSTER GETKEYSINSLOT'
alias red_CLSTR_INFO='redis-cli CLUSTER INFO'
alias red_CLSTR_KEYSLOT='redis-cli CLUSTER KEYSLOT'
alias red_CLSTR_MEET='redis-cli CLUSTER MEET'
alias red_CLSTR_MYID='redis-cli CLUSTER MYID'
alias red_CLSTR_NODES='redis-cli CLUSTER NODES'
alias red_CLSTR_REPLICAS='redis-cli CLUSTER REPLICAS'
alias red_CLSTR_REPLICATE='redis-cli CLUSTER REPLICATE'
alias red_CLSTR_RESET='redis-cli CLUSTER RESET'
alias red_CLSTR_SAVECONFIG='redis-cli CLUSTER SAVECONFIG'
alias red_CLSTR_SET-CONFIG-EPOCH='redis-cli CLUSTER SET-CONFIG-EPOCH'
alias red_CLSTR_SETSLOT='redis-cli CLUSTER SETSLOT'
alias red_CLSTR_SLAVES='redis-cli CLUSTER SLAVES'
alias red_CLSTR_SLOTS='redis-cli CLUSTER SLOTS'
alias red_READONLY='redis-cli READONLY'
alias red_READWRITE='redis-cli READWRITE'

# !!
#% <option value="transactions">
################################################################################
alias red_DISCARD='redis-cli DISCARD'
alias red_EXEC='redis-cli EXEC'
alias red_MULTI='redis-cli MULTI'
alias red_UNWATCH='redis-cli UNWATCH'
alias red_WATCH='redis-cli WATCH'

# !!
#% <option value="scripting">
################################################################################
alias red_EVAL='redis-cli EVAL'
alias red_EVALSHA='redis-cli EVALSHA'
alias red_SCRIPT_DEBUG='redis-cli SCRIPT DEBUG'
alias red_SCRIPT_EXISTS='redis-cli SCRIPT EXISTS'
alias red_SCRIPT_FLUSH='redis-cli SCRIPT FLUSH'
alias red_SCRIPT_KILL='redis-cli SCRIPT KILL'
alias red_SCRIPT_LOAD='redis-cli SCRIPT LOAD'

# ---- 12000-systemctl.sh ----
#!/bin/bash

alias reboot-multi="sudo systemctl set-default multi-user.target; /sbin/reboot"
alias reboot-graphical="sudo systemctl set-default graphical.target /sbin/reboot"

# alias systemctl-restart="sudo systemctl restart"

alias reboot-maintenance="sudo systemctl set-default multi-user.target; sudo systemctl reboot"
alias reboot-firmware-maintenance="sudo systemctl set-default multi-user.target; sudo systemctl reboot --firmware-setup"
alias reboot-firmware="sudo systemctl reboot --firmware-setup"
alias reboot-desktop="sudo systemctl set-default graphical.target; sudo systemctl reboot"
alias reboot-back="sudo systemctl set-default graphical.target; sudo systemctl reboot"

function systemctllistbefore() {
  # Show the units that are ordered after the specified unit.
  # In other words, recursively list units following the Before= dependency.
  echo "The units that are ordered after the specified unit."
  sudo systemctl list-dependencies "${@}" --no-pager --with-dependencies --before

}

alias redis_6379='sudo nice -n -15 ionice -c 1 -n 2 systemctl enable redis_6379 --now'
alias redis_6379_on='sudo nice -n -15 ionice -c 1 -n 2 systemctl enable redis_6379 --now'
alias redis_6379_off='sudo nice -n -15 ionice -c 1 -n 2 systemctl disable redis_6379 --now'

function systemctllistafter() {
  # Show the units that are ordered before the specified unit.
  # In other words, recursively list units following the After= dependency.
  echo "The units that are ordered before the specified unit."
  sudo systemctl list-dependencies "${@}" --no-pager --with-dependencies --after
}

function systemctllistboth() {
  # Show the units that are ordered before the specified unit.
  # In other words, recursively list units following the After= dependency.

  systemctllistbefore "${@}"
  echo ""
  echo "Recursively list units following the Before= dependency."
  echo ""
  echo "${@}"
  echo ""
  echo "Recursively list units following the After= dependency."
  echo ""
  systemctllistafter "${@}"
}

# alias [-p] [nom[=valeur] ...]
# La commande alias, sans argument ou avec l'option -p affiche sur la sortie
# standard la liste des alias actuellement définis, sous la forme nom=valeur.
# Lorsque l'on fournit des arguments, un alias est créé pour chaque nom auquel
# on a donné une valeur. Un espace final dans une valeur forcera la recherche
# d'alias dans le mot suivant lors de l'expansion de l'alias. Pour chacun des
# noms pour lesquels aucune valeur n'est fournie dans la liste d'arguments, le
# nom et la valeur de l'alias sont affichés. La commande Alias renvoie vrai,
# sauf si l'on indique un nom pour lequel aucun alias n'a été défini.

# ---- 12010-ALS-cht-sh.sh ----
#!/bin/bash

alias cht='env PAGER="/usr/bin/less -Ks" cht.sh --shell'

# ---- 12010-ALS-git.sh ----
#!/bin/bash

# Total lines: 256

##################
## GIT / GITHUB ##
##################

alias check='git checkout master'
alias add='git add -u --renormalize -v .'
alias addall='git add --all --renormalize -v .'
alias check-master='git checkout master'
alias check-luxcium='git checkout luxcium'
alias push='git push --tags --progress; git push --all --progress; fetch'
alias gs='git fetch -t;  git gc; git status'
alias pull='git pull --all -vt'
alias fetch='git fetch -t; git fetch --all -v -u'
alias lb='git branch -a -v --color | cat'
alias pullmaster='git checkout master; git pull -S --stat --progress --signoff --tags origin master'
alias tidy='git config --local user.name "Luxcium (Benjamin Vincent)"; git config --local user.email "luxcium@users.noreply.github.com"'
# alias firstcommit='git add .; git commit -am "Scientia is lux principium✨™"; git push -u origin master'
# alias pullnext='hub pull-request && hub merge' #git pull -S --stat --progress --signoff --squash --tags origin next/version'
# alias commitpullnext='git commit -am "merging from origin next/version into local master"; push'
# alias deletenext='git branch -d next/version; git push origin --delete next/version; lb'
# alias newnext='git checkout -b next/version; push; git branch --set-upstream-to=origin/next/version next/version'
# alias gitcleannext='rm -rf ./dist; rm -rf ./build; rm -f ./package.1.json; git add .; git commit -m "getting ready to build next/version"; push'
# alias nextcycle='push; pullmaster; pullnext; commitpullnext; deletenext; newnext; gitcleannext; lb'

# #region ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# https://github.com/ohmyzsh/ohmyzsh/blob/93c837fec8e9fe61509b9dff9e909e84f7ebe32d/plugins/git/git.plugin.zsh#L1-L293

# Copyright (c) 2009-2020 Robby Russell and [contributors](https://github.com/ohmyzsh/ohmyzsh/contributors)
# this is the work of 106+ contributors over the last 10 years I will customize it to suit the needs of my project
# I am greatfull for all the people making opensource and free software possible...
#
# Functions
#

# The name of the current branch
# Back-compatibility wrapper for when this function was defined here in
# the plugin, before being pulled in to core lib/git.zsh as git_current_branch()
# to fix the core -> git plugin dependency.
# function current_branch() {
#   git_current_branch
# }

# # Pretty log messages
# function _git_log_prettily() {
#   if ! [ -z $1 ]; then
#     git log --pretty=$1
#   fi
# }
#- ########## compdef _git _git_log_prettily=git-log

# # Warn if the current branch is a WIP
# function work_in_progress() {
#   if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
#     echo "WIP!!"
#   fi
# }

# # Check if main exists and use instead of master
# function git_main_branch() {
#   if [[ -n "$(git branch --list main)" ]]; then
#     echo main
#   else
#     echo master
#   fi
# }

#
# Aliases
# (sorted alphabetically)
#

alias g='git'

alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gau='git add --update'
alias gav='git add --verbose'
alias gap='git apply'
alias gapt='git apply --3way'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbda='git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbD='git branch -D'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recurse-submodules'
alias gclean='git clean -id'
alias gpristine='git reset --hard && git clean -dffx'
alias gcm='git checkout $(git_main_branch)'
alias gcd='git checkout develop'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'

alias gd='git diff'
alias gdca='git diff --cached'
alias gdcw='git diff --cached --word-diff'
alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
alias gds='git diff --staged'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'

# function gdnolock() {
#   git diff "$@" ":(exclude)package-lock.json" ":(exclude)*.lock"
# }
#- ########## compdef _git gdnolock=git-diff

# # function gdv() { git diff -w "$@" | view - }
#- ########## compdef _git gdv=git-diff

alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'

alias gfg='git ls-files | grep'

alias gg='git gui citool'
alias gga='git gui citool --amend'

# function ggf() {
#   [[ "$#" != 1 ]] && local b="$(git_current_branch)"
#   git push --force origin "${b:=$1}"
# }
# ########## compdef _git ggf=git-checkout
# function ggfl() {
#   [[ "$#" != 1 ]] && local b="$(git_current_branch)"
#   git push --force-with-lease origin "${b:=$1}"
# }
# ########## compdef _git ggfl=git-checkout

# function ggl() {
#   if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
#     git pull origin "${*}"
#   else
#     [[ "$#" == 0 ]] && local b="$(git_current_branch)"
#     git pull origin "${b:=$1}"
#   fi
# }
# ########## compdef _git ggl=git-checkout

# function ggp() {
#   if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
#     git push origin "${*}"
#   else
#     [[ "$#" == 0 ]] && local b="$(git_current_branch)"
#     git push origin "${b:=$1}"
#   fi
# }
# ########## compdef _git ggp=git-checkout

# function ggpnp() {
#   if [[ "$#" == 0 ]]; then
#     ggl && ggp
#   else
#     ggl "${*}" && ggp "${*}"
#   fi
# }
# ########## compdef _git ggpnp=git-checkout

# function ggu() {
#   [[ "$#" != 1 ]] && local b="$(git_current_branch)"
#   git pull --rebase origin "${b:=$1}"
# }
# ########## compdef _git ggu=git-checkout

alias ggpur='ggu'
alias ggpull='git pull origin "$(git_current_branch)"'
alias ggpush='git push origin "$(git_current_branch)"'

alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias gpsup='git push --set-upstream origin $(git_current_branch)'

alias ghh='git help'

alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias git-svn-dcommit-push='git svn dcommit && git push github $(git_main_branch):svntrunk'

alias gk='\gitk --all --branches'
alias gke='\gitk --all $(git log -g --pretty=%h)'

alias gl='git pull'
alias glg='git log --stat'
alias glgp='git log --stat -p'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glo='git log --oneline --decorate'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias glols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat"
alias glod="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
alias glods="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glp="_git_log_prettily"

alias gm='git merge'
alias gmom='git merge origin/$(git_main_branch)'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gmum='git merge upstream/$(git_main_branch)'
alias gma='git merge --abort'

alias gp='git push'
alias gpd='git push --dry-run'
alias gpf='git push --force-with-lease'
alias gpf!='git push --force'
alias gpoat='git push origin --all && git push origin --tags'
alias gpu='git push upstream'
alias gpv='git push -v'

alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbd='git rebase develop'
alias grbi='git rebase -i'
alias grbm='git rebase $(git_main_branch)'
alias grbs='git rebase --skip'
alias grev='git revert'
alias grh='git reset'
alias grhh='git reset --hard'
alias groh='git reset origin/$(git_current_branch) --hard'
alias grm='git rm'
alias grmc='git rm --cached'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grs='git restore'
alias grset='git remote set-url'
alias grss='git restore --source'
alias grt='cd "$(git rev-parse --show-toplevel || echo .)"'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'

alias gsb='git status -sb'
alias gsd='git svn dcommit'
alias gsh='git show'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'

# use the default stash push on git 2.13 and newer
autoload -Uz is-at-least
is-at-least 2.13 "$(git --version 2>/dev/null | awk '{print $3}')" &&
  alias gsta='git stash push' ||
  alias gsta='git stash save'

alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gstu='git stash --include-untracked'
alias gstall='git stash --all'
alias gsu='git submodule update'
alias gsw='git switch'
alias gswc='git switch -c'

alias gts='git tag -s'
alias gtv='git tag | sort -V'
function gtl() {
  git tag --sort=-v:refname -n -l "${1}*"
}

alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias gupa='git pull --rebase --autostash'
alias gupav='git pull --rebase --autostash -v'
alias glum='git pull upstream $(git_main_branch)'

alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'

alias gam='git am'
alias gamc='git am --continue'
alias gams='git am --skip'
alias gama='git am --abort'
alias gamscp='git am --show-current-patch'

# function grename() {
#   if [[ -z "$1" || -z "$2" ]]; then
#     echo "Usage: $0 old_branch new_branch"
#     return 1
#   fi

#   # Rename branch locally
#   git branch -m "$1" "$2"
#   # Rename branch in origin remote
#   if git push origin :"$1"; then
#     git push --set-upstream origin "$2"
#   fi
# }

# https://github.com/ohmyzsh/ohmyzsh/blob/93c837fec8e9fe61509b9dff9e909e84f7ebe32d/plugins/git/git.plugin.zsh#L1-L293
# #endregion ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# ---- 12010-ALS-npm.sh ----
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

# ---- 12010-ALS-tsc.sh ----
#!/bin/bash

alias tscx='npx tsc'
alias tscw='npx tsc --watch'

# ---- 12010-ALS-vscode.sh ----
#!/bin/bash

# Total lines: 64

#######################
## VSCODE ZSH PLUGIN ##
#######################
# eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin

alias sample-dirs-folders='bash <(curl -s https://gist.githubusercontent.com/Luxcium/7fba257aa83ef47ecb8e1b811e2d7cf2/raw/527e7d10a519ebbc876426461f07c1533fbe7292/dirs-material-icon-theme-PKief-4.5.0.sh)'

alias newvsportable='bash <(curl -s   https://gist.githubusercontent.com/Luxcium/7357d34622c148f6041842321f315d7a/raw/a758b82e6818b9b9b664b210228ea93f9314c1b4/luxcium-vscode-portable.sh)'
alias vsportablenew='newvsportable'
alias portablevsnew='newvsportable'
alias portablevs='newvsportable'

# alias ='/Users/neb_401/Developer/VSCode-Instances/clean-16-fev-2020/VisualStudioCode.app'
# author: https://github.com/MarsiBarsi
# Use main Visual Studio Code version by default
: "${VSCODE:=code}"

# alias vsc="$VSCODE ."
alias vsca='${VSCODE} --add'
alias vscd='${VSCODE} --diff'
alias vscg='${VSCODE} --goto'
alias vscn='${VSCODE} --new-window'
alias vscr='${VSCODE} --reuse-window'
alias vscw='${VSCODE} --wait'
alias vscu='${VSCODE} --user-data-dir'

alias vsced='${VSCODE} --extensions-dir'
alias vscie='${VSCODE} --install-extension'
alias vscue='${VSCODE} --uninstall-extension'

alias vscv='${VSCODE} --verbose'
alias vscl='${VSCODE} --log'
alias vscde='${VSCODE} --disable-extensions'

##########################
## INSIDERS CODE PLUGIN ##
##########################
# author: https://github.com/MarsiBarsi
# Use INSIDER Visual Studio Code

: "${ISCODE:=insiders}"

alias ivsc='${ISCODE} .'
alias ivsca='${ISCODE} --add'
alias ivscd='${ISCODE} --diff'
alias ivscg='${ISCODE} --goto'
alias ivscn='${ISCODE} --new-window'
alias ivscr='${ISCODE} --reuse-window'
alias ivscw='${ISCODE} --wait'
alias ivscu='${ISCODE} --user-data-dir'

alias ivsced='${ISCODE} --extensions-dir'
alias ivscie='${ISCODE} --install-extension'
alias ivscue='${ISCODE} --uninstall-extension'

alias ivscv='${ISCODE} --verbose'
alias ivscl='${ISCODE} --log'
alias ivscde='${ISCODE} --disable-extensions'

# ---- 12010-ALS-yarn.sh ----
#!/bin/bash

# Total lines: 64

################
## YARN ALIAS ##
################
# npm i concurrently@latest
# alias ylint='linters'
#> /dev/null'
alias yarnstart='yarn start'
alias ystart='yarn start'
alias yarnglobalupdate='yarn global add @nestjs/cli@latest bash-language-server@latest concurrently@latest create-react-app@latest eslint@latest eslint-config-prettier@latest install-peerdeps@latest npm-check@latest npm-check-unused@latest npm-check-updates@latest pnpm@latest prettier@latest serve@latest shelljs@latest shx@latest standard-version@latest ts-node@latest typescript@latest vsce@latest yarn@latest'

# alias yu='fnm install latest-erbium && \
# fnm install latest && \
# fnm use latest-erbium && \
# fnm default $(node -v)'
alias yi='yg; yi1 ; yi2' # yi3' yu

# alias yarnu='npm install -g yarn@latest'
# alias linters='yarn add --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest'
# alias gnlint='yarn add --glogal --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest typescript@rc ts-node@latest'
alias yarn2='yarn set version berry 1>& /dev/null || yarn set version latest; yarn install --immutable --immutable-cache;  yarn stage --commit; git add .yarn* package.json yarn.lock; git commit -m "yarn update";push'
alias yi1='concurrently  "rm yarn.lock" "rm -f package-lock.json" "rm -f pnpm-lock.yaml" "rm -rf node_modules"'
alias yi2='yarn install --force --audit --link-duplicates --check-files;'
alias yg='yarn global add \
concurrently@latest yarn@latest typescript@latest npm@latest ts-node@latest vsce@latest pnpm@latest  1> /dev/null &'
# alias yi3='yarn add -D typescript@rc @types/node@latest ts-node@latest > /dev/null 2>&1 &'
alias ya='yarn add --exact --audit --force --link-duplicates --check-files --no-progress'
alias yb='yarn run build --force'
alias yt='yarn run test'
alias ys='yarn start'

# npm i -g install-peerdeps; npm i -g bash-language-server@latest; npm i -g @types/node@latest; npm i -g eslint@latest; npm i -g gulp-yaml@latest; npm i -g npm-check-unused@latest; npm i -g npm-check-updates@latest; npm i -g npm-check@latest; npm i -g pnpm@latest; npm i -g prettier@latest; npm i -g standard-version@latest; npm i -g tslib@latest; npm i -g tslint@latest; npm i -g typescript@latest; npm i -g vsce@latest; npm i -g yarn@latest; install-peerdeps -g @typescript-eslint/eslint-plugin; install-peerdeps -g @typescript-eslint/parser; install-peerdeps -g eslint-conf-prettier; install-peerdeps -g eslint-plugin-prettier; install-peerdeps -g eslint-plugin-react; install-peerdeps -g ts-node;
alias build='yarn run build'
alias quick='yarn run quick'
alias tests='yarn run test'
alias rebuild='yarn run rebuild'
alias debug='yarn run debug'
alias start='yarn run start'

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

# ---- 12012-ALS-sounds.sh ----
#!/bin/bash

export LOCALSOUNDS="${HOME}/.local/share/sounds"
export SYSOUNDS='/usr/share/sounds'

alias play_NTV_startup_C9_Long_version='(play -qv 0.5 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_startup_C9_Long_version.ogg")'
alias play_NTV_startup_C9_small_version='(play -qv 0.3 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_startup_C9_short_version.ogg")'
alias play_NTV_error_tv3='(play -qv 0.2 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_error_tv3.ogg")'
alias play_NTV_information_t5='(play -qv 0.3 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_information_t5.ogg")'
alias play_NTV_logout_a3='(play -qv 0.5 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_logout_a3.ogg")'
alias play_NTV_question_btv='(play -qv 0.5 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_question_btv.ogg")'
alias play_osx1_0008_buddy_online='(play -qv 0.5 "${LOCALSOUNDS}/39662-KDEonOSX1/0008_Buddy_Online.flac")'
alias play_osx1_0009_start='(play -qv 0.8 "${LOCALSOUNDS}/39662-KDEonOSX1/0009_Start.flac")'
alias play_osx1_0010_device_ejected='(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0010_Device_Ejected.flac")'
alias play_osx1_0011_device_detected='(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0011_Device_Detected.flac")'
alias play_osx1_0012_critical_chronicles='(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0012_Critical_Chronicles.flac")'
alias play_osx1_0013_clubbed_to_death='(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0013_Clubbed_to_death.flac")'
alias play_osx1_0014_attention='(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0014_Attention.flac")'
alias play_osx2_0006_parting_is_such_sweet_sorrow='(play -qv 0.5 "${LOCALSOUNDS}/39663-KDEonOSX2/0006_Parting_is_such_sweet_sorrow.flac")'
alias play_osx2_0002_assend_attention='(play -qv 0.1 "${LOCALSOUNDS}/39663-KDEonOSX2/0002_Assend_Attention.flac")'
alias play_osx2_0004_hey_there='(play -qv 0.5 "${LOCALSOUNDS}/39663-KDEonOSX2/0004_Hey_There.flac")'
alias play_osx2_0001_cute='(play -qv 0.1 "${LOCALSOUNDS}/39663-KDEonOSX2/0001_Cute.flac")'
alias play_osx2_0003_trash1='(play -qv 0.5 "${LOCALSOUNDS}/39663-KDEonOSX2/0003_Trash1.flac")'
alias play_osx2_0005_old_school2='(play -qv 0.2 "${LOCALSOUNDS}/39663-KDEonOSX2/0005_Old_School2.flac")'
alias play_osx2_0007_old_school1='(play -qv 0.2 "${LOCALSOUNDS}/39663-KDEonOSX2/0007_Old_School1.flac")'
alias play_check-click='(play -qv 0.5 "${LOCALSOUNDS}/ater/001_check-click.mp3")'
alias play_etc-dialog='(play -qv 0.5 "${LOCALSOUNDS}/ater/002_etc-dialog.mp3")'
alias play_menu-select-b='(play -qv 0.9 "${LOCALSOUNDS}/ater/003_menu-select-b.mp3")'
alias play_menu-select-a='(play -qv 0.9 "${LOCALSOUNDS}/ater/004_menu-select-a.mp3")'
alias play_warning-dialog='(play -qv 0.9 "${LOCALSOUNDS}/ater/005_warning-dialog.mp3")'
alias play_ask-dialog='(play -qv 0.5 "${LOCALSOUNDS}/ater/006_ask-dialog.mp3")'
alias play_error-dialog='(play -qv 0.5 "${LOCALSOUNDS}/ater/007_error-dialog.mp3")'
alias play_information-dialog='(play -qv 0.9 "${LOCALSOUNDS}/ater/008_information-dialog.mp3")'
alias play_login-a='(play -qv 0.5 "${LOCALSOUNDS}/ater/009_login-a.mp3")'
alias play_logout-a='(play -qv 0.5 "${LOCALSOUNDS}/ater/010_logout-a.mp3")'
alias play_message-new-email='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/_message-new-email.ogg")'
alias play1_audio-volume-change='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/audio-volume-change.ogg")'
alias play2_battery-low='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/battery-low.ogg")'
alias play1_bell='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/bell.ogg")'
alias play1_button-pressed='(play -qv 0.1 "${LOCALSOUNDS}/enchanted/stereo/button-pressed.ogg")'
alias play_button-released='(play -qv 0.1 "${LOCALSOUNDS}/enchanted/stereo/button-released.ogg")'
alias play1_button-toggle-off='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/button-toggle-off.ogg")'
alias play1_button-toggle-on='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/button-toggle-on.ogg")'
alias play_complete1='(play -qv 0.3 "${LOCALSOUNDS}/enchanted/stereo/complete.ogg")'
alias play_count-down1='(play -qv 0.2 "${LOCALSOUNDS}/enchanted/stereo/count-down.ogg")'
alias play1_desktop-login='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/desktop-login.ogg")'
alias play_desktop-switch-left='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/desktop-switch-left.ogg")'
alias play_desktop-switch-right='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/desktop-switch-right.ogg")'
alias play_device-added='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/device-added.ogg")'
alias play_device-removed='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/device-removed.ogg")'
alias play1_dialog-error='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-error.ogg")'
alias play1_dialog-information='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-information.ogg")'
alias play1_dialog-question='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-question.ogg")'
alias play1_dialog-warning='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-warning.ogg")'
alias playnegative='(play_Sys-App-Negative&; sleep 0.5; play_Sys-App-Negative&; sleep 0.85; play_Sys-App-Negative&; sleep 0.85; play_Sys-App-Negative)'
alias playpositive='(play_Sys-App-Positive&; sleep 0.5; play_Sys-App-Positive&; sleep 0.85; play_Sys-App-Positive&; sleep 0.85; play_Sys-App-Positive)'
alias playwarning='(play_Sys-Warning&; sleep 0.5; play_Sys-Warning&; sleep 0.85; play_Sys-Warning&; sleep 0.85; play_Sys-Warning)'
alias playcritical='(play_Sys-App-Error-Critical&; sleep 0.5; play_Sys-App-Error-Critical&; sleep 0.85; play_Sys-App-Error-Critical&; sleep 0.85; play_Sys-App-Error-Critical)'
alias play1_link-pressed='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/link-pressed.ogg")'
alias play_menu-popdown='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/menu-popdown.ogg")'
alias play1_menu-popup='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/menu-popup.ogg")'
alias play_menu-replace='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/menu-replace.ogg")'
alias play1_message-new-instant='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/message-new-instant.ogg")'
alias play_message-sent-instant='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/message-sent-instant.ogg")'
alias play1_notebook-tab-changed='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/notebook-tab-changed.ogg")'
alias play1_phone-incoming-call='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/phone-incoming-call.ogg")'
alias play1_phone-outgoing-calling='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/phone-outgoing-calling.ogg")'
alias play1_phone-outgoing-busy='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/phone-outgoing-busy.ogg")'
alias play1_system-ready='(play -qv 0.2 "${LOCALSOUNDS}/enchanted/stereo/system-ready.ogg")'
alias play1_trash-empty='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/trash-empty.ogg")'
alias play1_window-attention-active='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-attention-active.ogg")'
alias play1_window-attention-inactive='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-attention-inactive.ogg")'
alias play1_window-close='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-close.ogg")'
alias play1_window-maximized='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-maximized.ogg")'
alias play1_window-minimized='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-minimized.ogg")'
alias play1_window-slide='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-slide.ogg")'
alias play1_window-switch='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-switch.ogg")'
alias play1_window-unmaximized='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-unmaximized.ogg")'
alias play_window-unminimized='(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-unminimized.ogg")'
alias play_kdemod-error='(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - Error.ogg")'
alias play_kdemod-general-system-message='(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - General System Message.ogg")'
alias play_kdemod-im-buddy-offline='(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Buddy Offline.ogg")'
alias play_kdemod-im-buddy-online='(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Buddy Online.ogg")'
alias play_kdemod-im-message-received='(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Message Received.ogg")'
alias play_kdemod-im-message-sent='(play -qv 0.9 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Message Sent.ogg")'
alias play_kdemod-login-tune-long-version='(play -qv 0.1 "${LOCALSOUNDS}/kde-mod/KDEmod - Login Tune (long version).ogg")'
alias play_kdemod-login-tune-short-version='(play -qv 0.1 "${LOCALSOUNDS}/kde-mod/KDEmod - Login Tune (short version).ogg")'
alias play_kdemod-logoff-tune='(play -qv 0.5 "${LOCALSOUNDS}/kde-mod/KDEmod - Logoff Tune.ogg")'
alias play_kdemod-new-e-maill='(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - New E-Maill.ogg")'
alias play_kdemod-question='(play -qv 0.9 "${LOCALSOUNDS}/kde-mod/KDEmod - Question.ogg")'
alias play1_battery-low='(play -qv 0.5 "${LOCALSOUNDS}/miui/battery-low.ogg")'
alias play2_bell='(play -qv 0.5 "${LOCALSOUNDS}/miui/bell.ogg")'
alias play_camera-shutter='(play -qv 0.5 "${LOCALSOUNDS}/miui/camera-shutter.ogg")'
alias play_complete2='(play -qv 0.5 "${LOCALSOUNDS}/miui/complete.ogg")'
alias play_desktop-screen-lock='(play -qv 0.5 "${LOCALSOUNDS}/miui/desktop-screen-lock.ogg")'
alias play_desktop-screen-unlock='(play -qv 0.5 "${LOCALSOUNDS}/miui/desktop-screen-unlock.ogg")'
alias play2_dialog-error='(play -qv 0.5 "${LOCALSOUNDS}/miui/dialog-error.ogg")'
alias play2_dialog-information='(play -qv 0.5 "${LOCALSOUNDS}/miui/dialog-information.ogg")'
alias play1_power-plug='(play -qv 0.5 "${LOCALSOUNDS}/miui/power-plug.ogg")'
alias play1_power-unplug='(play -qv 0.5 "${LOCALSOUNDS}/miui/power-unplug.ogg")'
alias play_screen-capture='(play -qv 0.5 "${LOCALSOUNDS}/miui/screen-capture.ogg")'
alias play2_system-ready='(play -qv 0.5 "${LOCALSOUNDS}/miui/system-ready.ogg")'
alias play2_trash-empty='(play -qv 0.5 "${LOCALSOUNDS}/miui/trash-empty.ogg")'
alias play_Im-Cant-Connect='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Cant-Connect.ogg")'
alias play_Im-Connection-Lost='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Connection-Lost.ogg")'
alias play_Im-Contact-In='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Contact-In.ogg")'
alias play_Im-Contact-Out='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Contact-Out.ogg")'
alias play_Im-Error-On-Connection='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Error-On-Connection.ogg")'
alias play_Im-Highlight-Msg='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Highlight-Msg.ogg")'
alias play_Im-Internal-Error='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Internal-Error.ogg")'
alias play_Im-Irc-Event='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Irc-Event.ogg")'
alias play_Im-Low-Priority-Message='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Low-Priority-Message.ogg")'
alias play_Im-Message-In='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Message-In.ogg")'
alias play_Im-Message-Out='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Message-Out.ogg")'
alias play_Im-Network-Problems='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Network-Problems.ogg")'
alias play_Im-New-Mail='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-New-Mail.ogg")'
alias play_Im-Nudge='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Nudge.ogg")'
alias play_Im-Phone-Ring='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Phone-Ring.ogg")'
alias play_Im-Sms='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Sms.ogg")'
alias play_Im-User-Auth='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-User-Auth.ogg")'
alias play_K3B-Finish-Error='(play -qv 0.5 "${SYSOUNDS}/Oxygen-K3B-Finish-Error.ogg")'
alias play_K3B-Finish-Success='(play -qv 0.5 "${SYSOUNDS}/Oxygen-K3B-Finish-Success.ogg")'
alias play_K3B-Insert-Medium='(play -qv 0.5 "${SYSOUNDS}/Oxygen-K3B-Insert-Medium.ogg")'
alias play_Sys-App-Error='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error.ogg")'
alias play_Sys-App-Error-Critical='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error-Critical.ogg")'
alias play_Sys-App-Error-Serious='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error-Serious.ogg")'
alias play_Sys-App-Error-Serious-Very='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error-Serious-Very.ogg")'
alias play_Sys-App-Message='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Message.ogg")'
alias play_Sys-App-Negative='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Negative.ogg")'
alias play_Sys-App-Positive='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Positive.ogg")'
alias play_Sys-Error-Printing='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Error-Printing.ogg")'
alias play_Sys-File-Open-Foes='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-File-Open-Foes.ogg")'
alias play_Sys-List-End='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-List-End.ogg")'
alias play_Sys-List-Match-Multiple='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-List-Match-Multiple.ogg")'
alias play_Sys-List-Match-No='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-List-Match-No.ogg")'
alias play_Sys-Log-In='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-In.ogg")'
alias play_Sys-Log-In-Long='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-In-Long.ogg")'
alias play_Sys-Log-In-Short='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-In-Short.ogg")'
alias play_Sys-Log-Out='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-Out.ogg")'
alias play_Sys-Question='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Question.ogg")'
alias play_Sys-Special='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Special.ogg")'
alias play_Sys-Trash-Emptied='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Trash-Emptied.ogg")'
alias play_Sys-Warning='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Warning.ogg")'
alias play_Window-All-Desktops='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-All-Desktops.ogg")'
alias play_Window-All-Desktops-Not='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-All-Desktops-Not.ogg")'
alias play_Window-Close='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Close.ogg")'
alias play_Window-Maximize='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Maximize.ogg")'
alias play_Window-Minimize='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Minimize.ogg")'
alias play_Window-Move='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Move.ogg")'
alias play_Window-Move-Stop='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Move-Stop.ogg")'
alias play_Window-Shade-Down='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Shade-Down.ogg")'
alias play_Window-Shade-Up='(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Shade-Up.ogg")'
alias play_001='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/001.mp3")'
alias play_010='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/010.mp3")'
alias play_011='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/011.mp3")'
alias play_012='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/012.mp3")'
alias play_013='(play -qv 0.1 "${LOCALSOUNDS}/pc-libre/013.mp3")'
alias play_014='(play -qv 0.1 "${LOCALSOUNDS}/pc-libre/014.mp3")'
alias play_015='(play -qv 0.3 "${LOCALSOUNDS}/pc-libre/015.mp3")'
alias play_016='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/016.mp3")'
alias play_017='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/017.mp3")'
alias play_018='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/018.mp3")'
alias play_019='(play -qv 0.9 "${LOCALSOUNDS}/pc-libre/019.mp3")'
alias play_002='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/02.mp3")'
alias play_0020='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/020.mp3")'
alias play_0021='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/021.mp3")'
alias play_0022='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/022.mp3")'
alias play_0023='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/023.mp3")'
alias play_003='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/03.mp3")'
alias play_04='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/04.mp3")'
alias play_05='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/05.mp3")'
alias play_06='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/06.mp3")'
alias play_07='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/07.mp3")'
alias play_08='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/08.mp3")'
alias play_09='(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/09.mp3")'
alias play5_ringtone-1='(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 1 by Markospoko.wav")'
alias play5_ringtone-2='(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 2.1 by Markospoko.wav")'
alias play5_ringtone-3='(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 2.2 by Markospoko.wav")'
alias play5_ringtone-4='(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 3 by Markospoko.wav")'
alias play_audio-channel-front-center='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-front-center.oga")'
alias play_audio-channel-front-left='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-front-left.oga")'
alias play_audio-channel-front-right='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-front-right.oga")'
alias play_audio-channel-rear-center='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-rear-center.oga")'
alias play_audio-channel-rear-right='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-rear-right.oga")'
alias play_audio-channel-rear-left='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-rear-left.oga")'
alias play_audio-channel-side-right='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-side-right.oga")'
alias play_audio-channel-side-left='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-side-left.oga")'
alias play_desktop-login4='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/__desktop-login.oga")'
alias play_desktop-login5='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/_desktop-login.oga")'
alias play_message-new-email='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/_message-new-email.oga")'
alias play_window-unminimized='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/_window-unminimized.oga")'
alias play_audio-volume-change='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-volume-change.oga")'
alias play_battery-caution='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/battery-caution.oga")'
alias play_battery-full='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/battery-full.oga")'
alias play3_battery-low='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/battery-low.oga")'
alias play2_button-pressed='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-pressed.oga")'
alias play_button-released='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-released.oga")'
alias play2_button-toggle-off='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-toggle-off.oga")'
alias play2_button-toggle-on='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-toggle-on.oga")'
alias play_count-down2='(play -qv 0.3 "${LOCALSOUNDS}/smooth/stereo/count-down.oga")'
alias play2_desktop-login='(play -qv 0.3 "${LOCALSOUNDS}/smooth/stereo/desktop-login.oga")'
alias play_desktop-logout='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/desktop-logout.oga")'
alias play_desktop-switch-left='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/desktop-switch-left.oga")'
alias play_desktop-switch-right='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/desktop-switch-right.oga")'
alias play_device-added='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/device-added.oga")'
alias play_device-removed='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/device-removed.oga")'
alias play3_dialog-error='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-error.oga")'
alias play3_dialog-information='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-information.oga")'
alias play2_dialog-question='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-question.oga")'
alias play3_dialog-warning='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-warning.oga")'
alias play_link-pressed='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/link-pressed.oga")'
alias play1_menu-popdown='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/menu-popdown.oga")'
alias play_menu-popup='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/menu-popup.oga")'
alias play1_menu-replace='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/menu-replace.oga")'
alias play_message-new-email='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-new-email.oga")'
alias play_message-new-instant='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-new-instant.oga")'
alias play1_message-sent-email='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-sent-email.oga")'
alias play1_message-sent-instant='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-sent-instant.oga")'
alias play_network-connectivity-established='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/network-connectivity-established.oga")'
alias play_network-connectivity-error='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/network-connectivity-error.oga")'
alias play_network-connectivity-lost='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/network-connectivity-lost.oga")'
alias play_notebook-tab-changed='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/notebook-tab-changed.oga")'
alias play_phone-incoming-call='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/phone-incoming-call.oga")'
alias play_phone-outgoing-busy='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/phone-outgoing-busy.oga")'
alias play_phone-outgoing-calling='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/phone-outgoing-calling.oga")'
alias play2_power-plug='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/power-plug.oga")'
alias play_power-unplug-battery-low='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/power-unplug-battery-low.oga")'
alias play2_power-unplug='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/power-unplug.oga")'
alias play3_system-ready='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/system-ready.ogg")'
alias play3_trash-empty='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/trash-empty.oga")'
alias play_window-attention-inactive='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-attention-inactive.oga")'
alias play_window-attention-active='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-attention-active.oga")'
alias play_window-close='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-close.oga")'
alias play_window-maximized='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-maximized.oga")'
alias play_window-minimized='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-minimized.oga")'
alias play_window-new='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-new.oga")'
alias play_window-slide='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-slide.oga")'
alias play2_window-switch='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-switch.oga")'
alias play2_window-unmaximized='(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-unmaximized.oga")'
alias play_action='(play -qv 0.2 "${LOCALSOUNDS}/soundset/action.wav")'
alias play_bling='(play -qv 0.1 "${LOCALSOUNDS}/soundset/bling.wav")'
alias play_click='(play -qv 0.2 "${LOCALSOUNDS}/soundset/click.wav")'
alias play_com='(play -qv 0.2 "${LOCALSOUNDS}/soundset/com.wav")'
alias play_crystal='(play -qv 0.5 "${LOCALSOUNDS}/soundset/crystal.wav")'
alias play1_maximize='(play -qv 0.2 "${LOCALSOUNDS}/soundset/maximize.wav")'
alias play_minmize='(play -qv 0.2 "${LOCALSOUNDS}/soundset/minmize.wav")'
alias play_newwindow='(play -qv 0.2 "${LOCALSOUNDS}/soundset/newwindow.wav")'
alias play_newwindow2='(play -qv 0.2 "${LOCALSOUNDS}/soundset/newwindow2.wav")'
alias play_ping='(play -qv 0.2 "${LOCALSOUNDS}/soundset/ping.wav")'
alias play_ping2='(play -qv 0.2 "${LOCALSOUNDS}/soundset/ping2.wav")'
alias play_snap='(play -qv 0.2 "${LOCALSOUNDS}/soundset/snap.wav")'
alias play_thump='(play -qv 0.2 "${LOCALSOUNDS}/soundset/thump.wav")'
alias play_trash='(play -qv 0.1 "${LOCALSOUNDS}/soundset/trash.wav")'
alias play_zoom='(play -qv 0.2 "${LOCALSOUNDS}/soundset/zoom.wav")'
alias play_osx1_transformers='(play -qv 0.1 "${LOCALSOUNDS}/transformers-desktop-login.ogg")'
alias play_windows7_button-pressed='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/button-pressed.ogg")'
alias play_windows7_button-toggle-off='(play -qv 0.9 "${LOCALSOUNDS}/Windows7/stereo/button-toggle-off.ogg")'
alias play_windows7_button-toggle-on='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/button-toggle-on.ogg")'
alias play_windows7_desktop-login='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/desktop-login.ogg")'
alias play_windows7_desktop-logout='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/desktop-logout.ogg")'
alias play_windows7_dialog-error='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-error.ogg")'
alias play_windows7_dialog-information='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-information.ogg")'
alias play_windows7_dialog-question='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-question.ogg")'
alias play_windows7_dialog-question='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-question.wav")'
alias play_windows7_dialog-warning='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-warning.ogg")'
alias play_windows7_phone-incoming-call='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/phone-incoming-call.ogg")'
alias play_windows7_system-ready='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/system-ready.ogg")'
alias play_windows7_window-slide='(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/window-slide.ogg")'
alias play3_power-plug='(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-plug.ogg")'
alias play_power-plug='(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-plug.ogg")'
alias play3_power-unplug='(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-unplug.ogg")'
alias play_power-unplug='(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-unplug.ogg")'
alias play_zelda_email='(play -qv 0.3 "${LOCALSOUNDS}/zelda/email.ogg")'
alias play_zelda_buddylogin='(play -qv 0.3 "${LOCALSOUNDS}/zelda/buddylogin.ogg")'
alias play_zelda_bell='(play -qv 0.5 "${LOCALSOUNDS}/zelda/bell.ogg")'
alias play_zelda_buddylogout='(play -qv 0.5 "${LOCALSOUNDS}/zelda/buddylogout.ogg")'
alias play_zelda_button-pressed='(play -qv 0.5 "${LOCALSOUNDS}/zelda/button-pressed.ogg")'
alias play_zelda_button-toggle-off='(play -qv 0.5 "${LOCALSOUNDS}/zelda/button-toggle-off.ogg")'
alias play_zelda_button-toggle-on='(play -qv 0.5 "${LOCALSOUNDS}/zelda/button-toggle-on.ogg")'
alias play_zelda_emptytrash='(play -qv 0.5 "${LOCALSOUNDS}/zelda/emptytrash.ogg")'
alias play_zelda_imreceived='(play -qv 0.5 "${LOCALSOUNDS}/zelda/imreceived.ogg")'
alias play_zelda_imsent='(play -qv 0.5 "${LOCALSOUNDS}/zelda/imsent.ogg")'
alias play_zelda_maximize='(play -qv 0.5 "${LOCALSOUNDS}/zelda/maximize.ogg")'
alias play_zelda_unmaximize='(play -qv 0.5 "${LOCALSOUNDS}/zelda/unmaximize.ogg")'
alias play_zelda_minimize='(play -qv 0.5 "${LOCALSOUNDS}/zelda/minimize.ogg")'
alias play_zelda_lowbatt='(play -qv 0.3 "${LOCALSOUNDS}/zelda/lowbatt.ogg")'
alias play_zelda_dialog-error='(play -qv 0.5 "${LOCALSOUNDS}/zelda/dialog-error.ogg")'
alias play_zelda_dialog-information='(play -qv 0.3 "${LOCALSOUNDS}/zelda/dialog-information.ogg")'
alias play_zelda_dialog-warning='(play -qv 0.7 "${LOCALSOUNDS}/zelda/dialog-warning.ogg")'
alias play_zelda_desktop-login='(play -qv 0.5 "${LOCALSOUNDS}/zelda/desktop-login.ogg")'
alias play_zelda_desktop-logout='(play -qv 0.5 "${LOCALSOUNDS}/zelda/desktop-logout.ogg")'
alias play_zelda_longaction='(play -qv 0.5 "${LOCALSOUNDS}/zelda/longaction.ogg")'
alias play_zelda_dialog-question='(play -qv 0.5 "${LOCALSOUNDS}/zelda/dialog-question.ogg")'

##### alias ######
alias play_bell_0017='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/bell.ogg")'
alias play_button-toggle-off_0002='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/button-toggle-off.ogg")'
alias play_button-toggle-on_0003='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/button-toggle-on.ogg")'
alias play_button-pressed_0004='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/button-pressed.ogg")'
alias play_desktop-login_0kinper_005='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/desktop-login.ogg")'
alias play_desktop-logout_0006='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/desktop-logout.ogg")'
alias play_dialog-error_0007='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-error.ogg")'
alias play_dialog-information_0008='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-information.ogg")'
alias play_dialog-question_0009='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-question.ogg")'
alias play_dialog-warning_0010='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-warning.ogg")'
alias play_message-new-instant_0011='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/message-new-instant.ogg")'
alias play_phone-incoming-call_0012='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/phone-incoming-call.ogg")'
alias play_phone-outgoing-busy_0013='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/phone-outgoing-busy.ogg")'
alias play_service-login_0014='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/service-login.ogg")'
alias play_service-logout_0015='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/service-logout.ogg")'
alias play_system-ready_0016='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/system-ready.ogg")'
alias play_window-slide_0001='(play -qv 0.6 "${LOCALSOUNDS}/artistic1/window-slide.ogg")'
alias play_loginfaileddexter_0018='(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginfaileddexter.mp3")'
alias play_loginscreenready2dexter_0019='(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginscreenready2dexter.mp3")'
alias play_loginscreenreadydexter_0020='(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginscreenreadydexter.mp3")'
alias play_loginsuccessdexter_0021='(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginsuccessdexter.mp3")'
alias play_logout_0022='(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/logout.mp3")'
alias play_startup_0023='(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/startup.mp3")'
alias play_do_this_again_0024='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/do_this_again.mp3")'
alias play_errors_0025='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/errors.mp3")'
alias play_hello_0026='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/hello.wav")'
alias play_I_dont_care_0027='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/I_dont_care.mp3")'
alias play_impossible_0028='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/impossible.mp3")'
alias play_its_you_0029='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/its_you.mp3")'
alias play_like_cake_0030='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/like_cake.mp3")'
alias play_long_time_0031='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/long_time.mp3")'
alias play_stupid_0032='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/stupid.mp3")'
alias play_your_fault_0033='(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/your_fault.mp3")'
alias play_itw_desktop_login_0034='(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_desktop_login.ogg")'
alias play_itw_desktop_logout_0035='(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_desktop_logout.ogg")'
alias play_itw_empty_trash_0036='(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_empty_trash.ogg")'
alias play_itw_gdm_login_0037='(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_gdm_login.ogg")'
alias play_itw_notification_0038='(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_notification.ogg")'
alias play_drums_0039='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/drums.ogg")'
alias play_empty_trash_0040='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/empty_trash.ogg")'
alias play_glass_break_0041='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/glass_break.ogg")'
alias play_gun_reloading_0042='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/gun_reloading.ogg")'
alias play_gun_shot-01_0043='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/gun_shot-01.ogg")'
alias play_gun_shot-02_0044='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/gun_shot-02.ogg")'
alias play_phone_0045='(play -qv 0.4 "${LOCALSOUNDS}/just-sounds/phone.ogg")'
alias play_sound_0046='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/sound.ogg")'
alias play_turning_off_0047='(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/turning _off.ogg")'
alias play_kdestart_0048='(play -qv 0.6 "${LOCALSOUNDS}/kdelove/kdestart.ogg")'
alias play_kdestop_0049='(play -qv 0.6 "${LOCALSOUNDS}/kdelove/kdestop.ogg")'
alias play_error_kinper_0050='(play -qv 0.6 "${LOCALSOUNDS}/kinper/error.ogg")'
alias play_LogOn_kinper_0051='(play -qv 0.2 "${LOCALSOUNDS}/kinper/LogOn.ogg")'
alias play_LogOut_kinper_0052='(play -qv 0.2 "${LOCALSOUNDS}/kinper/LogOut.ogg")'
alias play_message_kinper_0053='(play -qv 0.6 "${LOCALSOUNDS}/kinper/message.ogg")'
alias play_question_kinper_0054='(play -qv 0.6 "${LOCALSOUNDS}/kinper/question.ogg")'
alias play_usb_in_kinper_0055='(play -qv 0.6 "${LOCALSOUNDS}/kinper/usb_in.ogg")'
alias play_usb_out_kinper_0056='(play -qv 0.6 "${LOCALSOUNDS}/kinper/usb_out.ogg")'
alias play_warning_kinper_0057='(play -qv 0.6 "${LOCALSOUNDS}/kinper/warning.ogg")'
alias play_kmess_chat_0058='(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_chat.mp3")'
alias play_kmess_logoff_0059='(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_logoff.mp3")'
alias play_kmess_logon_0060='(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_logon.mp3")'
alias play_kmess_msg_0061='(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_msg.mp3")'
alias play_megaman5_boss_intro_-_star_0062='(play -qv 0.6 "${LOCALSOUNDS}/megaman-5/megaman5_boss_intro_-_star.wav")'
alias play_megaman5_die_mm_close_0063='(play -qv 0.6 "${LOCALSOUNDS}/megaman-5/megaman5_die_mm_close.wav")'
alias play_01_konami_sequence_0064='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/01_konami_sequence.ogg")'
alias play_0x0F_0065='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x0F.ogg")'
alias play_0x10_0066='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x10.ogg")'
alias play_0x15_0067='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x15.ogg")'
alias play_0x16_0068='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x16.ogg")'
alias play_0x20_0069='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x20.ogg")'
alias play_0x2B_0070='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x2B.ogg")'
alias play_0x3D_0071='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x3D.ogg")'
alias play_0x54_0072='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x54.ogg")'
alias play_0x5B_0073='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x5B.ogg")'
alias play_0x61_0074='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x61.ogg")'
alias play_0x66_0075='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x66.ogg")'
alias play_0x6E_0076='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x6E.ogg")'
alias play_0x7B_0077='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x7B.ogg")'
alias play_0xB9_0078='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0xB9.ogg")'
alias play_gameover_0079='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/gameover.ogg")'
alias play_metalgearcodec_0080='(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/metalgearcodec.ogg")'
alias play_e-mail_0081='(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/e-mail.mp3")'
alias play_error1_0082='(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/error1.mp3")'
alias play_error_0083='(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/error.mp3")'
alias play_system_down_0084='(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/system_down.mp3")'
alias play_system_start_0085='(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/system_start.mp3")'
alias play_30979-Start05_0086='(play -qv 0.6 "${LOCALSOUNDS}/sons/30979-Start05.mp3")'
alias play_secret-trophy_0087='(play -qv 0.6 "${LOCALSOUNDS}/sons/secret-trophy.wav")'
alias play_SLAX_Startup_0088='(play -qv 0.6 "${LOCALSOUNDS}/sons/SLAX_Startup.ogg")'
alias play_action_0089='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/action.wav")'
alias play_bling_s-set_0090='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/bling.wav")'
alias play_click_s-set_0091='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/click.wav")'
alias play_com_s-set_0092='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/com.wav")'
alias play_crystal_s-set_0093='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/crystal.wav")'
alias play_maximize_s-set_0094='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/maximize.wav")'
alias play_minmize_s-set_0095='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/minmize.wav")'
alias play_newwindow2_s-set_0096='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/newwindow2.wav")'
alias play_newwindow_s-set_0097='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/newwindow.wav")'
alias play_ping2_s-set_0098='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/ping2.wav")'
alias play_ping_s-set_0099='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/ping.wav")'
alias play_snap_0100='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/snap.wav")'
alias play_thump_0101='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/thump.wav")'
alias play_trash_0102='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/trash.wav")'
alias play_zoom_0103='(play -qv 0.6 "${LOCALSOUNDS}/soundset1/zoom.wav")'
alias play_audio-volume-change_0104='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/audio-volume-change.ogg")'
alias play_battery-low_0105='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/battery-low.ogg")'
alias play_bell_0106='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/bell.ogg")'
alias play_complete_0107='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/complete.ogg")'
alias play_desktop-login_0108='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/desktop-login.ogg")'
alias play_device-added_0109='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/device-added.ogg")'
alias play_device-removed_0110='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/device-removed.ogg")'
alias play_dialog-error_0111='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/dialog-error.ogg")'
alias play_dialog-question_0112='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/dialog-question.ogg")'
alias play_dialog-warning_0113='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/dialog-warning.ogg")'
alias play_message-new-email_0114='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/message-new-email.ogg")'
alias play_message-new-instant_0115='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/message-new-instant.ogg")'
alias play_trash-empty_0116='(play -qv 0.6 "${LOCALSOUNDS}/star-labs/trash-empty.ogg")'
alias play_bell_0117='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/bell.ogg")'
alias play_button-pressed_0118='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/button-pressed.ogg")'
alias play_button-toggle-off_0119='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/button-toggle-off.ogg")'
alias play_button-toggle-on_0120='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/button-toggle-on.ogg")'
alias play_desktop-login_0121='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/desktop-login.ogg")'
alias play_desktop-logout_0122='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/desktop-logout.ogg")'
alias play_dialog-error_0123='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-error.ogg")'
alias play_dialog-information_0124='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-information.ogg")'
alias play_dialog-question_0125='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-question.ogg")'
alias play_dialog-question_0126='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-question.wav")'
alias play_dialog-warning_0127='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-warning.ogg")'
alias play_phone-incoming-call_0128='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/phone-incoming-call.ogg")'
alias play_system-ready_0129='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/system-ready.ogg")'
alias play_window-slide_0130='(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/window-slide.ogg")'
alias play_ubuntu-alt-alert_0131='(play -qv 0.6 "${LOCALSOUNDS}/ubuntu-alternate/ubuntu-alt-alert.wav")'
alias play_ubuntu-alt-sd_0132='(play -qv 0.6 "${LOCALSOUNDS}/ubuntu-alternate/ubuntu-alt-sd.wav")'
alias play_ubuntu-alt_0133='(play -qv 0.6 "${LOCALSOUNDS}/ubuntu-alternate/ubuntu-alt.wav")'
alias play_Alarm01_0134='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm01.wav")'
alias play_Alarm02_0135='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm02.wav")'
alias play_Alarm03_0136='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm03.wav")'
alias play_Alarm04_0137='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm04.wav")'
alias play_Alarm05_0138='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm05.wav")'
alias play_Alarm06_0139='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm06.wav")'
alias play_Alarm07_0140='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm07.wav")'
alias play_Alarm08_0141='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm08.wav")'
alias play_Alarm09_0142='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm09.wav")'
alias play_Alarm10_0143='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm10.wav")'
alias play_chimes_0144='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/chimes.wav")'
alias play_chord_0145='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/chord.wav")'
alias play_ding_0146='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ding.wav")'
alias play_ir_begin_0147='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ir_begin.wav")'
alias play_ir_end_0148='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ir_end.wav")'
alias play_ir_inter_0149='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ir_inter.wav")'
alias play_notify_0150='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/notify.wav")'
alias play_recycle_0151='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/recycle.wav")'
alias play_Ring01_0152='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring01.wav")'
alias play_Ring02_0153='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring02.wav")'
alias play_Ring03_0154='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring03.wav")'
alias play_Ring04_0155='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring04.wav")'
alias play_Ring05_0156='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring05.wav")'
alias play_Ring06_0157='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring06.wav")'
alias play_Ring07_0158='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring07.wav")'
alias play_Ring08_0159='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring08.wav")'
alias play_Ring09_0160='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring09.wav")'
alias play_Ring10_0161='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring10.wav")'
alias play_ringout_0162='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ringout.wav")'
alias play_Disambiguation_0163='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Disambiguation.wav")'
alias play_Misrecognition_0164='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Misrecognition.wav")'
alias play_Off_0165='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Off.wav")'
alias play_On_0166='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech On.wav")'
alias play_Sleep_0167='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Sleep.wav")'
alias play_tada_0168='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/tada.wav")'
alias play_Background_0169='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Background.wav")'
alias play_Balloon_0170='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Balloon.wav")'
alias play_Critical_0171='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Battery Critical.wav")'
alias play_Low_0172='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Battery Low.wav")'
alias play_Stop_0173='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Critical Stop.wav")'
alias play_Default_0174='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Default.wav")'
alias play_Ding_0175='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Ding.wav")'
alias play_Error_0176='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Error.wav")'
alias play_Exclamation_0177='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Exclamation.wav")'
alias play_Discovered_0178='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Feed Discovered.wav")'
alias play_Foreground_0179='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Foreground.wav")'
alias play_Fail_0180='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Hardware Fail.wav")'
alias play_Insert_0181='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Hardware Insert.wav")'
alias play_Remove_0182='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Hardware Remove.wav")'
alias play_Bar_0183='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Information Bar.wav")'
alias play_Sound_0184='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Logoff Sound.wav")'
alias play_Logon_0185='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Logon.wav")'
alias play_Command_0186='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Menu Command.wav")'
alias play_Nudge_0187='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Message Nudge.wav")'
alias play_Minimize_0188='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Minimize.wav")'
alias play_Start_0189='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Navigation Start.wav")'
alias play_Calendar_0190='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify Calendar.wav")'
alias play_Email_0191='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify Email.wav")'
alias play_Messaging_0192='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify Messaging.wav")'
alias play_Generic_0193='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify System Generic.wav")'
alias play_Notify_0194='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify.wav")'
alias play_Blocked_0195='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Pop-up Blocked.wav")'
alias play_complete_0196='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Print complete.wav")'
alias play_Connection_0197='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Proximity Connection.wav")'
alias play_Notification_0198='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Proximity Notification.wav")'
alias play_Recycle_0199='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Recycle.wav")'
alias play_Restore_0200='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Restore.wav")'
alias play_Ringin_0201='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Ringin.wav")'
alias play_Ringout_0202='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Ringout.wav")'
alias play_Shutdown_0203='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Shutdown.wav")'
alias play_Startup_0204='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Startup.wav")'
alias play_Unlock_0205='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Unlock.wav")'
alias play_Control_0206='(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows User Account Control.wav")'
alias play_button-pressed_0207='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/button-pressed.ogg")'
alias play_button-toggle-off_0208='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/button-toggle-off.ogg")'
alias play_button-toggle-on_0209='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/button-toggle-on.ogg")'
alias play_desktop-login_0210='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/desktop-login.wav")'
alias play_desktop-logout_0211='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/desktop-logout.wav")'
alias play_dialog-error_0212='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-error.wav")'
alias play_dialog-information_0213='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-information.wav")'
alias play_dialog-question_0214='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-question.wav")'
alias play_dialog-warning_0215='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-warning.wav")'
alias play_phone-incoming-call_0216='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/phone-incoming-call.ogg")'
alias play_system-ready_0217='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/system-ready.wav")'
alias play_window-slide_0218='(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/window-slide.ogg")'
alias play_Kopete_Message_buzz_0219='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_buzz.ogg")'
alias play_Kopete_Message_Highlight_0220='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Highlight.ogg")'
alias play_Kopete_Message_Received_0221='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Received..ogg")'
alias play_Kopete_Message_Sent_0222='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Sent.ogg")'
alias play_Kopete_Message_Sent_old_0223='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Sent_old.ogg")'
alias play_Kopete_User_is_Offline_0224='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_User_is_Offline.ogg")'
alias play_Kopete_User_is_Online_0225='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_User_is_Online.ogg")'
alias play_Kopete_yahoomail_0226='(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_yahoomail.ogg")'
alias play_zelda_bell_0227='(play -qv 0.6 "${LOCALSOUNDS}/zelda/bell.ogg")'
alias play_zelda_buddylogin_0228='(play -qv 0.6 "${LOCALSOUNDS}/zelda/buddylogin.ogg")'
alias play_zelda_buddylogout_0229='(play -qv 0.6 "${LOCALSOUNDS}/zelda/buddylogout.ogg")'
alias play_zelda_button-pressed_0230='(play -qv 0.6 "${LOCALSOUNDS}/zelda/button-pressed.ogg")'
alias play_zelda_button-toggle-off_0231='(play -qv 0.6 "${LOCALSOUNDS}/zelda/button-toggle-off.ogg")'
alias play_zelda_button-toggle-on_0232='(play -qv 0.6 "${LOCALSOUNDS}/zelda/button-toggle-on.ogg")'
alias play_zelda_desktop-login_0233='(play -qv 0.6 "${LOCALSOUNDS}/zelda/desktop-login.ogg")'
alias play_zelda_desktop-logout_0234='(play -qv 0.6 "${LOCALSOUNDS}/zelda/desktop-logout.ogg")'
alias play_zelda_dialog-error_0235='(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-error.ogg")'
alias play_zelda_dialog-information_0236='(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-information.ogg")'
alias play_zelda_dialog-question_0237='(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-question.ogg")'
alias play_zelda_dialog-warning_0238='(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-warning.ogg")'
alias play_zelda_email_0239='(play -qv 0.6 "${LOCALSOUNDS}/zelda/email.ogg")'
alias play_zelda_emptytrash_0240='(play -qv 0.6 "${LOCALSOUNDS}/zelda/emptytrash.ogg")'
alias play_zelda_imreceived_0241='(play -qv 0.6 "${LOCALSOUNDS}/zelda/imreceived.ogg")'
alias play_zelda_imsent_0242='(play -qv 0.6 "${LOCALSOUNDS}/zelda/imsent.ogg")'
alias play_zelda_longaction_0-243='(play -qv 0.6 "${LOCALSOUNDS}/zelda/longaction.ogg")'
alias play_zelda_lowbatt_0-244='(play -qv 0.6 "${LOCALSOUNDS}/zelda/lowbatt.ogg")'
alias play_zelda_maximize_0245='(play -qv 0.6 "${LOCALSOUNDS}/zelda/maximize.ogg")'
alias play_zelda_minimize_0246='(play -qv 0.6 "${LOCALSOUNDS}/zelda/minimize.ogg")'
alias play_zelda_unmaximize_0247='(play -qv 0.6 "${LOCALSOUNDS}/zelda/unmaximize.ogg")'
alias play_alarm-clock-elapsed_zorin_0248='(play -qv 0.1 "${LOCALSOUNDS}/zorin/alarm-clock-elapsed.oga")'
alias play_bell_zorin_0249='(play -qv 0.1 "${LOCALSOUNDS}/zorin/bell.wav")'
alias play_button-pressed_zorin_0250='(play -qv 0.1 "${LOCALSOUNDS}/zorin/button-pressed.ogg")'
alias play_button-toggle-off_zorin_0251='(play -qv 0.1 "${LOCALSOUNDS}/zorin/button-toggle-off.ogg")'
alias play_button-toggle-on_zorin_0252='(play -qv 0.1 "${LOCALSOUNDS}/zorin/button-toggle-on.ogg")'
alias play_camera-shutter_zorin_0253='(play -qv 0.1 "${LOCALSOUNDS}/zorin/camera-shutter.oga")'
alias play_desktop-login_zorin_0254='(play -qv 0.1 "${LOCALSOUNDS}/zorin/desktop-login.ogg")'
alias play_desktop-logout_zorin_0255='(play -qv 0.1 "${LOCALSOUNDS}/zorin/desktop-logout.ogg")'
alias play_device-added_zorin_0256='(play -qv 0.1 "${LOCALSOUNDS}/zorin/device-added.oga")'
alias play_device-removed_zorin_0257='(play -qv 0.1 "${LOCALSOUNDS}/zorin/device-removed.oga")'
alias play_dialog-error_zorin_0258='(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-error.oga")'
alias play_dialog-information_zorin_0259='(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-information.ogg")'
alias play_dialog-question_zorin_0260='(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-question.ogg")'
alias play_dialog-warning_zorin_0261='(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-warning.ogg")'
alias play_message-new-email_zorin_0262='(play -qv 0.1 "${LOCALSOUNDS}/zorin/message-new-email.ogg")'
alias play_message-new-instant_zorin_0263='(play -qv 0.1 "${LOCALSOUNDS}/zorin/message-new-instant.ogg")'
alias play_message_zorin_0264='(play -qv 0.1 "${LOCALSOUNDS}/zorin/message.ogg")'
alias play_phone-incoming-call_zorin_0265='(play -qv 0.1 "${LOCALSOUNDS}/zorin/phone-incoming-call.ogg")'
alias play_phone-outgoing-busy_zorin_0266='(play -qv 0.1 "${LOCALSOUNDS}/zorin/phone-outgoing-busy.ogg")'
alias play_service-login_zorin_0268='(play -qv 0.1 "${LOCALSOUNDS}/zorin/service-login.ogg")'
alias play_service-logout_zorin_0269='(play -qv 0.1 "${LOCALSOUNDS}/zorin/service-logout.ogg")'
alias play_success_zorin_0270='(play -qv 0.1 "${LOCALSOUNDS}/zorin/success.ogg")'
alias play_suspend-error_zorin_0271='(play -qv 0.1 "${LOCALSOUNDS}/zorin/suspend-error.wav")'
alias play_system-ready_zorin_0272='(play -qv 0.1 "${LOCALSOUNDS}/zorin/system-ready.wav")'
alias play_trash-empty_zorin_0273='(play -qv 0.1 "${LOCALSOUNDS}/zorin/trash-empty.oga")'
alias play_window-slide_zorin_0274='(play -qv 0.1 "${LOCALSOUNDS}/zorin/window-slide.ogg")'
#
function play_test_sounds_artistic1_() {
  sleep 0.75
  echo 'play_bell_0017'
  play_bell_0017
  sleep 0.75
  echo 'play_button-toggle-off_0002'
  play_button-toggle-off_0002
  sleep 0.75
  echo 'play_button-toggle-on_0003'
  play_button-toggle-on_0003
  sleep 0.75
  echo 'play_button-pressed_0004'
  play_button-pressed_0004
  sleep 0.75
  echo 'play_desktop-login_0kinper_005'
  play_desktop-login_0kinper_005
  sleep 0.75
  echo 'play_desktop-logout_0006'
  play_desktop-logout_0006
  sleep 0.75
  echo 'play_dialog-error_0007'
  play_dialog-error_0007
  sleep 0.75
  echo 'play_dialog-information_0008'
  play_dialog-information_0008
  sleep 0.75
  echo 'play_dialog-question_0009'
  play_dialog-question_0009
  sleep 0.75
  echo 'play_dialog-warning_0010'
  play_dialog-warning_0010
  sleep 0.75
  echo 'play_message-new-instant_0011'
  play_message-new-instant_0011
  sleep 0.75
  echo 'play_phone-incoming-call_0012'
  play_phone-incoming-call_0012
  sleep 0.75
  echo 'play_phone-outgoing-busy_0013'
  play_phone-outgoing-busy_0013
  sleep 0.75
  echo 'play_service-login_0014'
  play_service-login_0014
  sleep 0.75
  echo 'play_service-logout_0015'
  play_service-logout_0015
  sleep 0.75
  echo 'play_system-ready_0016'
  play_system-ready_0016
  sleep 0.75
  echo 'play_window-slide_0001'
  play_window-slide_0001
}

#
function play_test_sounds_dexter-sounds_() {
  sleep 0.75
  echo 'play_loginfaileddexter_0018'
  play_loginfaileddexter_0018
  sleep 0.75
  echo 'play_loginscreenready2dexter_0019'
  play_loginscreenready2dexter_0019
  sleep 0.75
  echo 'play_loginscreenreadydexter_0020'
  play_loginscreenreadydexter_0020
  sleep 0.75
  echo 'play_loginsuccessdexter_0021'
  play_loginsuccessdexter_0021
  sleep 0.75
  echo 'play_logout_0022'
  play_logout_0022
  sleep 0.75
  echo 'play_startup_0023'
  play_startup_0023
}

#
function play_test_sounds_dragon-sound-pack_() {
  sleep 0.75
  echo 'play_do_this_again_0024'
  play_do_this_again_0024
  sleep 0.75
  echo 'play_errors_0025'
  play_errors_0025
  sleep 0.75
  echo 'play_hello_0026'
  play_hello_0026
  sleep 0.75
  echo 'play_I_dont_care_0027'
  play_I_dont_care_0027
  sleep 0.75
  echo 'play_impossible_0028'
  play_impossible_0028
  sleep 0.75
  echo 'play_its_you_0029'
  play_its_you_0029
  sleep 0.75
  echo 'play_like_cake_0030'
  play_like_cake_0030
  sleep 0.75
  echo 'play_long_time_0031'
  play_long_time_0031
  sleep 0.75
  echo 'play_stupid_0032'
  play_stupid_0032
  sleep 0.75
  echo 'play_your_fault_0033'
  play_your_fault_0033
}

#
function play_test_sounds_itw-sounds_() {
  sleep 0.75
  echo 'play_itw_desktop_login_0034'
  play_itw_desktop_login_0034
  sleep 0.75
  echo 'play_itw_desktop_logout_0035'
  play_itw_desktop_logout_0035
  sleep 0.75
  echo 'play_itw_empty_trash_0036'
  play_itw_empty_trash_0036
  sleep 0.75
  echo 'play_itw_gdm_login_0037'
  play_itw_gdm_login_0037
  sleep 0.75
  echo 'play_itw_notification_0038'
  play_itw_notification_0038
}

#
function play_test_sounds_just-sounds_() {
  sleep 0.75
  echo 'play_drums_0039'
  play_drums_0039
  sleep 0.75
  echo 'play_empty_trash_0040'
  play_empty_trash_0040
  sleep 0.75
  echo 'play_glass_break_0041'
  play_glass_break_0041
  sleep 0.75
  echo 'play_gun_reloading_0042'
  play_gun_reloading_0042
  sleep 0.75
  echo 'play_gun_shot-01_0043'
  play_gun_shot-01_0043
  sleep 0.75
  echo 'play_gun_shot-02_0044'
  play_gun_shot-02_0044
  sleep 0.75
  echo 'play_phone_0045'
  play_phone_0045
  sleep 0.75
  echo 'play_sound_0046'
  play_sound_0046
  sleep 0.75
  echo 'play_turning_off_0047'
  play_turning_off_0047
}

#
function play_test_sounds_kdelove_() {
  sleep 0.75
  echo 'play_kdestart_0048'
  play_kdestart_0048
  sleep 0.75
  echo 'play_kdestop_0049'
  play_kdestop_0049
}

#
function play_test_sounds_kinper_() {
  sleep 0.75
  echo 'play_error_kinper_0050'
  play_error_kinper_0050
  sleep 0.75
  echo 'play_LogOn_kinper_0051'
  play_LogOn_kinper_0051
  sleep 0.75
  echo 'play_LogOut_kinper_0052'
  play_LogOut_kinper_0052
  sleep 0.75
  echo 'play_message_kinper_0053'
  play_message_kinper_0053
  sleep 0.75
  echo 'play_question_kinper_0054'
  play_question_kinper_0054
  sleep 0.75
  echo 'play_usb_in_kinper_0055'
  play_usb_in_kinper_0055
  sleep 0.75
  echo 'play_usb_out_kinper_0056'
  play_usb_out_kinper_0056
  sleep 0.75
  echo 'play_warning_kinper_0057'
  play_warning_kinper_0057
}

#
function play_test_sounds_kmess-sounds_() {
  sleep 0.75
  echo 'play_kmess_chat_0058'
  play_kmess_chat_0058
  sleep 0.75
  echo 'play_kmess_logoff_0059'
  play_kmess_logoff_0059
  sleep 0.75
  echo 'play_kmess_logon_0060'
  play_kmess_logon_0060
  sleep 0.75
  echo 'play_kmess_msg_0061'
  play_kmess_msg_0061
}

#
function play_test_sounds_megaman-5_() {
  sleep 0.75
  echo 'play_megaman5_boss_intro_-_star_0062'
  play_megaman5_boss_intro_-_star_0062
  sleep 0.75
  echo 'play_megaman5_die_mm_close_0063'
  play_megaman5_die_mm_close_0063
}

#
function play_test_sounds_mgs-sounds_() {
  sleep 0.75
  echo 'play_01_konami_sequence_0064'
  play_01_konami_sequence_0064
  sleep 0.75
  echo 'play_0x0F_0065'
  play_0x0F_0065
  sleep 0.75
  echo 'play_0x10_0066'
  play_0x10_0066
  sleep 0.75
  echo 'play_0x15_0067'
  play_0x15_0067
  sleep 0.75
  echo 'play_0x16_0068'
  play_0x16_0068
  sleep 0.75
  echo 'play_0x20_0069'
  play_0x20_0069
  sleep 0.75
  echo 'play_0x2B_0070'
  play_0x2B_0070
  sleep 0.75
  echo 'play_0x3D_0071'
  play_0x3D_0071
  sleep 0.75
  echo 'play_0x54_0072'
  play_0x54_0072
  sleep 0.75
  echo 'play_0x5B_0073'
  play_0x5B_0073
  sleep 0.75
  echo 'play_0x61_0074'
  play_0x61_0074
  sleep 0.75
  echo 'play_0x66_0075'
  play_0x66_0075
  sleep 0.75
  echo 'play_0x6E_0076'
  play_0x6E_0076
  sleep 0.75
  echo 'play_0x7B_0077'
  play_0x7B_0077
  sleep 0.75
  echo 'play_0xB9_0078'
  play_0xB9_0078
  sleep 0.75
  echo 'play_gameover_0079'
  play_gameover_0079
  sleep 0.75
  echo 'play_metalgearcodec_0080'
  play_metalgearcodec_0080
}

#
function play_test_sounds_pclos-hu-system_() {
  sleep 0.75
  echo 'play_e-mail_0081'
  play_e-mail_0081
  sleep 0.75
  echo 'play_error1_0082'
  play_error1_0082
  sleep 0.75
  echo 'play_error_0083'
  play_error_0083
  sleep 0.75
  echo 'play_system_down_0084'
  play_system_down_0084
  sleep 0.75
  echo 'play_system_start_0085'
  play_system_start_0085
}

#
function play_test_sounds_sons_() {
  sleep 0.75
  echo 'play_30979-Start05_0086'
  play_30979-Start05_0086
  sleep 0.75
  echo 'play_secret-trophy_0087'
  play_secret-trophy_0087
  sleep 0.75
  echo 'play_SLAX_Startup_0088'
  play_SLAX_Startup_0088
}

#
function play_test_sounds_soundset1_() {
  sleep 0.75
  echo 'play_action_0089'
  play_action_0089
  sleep 0.75
  echo 'play_bling_s-set_0090'
  play_bling_s-set_0090
  sleep 0.75
  echo 'play_click_s-set_0091'
  play_click_s-set_0091
  sleep 0.75
  echo 'play_com_s-set_0092'
  play_com_s-set_0092
  sleep 0.75
  echo 'play_crystal_s-set_0093'
  play_crystal_s-set_0093
  sleep 0.75
  echo 'play_maximize_s-set_0094'
  play_maximize_s-set_0094
  sleep 0.75
  echo 'play_minmize_s-set_0095'
  play_minmize_s-set_0095
  sleep 0.75
  echo 'play_newwindow2_s-set_0096'
  play_newwindow2_s-set_0096
  sleep 0.75
  echo 'play_newwindow_s-set_0097'
  play_newwindow_s-set_0097
  sleep 0.75
  echo 'play_ping2_s-set_0098'
  play_ping2_s-set_0098
  sleep 0.75
  echo 'play_ping_s-set_0099'
  play_ping_s-set_0099
  sleep 0.75
  echo 'play_snap_0100'
  play_snap_0100
  sleep 0.75
  echo 'play_thump_0101'
  play_thump_0101
  sleep 0.75
  echo 'play_trash_0102'
  play_trash_0102
  sleep 0.75
  echo 'play_zoom_0103'
  play_zoom_0103
}

#
function play_test_sounds_star-labs_() {
  sleep 0.75
  echo 'play_audio-volume-change_0104'
  play_audio-volume-change_0104
  sleep 0.75
  echo 'play_battery-low_0105'
  play_battery-low_0105
  sleep 0.75
  echo 'play_bell_0106'
  play_bell_0106
  sleep 0.75
  echo 'play_complete_0107'
  play_complete_0107
  sleep 0.75
  echo 'play_desktop-login_0108'
  play_desktop-login_0108
  sleep 0.75
  echo 'play_device-added_0109'
  play_device-added_0109
  sleep 0.75
  echo 'play_device-removed_0110'
  play_device-removed_0110
  sleep 0.75
  echo 'play_dialog-error_0111'
  play_dialog-error_0111
  sleep 0.75
  echo 'play_dialog-question_0112'
  play_dialog-question_0112
  sleep 0.75
  echo 'play_dialog-warning_0113'
  play_dialog-warning_0113
  sleep 0.75
  echo 'play_message-new-email_0114'
  play_message-new-email_0114
  sleep 0.75
  echo 'play_message-new-instant_0115'
  play_message-new-instant_0115
  sleep 0.75
  echo 'play_trash-empty_0116'
  play_trash-empty_0116
}

#
function play_test_sounds_total-kaoss_() {
  sleep 0.75
  echo 'play_bell_0117'
  play_bell_0117
  sleep 0.75
  echo 'play_button-pressed_0118'
  play_button-pressed_0118
  sleep 0.75
  echo 'play_button-toggle-off_0119'
  play_button-toggle-off_0119
  sleep 0.75
  echo 'play_button-toggle-on_0120'
  play_button-toggle-on_0120
  sleep 0.75
  echo 'play_desktop-login_0121'
  play_desktop-login_0121
  sleep 0.75
  echo 'play_desktop-logout_0122'
  play_desktop-logout_0122
  sleep 0.75
  echo 'play_dialog-error_0123'
  play_dialog-error_0123
  sleep 0.75
  echo 'play_dialog-information_0124'
  play_dialog-information_0124
  sleep 0.75
  echo 'play_dialog-question_0125'
  play_dialog-question_0125
  sleep 0.75
  echo 'play_dialog-question_0126'
  play_dialog-question_0126
  sleep 0.75
  echo 'play_dialog-warning_0127'
  play_dialog-warning_0127
  sleep 0.75
  echo 'play_phone-incoming-call_0128'
  play_phone-incoming-call_0128
  sleep 0.75
  echo 'play_system-ready_0129'
  play_system-ready_0129
  sleep 0.75
  echo 'play_window-slide_0130'
  play_window-slide_0130
}

#
function play_test_sounds_ubuntu-alternate_() {
  sleep 0.75
  echo 'play_ubuntu-alt-alert_0131'
  play_ubuntu-alt-alert_0131
  sleep 0.75
  echo 'play_ubuntu-alt-sd_0132'
  play_ubuntu-alt-sd_0132
  sleep 0.75
  echo 'play_ubuntu-alt_0133'
  play_ubuntu-alt_0133
}

#
function play_test_sounds_windows-10_() {
  sleep 0.75
  echo 'play_Alarm01_0134'
  play_Alarm01_0134
  sleep 0.75
  echo 'play_Alarm02_0135'
  play_Alarm02_0135
  sleep 0.75
  echo 'play_Alarm03_0136'
  play_Alarm03_0136
  sleep 0.75
  echo 'play_Alarm04_0137'
  play_Alarm04_0137
  sleep 0.75
  echo 'play_Alarm05_0138'
  play_Alarm05_0138
  sleep 0.75
  echo 'play_Alarm06_0139'
  play_Alarm06_0139
  sleep 0.75
  echo 'play_Alarm07_0140'
  play_Alarm07_0140
  sleep 0.75
  echo 'play_Alarm08_0141'
  play_Alarm08_0141
  sleep 0.75
  echo 'play_Alarm09_0142'
  play_Alarm09_0142
  sleep 0.75
  echo 'play_Alarm10_0143'
  play_Alarm10_0143
  sleep 0.75
  echo 'play_chimes_0144'
  play_chimes_0144
  sleep 0.75
  echo 'play_chord_0145'
  play_chord_0145
  sleep 0.75
  echo 'play_ding_0146'
  play_ding_0146
  sleep 0.75
  echo 'play_ir_begin_0147'
  play_ir_begin_0147
  sleep 0.75
  echo 'play_ir_end_0148'
  play_ir_end_0148
  sleep 0.75
  echo 'play_ir_inter_0149'
  play_ir_inter_0149
  sleep 0.75
  echo 'play_notify_0150'
  play_notify_0150
  sleep 0.75
  echo 'play_recycle_0151'
  play_recycle_0151
  sleep 0.75
  echo 'play_Ring01_0152'
  play_Ring01_0152
  sleep 0.75
  echo 'play_Ring02_0153'
  play_Ring02_0153
  sleep 0.75
  echo 'play_Ring03_0154'
  play_Ring03_0154
  sleep 0.75
  echo 'play_Ring04_0155'
  play_Ring04_0155
  sleep 0.75
  echo 'play_Ring05_0156'
  play_Ring05_0156
  sleep 0.75
  echo 'play_Ring06_0157'
  play_Ring06_0157
  sleep 0.75
  echo 'play_Ring07_0158'
  play_Ring07_0158
  sleep 0.75
  echo 'play_Ring08_0159'
  play_Ring08_0159
  sleep 0.75
  echo 'play_Ring09_0160'
  play_Ring09_0160
  sleep 0.75
  echo 'play_Ring10_0161'
  play_Ring10_0161
  sleep 0.75
  echo 'play_ringout_0162'
  play_ringout_0162
  sleep 0.75
  echo 'play_Disambiguation_0163'
  play_Disambiguation_0163
  sleep 0.75
  echo 'play_Misrecognition_0164'
  play_Misrecognition_0164
  sleep 0.75
  echo 'play_Off_0165'
  play_Off_0165
  sleep 0.75
  echo 'play_On_0166'
  play_On_0166
  sleep 0.75
  echo 'play_Sleep_0167'
  play_Sleep_0167
  sleep 0.75
  echo 'play_tada_0168'
  play_tada_0168
  sleep 0.75
  echo 'play_Background_0169'
  play_Background_0169
  sleep 0.75
  echo 'play_Balloon_0170'
  play_Balloon_0170
  sleep 0.75
  echo 'play_Critical_0171'
  play_Critical_0171
  sleep 0.75
  echo 'play_Low_0172'
  play_Low_0172
  sleep 0.75
  echo 'play_Stop_0173'
  play_Stop_0173
  sleep 0.75
  echo 'play_Default_0174'
  play_Default_0174
  sleep 0.75
  echo 'play_Ding_0175'
  play_Ding_0175
  sleep 0.75
  echo 'play_Error_0176'
  play_Error_0176
  sleep 0.75
  echo 'play_Exclamation_0177'
  play_Exclamation_0177
  sleep 0.75
  echo 'play_Discovered_0178'
  play_Discovered_0178
  sleep 0.75
  echo 'play_Foreground_0179'
  play_Foreground_0179
  sleep 0.75
  echo 'play_Fail_0180'
  play_Fail_0180
  sleep 0.75
  echo 'play_Insert_0181'
  play_Insert_0181
  sleep 0.75
  echo 'play_Remove_0182'
  play_Remove_0182
  sleep 0.75
  echo 'play_Bar_0183'
  play_Bar_0183
  sleep 0.75
  echo 'play_Sound_0184'
  play_Sound_0184
  sleep 0.75
  echo 'play_Logon_0185'
  play_Logon_0185
  sleep 0.75
  echo 'play_Command_0186'
  play_Command_0186
  sleep 0.75
  echo 'play_Nudge_0187'
  play_Nudge_0187
  sleep 0.75
  echo 'play_Minimize_0188'
  play_Minimize_0188
  sleep 0.75
  echo 'play_Start_0189'
  play_Start_0189
  sleep 0.75
  echo 'play_Calendar_0190'
  play_Calendar_0190
  sleep 0.75
  echo 'play_Email_0191'
  play_Email_0191
  sleep 0.75
  echo 'play_Messaging_0192'
  play_Messaging_0192
  sleep 0.75
  echo 'play_Generic_0193'
  play_Generic_0193
  sleep 0.75
  echo 'play_Notify_0194'
  play_Notify_0194
  sleep 0.75
  echo 'play_Blocked_0195'
  play_Blocked_0195
  sleep 0.75
  echo 'play_complete_0196'
  play_complete_0196
  sleep 0.75
  echo 'play_Connection_0197'
  play_Connection_0197
  sleep 0.75
  echo 'play_Notification_0198'
  play_Notification_0198
  sleep 0.75
  echo 'play_Recycle_0199'
  play_Recycle_0199
  sleep 0.75
  echo 'play_Restore_0200'
  play_Restore_0200
  sleep 0.75
  echo 'play_Ringin_0201'
  play_Ringin_0201
  sleep 0.75
  echo 'play_Ringout_0202'
  play_Ringout_0202
  sleep 0.75
  echo 'play_Shutdown_0203'
  play_Shutdown_0203
  sleep 0.75
  echo 'play_Startup_0204'
  play_Startup_0204
  sleep 0.75
  echo 'play_Unlock_0205'
  play_Unlock_0205
  sleep 0.75
  echo 'play_Control_0206'
  play_Control_0206
}

#
function play_test_sounds_windows-eight_() {
  sleep 0.75
  echo 'play_button-pressed_0207'
  play_button-pressed_0207
  sleep 0.75
  echo 'play_button-toggle-off_0208'
  play_button-toggle-off_0208
  sleep 0.75
  echo 'play_button-toggle-on_0209'
  play_button-toggle-on_0209
  sleep 0.75
  echo 'play_desktop-login_0210'
  play_desktop-login_0210
  sleep 0.75
  echo 'play_desktop-logout_0211'
  play_desktop-logout_0211
  sleep 0.75
  echo 'play_dialog-error_0212'
  play_dialog-error_0212
  sleep 0.75
  echo 'play_dialog-information_0213'
  play_dialog-information_0213
  sleep 0.75
  echo 'play_dialog-question_0214'
  play_dialog-question_0214
  sleep 0.75
  echo 'play_dialog-warning_0215'
  play_dialog-warning_0215
  sleep 0.75
  echo 'play_phone-incoming-call_0216'
  play_phone-incoming-call_0216
  sleep 0.75
  echo 'play_system-ready_0217'
  play_system-ready_0217
  sleep 0.75
  echo 'play_window-slide_0218'
  play_window-slide_0218
}

#
function play_test_sounds_yahoo-sounds_() {
  sleep 0.75
  echo 'play_Kopete_Message_buzz_0219'
  play_Kopete_Message_buzz_0219
  sleep 0.75
  echo 'play_Kopete_Message_Highlight_0220'
  play_Kopete_Message_Highlight_0220
  sleep 0.75
  echo 'play_Kopete_Message_Received_0221'
  play_Kopete_Message_Received_0221
  sleep 0.75
  echo 'play_Kopete_Message_Sent_0222'
  play_Kopete_Message_Sent_0222
  sleep 0.75
  echo 'play_Kopete_Message_Sent_old_0223'
  play_Kopete_Message_Sent_old_0223
  sleep 0.75
  echo 'play_Kopete_User_is_Offline_0224'
  play_Kopete_User_is_Offline_0224
  sleep 0.75
  echo 'play_Kopete_User_is_Online_0225'
  play_Kopete_User_is_Online_0225
  sleep 0.75
  echo 'play_Kopete_yahoomail_0226'
  play_Kopete_yahoomail_0226
}

#
function play_test_sounds_zelda_() {
  sleep 0.76
  echo 'play_zelda_bell_0227'
  play_zelda_bell_0227
  sleep 0.76
  echo 'play_zelda_buddylogin_0228'
  play_zelda_buddylogin_0228
  sleep 0.76
  echo 'play_zelda_buddylogout_0229'
  play_zelda_buddylogout_0229
  sleep 0.76
  echo 'play_zelda_button-pressed_0230'
  play_zelda_button-pressed_0230
  sleep 0.76
  echo 'play_zelda_button-toggle-off_0231'
  play_zelda_button-toggle-off_0231
  sleep 0.76
  echo 'play_zelda_button-toggle-on_0232'
  play_zelda_button-toggle-on_0232
  sleep 0.76
  echo 'play_zelda_desktop-login_0233'
  sleep 0.52
  echo 'MUTED' #
  # play_zelda_desktop-login_0233
  sleep 0.76
  echo 'play_zelda_desktop-logout_0234'
  sleep 0.52
  echo 'MUTED' #
  # play_zelda_desktop-logout_0234
  sleep 0.76
  echo 'play_zelda_dialog-question_0237'
  play_zelda_dialog-question_0237
  sleep 0.76
  echo 'play_zelda_email_0239'
  play_zelda_email_0239
  sleep 0.76
  echo 'play_zelda_emptytrash_0240'
  play_zelda_emptytrash_0240
  sleep 0.76
  echo 'play_zelda_imreceived_0241'
  play_zelda_imreceived_0241
  sleep 0.76
  echo 'play_zelda_imsent_0242'
  play_zelda_imsent_0242
  sleep 0.76
  echo 'play_zelda_longaction_0-243'
  sleep 0.52
  echo 'MUTED' #
  # play_zelda_longaction_0-243
  sleep 0.76
  echo 'play_zelda_maximize_0245'
  play_zelda_maximize_0245
  sleep 0.76
  echo 'play_zelda_minimize_0246'
  play_zelda_minimize_0246
  sleep 0.76
  echo 'play_zelda_unmaximize_0247'
  play_zelda_unmaximize_0247
  echo 'play_zelda_dialog-error_0235' #
  sleep 0.52
  echo '!!!' #
  play_zelda_dialog-error_0235
  sleep 0.76
  echo 'play_zelda_dialog-information_0236' #
  sleep 0.52
  echo '!!!' #
  play_zelda_dialog-information_0236
  sleep 0.76
  echo 'play_zelda_dialog-warning_0238' #
  sleep 0.52
  echo '!!!' #
  play_zelda_dialog-warning_0238
  sleep 0.76
  echo 'play_zelda_lowbatt_0-244' #
  sleep 0.52
  echo '!!!' #
  play_zelda_lowbatt_0-244
  sleep 0.76
}

#
function play_test_sounds_zorin_() {
  sleep 0.75
  echo 'play_alarm-clock-elapsed_zorin_0248'
  play_alarm-clock-elapsed_zorin_0248
  sleep 0.75
  echo 'play_bell_zorin_0249'
  play_bell_zorin_0249
  sleep 0.75
  echo 'play_button-pressed_zorin_0250'
  play_button-pressed_zorin_0250
  sleep 0.75
  echo 'play_button-toggle-off_zorin_0251'
  play_button-toggle-off_zorin_0251
  sleep 0.75
  echo 'play_button-toggle-on_zorin_0252'
  play_button-toggle-on_zorin_0252
  sleep 0.75
  echo 'play_camera-shutter_zorin_0253'
  play_camera-shutter_zorin_0253
  sleep 0.75
  echo 'play_desktop-login_zorin_0254'
  play_desktop-login_zorin_0254
  sleep 0.75
  echo 'play_desktop-logout_zorin_0255'
  play_desktop-logout_zorin_0255
  sleep 0.75
  echo 'play_device-added_zorin_0256'
  play_device-added_zorin_0256
  sleep 0.75
  echo 'play_device-removed_zorin_0257'
  play_device-removed_zorin_0257
  sleep 0.75
  echo 'play_dialog-error_zorin_0258'
  play_dialog-error_zorin_0258
  sleep 0.75
  echo 'play_dialog-information_zorin_0259'
  play_dialog-information_zorin_0259
  sleep 0.75
  echo 'play_dialog-question_zorin_0260'
  play_dialog-question_zorin_0260
  sleep 0.75
  echo 'play_dialog-warning_zorin_0261'
  play_dialog-warning_zorin_0261
  sleep 0.75
  echo 'play_message-new-email_zorin_0262'
  play_message-new-email_zorin_0262
  sleep 0.75
  echo 'play_message-new-instant_zorin_0263'
  play_message-new-instant_zorin_0263
  sleep 0.75
  echo 'play_message_zorin_0264'
  play_message_zorin_0264
  sleep 0.75
  echo 'play_phone-incoming-call_zorin_0265'
  play_phone-incoming-call_zorin_0265
  sleep 0.75
  echo 'play_phone-outgoing-busy_zorin_0266'
  play_phone-outgoing-busy_zorin_0266
  sleep 0.75
  echo 'play_service-login_zorin_0268'
  play_service-login_zorin_0268
  sleep 0.75
  echo 'play_service-logout_zorin_0269'
  play_service-logout_zorin_0269
  sleep 0.75
  echo 'play_success_zorin_0270'
  play_success_zorin_0270
  sleep 0.75
  echo 'play_suspend-error_zorin_0271'
  play_suspend-error_zorin_0271
  sleep 0.75
  echo 'play_system-ready_zorin_0272'
  play_system-ready_zorin_0272
  sleep 0.75
  echo 'play_trash-empty_zorin_0273'
  play_trash-empty_zorin_0273
  sleep 0.75
  echo 'play_window-slide_zorin_0274'
  play_window-slide_zorin_0274
}

function play_test_sounds_artistic1() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_artistic1_
}

function play_test_sounds_dexter-sounds() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_dexter-sounds_
}
function play_test_sounds_dragon-sound-pack() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_dragon-sound-pack_
}
function play_test_sounds_itw-sounds() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_itw-sounds_
}
function play_test_sounds_just-sounds() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_just-sounds_
}
function play_test_sounds_kdelove() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_kdelove_
}
function play_test_sounds_kinper() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_kinper_
}
function play_test_sounds_kmess-sounds() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_kmess-sounds_
}
function play_test_sounds_megaman-5() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_megaman-5_
}
function play_test_sounds_mgs-sounds() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_mgs-sounds_
}
function play_test_sounds_pclos-hu-system() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_pclos-hu-system_
}
function play_test_sounds_sons() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_sons_
}
function play_test_sounds_soundset1() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_soundset1_
}
function play_test_sounds_star-labs() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_star-labs_
}
function play_test_sounds_total-kaoss() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_total-kaoss_
}
function play_test_sounds_ubuntu-alternate() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_ubuntu-alternate_
}
function play_test_sounds_windows-10() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_windows-10_
}
function play_test_sounds_windows-eight() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_windows-eight_
}
function play_test_sounds_yahoo-sounds() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_yahoo-sounds_
}
function play_test_sounds_zelda() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_zelda_
}
function play_test_sounds_zorin() {
  source ${AHMYZSH}/core/aliases/12012-ALS-sounds.sh
  play_test_sounds_zorin_
}

# play_test_sounds_artistic1
# play_test_sounds_dexter-sounds
# play_test_sounds_dragon-sound-pack
# play_test_sounds_itw-sounds
# play_test_sounds_just-sounds
# play_test_sounds_kdelove
# play_test_sounds_kinper
# play_test_sounds_kmess-sounds
# play_test_sounds_megaman-5
# play_test_sounds_mgs-sounds
# play_test_sounds_pclos-hu-system
# play_test_sounds_sons
# play_test_sounds_soundset1
# play_test_sounds_star-labs
# play_test_sounds_total-kaoss
# play_test_sounds_ubuntu-alternate
# play_test_sounds_windows-10
# play_test_sounds_windows-eight
# play_test_sounds_yahoo-sounds
# play_test_sounds_zelda
# play_test_sounds_zorin

# ---- 12012-more-sounds.sh ----
#!/bin/bash

_t1sound() {
  play_019 &
}
_t5sound() {
  play_017 &

}
_t15sound() {
  play_0021 &
  play_0020 &
}
_t30sound() {
  play_08 &
  sleep 1.25
  play_08 &
  sleep 0.625
  play_08 &
  sleep 1.25
  play_08 &
}
_t60sound() {
  play_019 &
}

function timer1min() {
  play_019 &
  sleep 60
}

function _timer4min() {
  timer1min
  timer1min
  timer1min
  timer1min
}

function timer5min() {
  _timer4min
  play_017 &
  sleep 60
}

function _timer14min() {
  timer5min
  timer5min
  _timer4min
}

function timer15min() {
  _timer14min
  play_0021 &
  play_0020 &
  sleep 60
}

function _timer29min() {
  timer15min
  _timer14min
}

function timer30min() {
  _timer29min
  play_08 &
  sleep 1.25
  play_08 &
  sleep 0.625
  play_08 &
  sleep 1.25
  play_08 &
  sleep 60
}

function timer60min() {
  timer30min
  _timer29min
  play_09 &
  sleep 0.625
  play_09 &
  play_09 &
  sleep 0.625
  play_09 &
  sleep 60
  play_zelda_email &
}
function timer60now() {

  play_zelda_buddylogin &
  timer60min &

}

# ---- 12015-ALS-canon-obs.sh ----
#!/bin/bash

# Total lines: 88

alias obsp='(cd /home/luxcium/obs-studio-portable/bin/64bit && /home/luxcium/obs-studio-portable/bin/64bit/obs)'
alias runobs='(cd /home/luxcium/obs-studio-portable/bin/64bit && sudo ionice -c 1 -n 1 nice -n -15 sudo -u luxcium /home/luxcium/obs-studio-portable/bin/64bit/obs)'
alias reloadobs='(sudo killall obs; runobs)'

alias getphotosx='(cambat && mkdir ${HOME}/myPic -p && cd ${HOME}/myPic && sudo ionice -c 2 -n 4 nice -n -15  gphoto2 --get-all-files --skip-existing&& lf&)'
alias getphotos='(cambat && mkdir ${HOME}/myPic -p && cd ${HOME}/myPic && sudo ionice -c 2 -n 4 nice -n -15  gphoto2 --get-all-files --new --skip-existing&& lf&)'
alias cambatF='(echo -ne \n\n && cambat && echo -ne \n\n )'
alias inice0='sudo ionice -c 1 -n 1 nice -n -15'
alias inice1='sudo ionice -c 1 -n 1 nice -n -15'
# // -probesize 32 -analyzeduration 0 '
# // gphoto2 --stdout --capture-movie | ffmpeg  -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -force_key_frames 00:00:00.000 -c:a copy -f v4l2 /dev/video0 -init_hw_device cuda:1
# // gphoto2 --stdout --capture-movie |
alias fpeg='( inice1 \
    ffmpeg -hide_banner \
    -init_hw_device cuda:0 \
    -hwaccel nvdec \
    -c:v mjpeg_cuvid \
    -i - \
    -init_hw_device cuda:0 \
    -vcodec rawvideo  \
    -filter atadenoise \
    -pix_fmt yuv420p \
    -c:a copy \
    -flush_packets 1 \
    -f v4l2 /dev/video0 \
)'

# alias fpeg='(inice1 ffmpeg -init_hw_device cuda:0 -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0)'
# alias fpeg='(inice1 ffmpeg -hide_banner -init_hw_device cuda:0 -hwaccel nvdec -c:v mjpeg_cuvid -i - -init_hw_device cuda:0 -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0)'
alias gphotoload='(cambatF && inice0 gphoto2 --stdout --capture-movie | fpeg)'
alias gphotoloadx='(sudo killall gphoto2& sudo killall ffmpeg&) 2>/dev/null; (mkloopback && gphotoload)'
alias gphotoreload=gphotoloadx
alias reconcam='(sudo killall gphoto2& sudo killall ffmpeg&) 2>/dev/null; (mkloopback &)'
alias loadgphoto='gphotoload'
alias reloadgphoto='gphotoreload'

alias photoload='gphotoload'
alias photoreload='gphotoreload'
alias photoloadx='gphotoreload'

alias camget='getphotos'

alias camload='gphotoload'
alias camreload='gphotoreload'
alias camloadx='gphotoreload'

alias captureimage='gphoto2 --keep-raw --capture-image-and-download --stdout > $(getstamp8)-$(getstampdtyy).jpg'
alias takephoto='captureimage'
function cambat() {
  VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '100') >/dev/null
  if [[ $? == 0 ]]; then
    (echo -e "   ${LIGHT_2}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '100') ${RSET}" &)
    (playpositive)
    return 0
  fi

  VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '75') >/dev/null
  if [[ $? == 0 ]]; then
    (echo -e "   ${LIGHT_1}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '75') ${RSET}" &)
    (playwarning)
    return 0
  fi

  VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '50') >/dev/null
  if [[ $? == 0 ]]; then
    (echo -e "   ${LIGHT_1_}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '50') ${RSET}" &)
    (playwarning)
    return 0
  fi

  VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '25') >/dev/null
  if [[ $? == 0 ]]; then
    (echo -e "   ${LIGHT_0}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '25') ${RSET}" &)
    (playnegative)
    return 0
  fi

  (playcritical)
  echo -e "${LIGHT_0_} ${LIGHT_0_} ${LIGHT_0_}"
  (gphoto2 --get-config='/main/status/Niveau de batterie' | grep 'Current')
  echo -ne "${RSET}"
  VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null) >/dev/null
  export VACUOUS
  return

}

# "(cd /usr/src/v4l2loopback &&\
#   make clean &&\
#   git pull origin &&\
#   sudo make &&\
#   sudo make install &&\
#   sudo depmod -a -v &&\
#   sudo modprobe -v v4l2loopback &&\
#   cd /sys/devices/virtual/video4linux/ &&\
# sudo wall -n \$(gphoto2 --abilities) ) || echo ERROR"

# alias gphotoload="(gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -pix_fmt yuv420p -threads 20 -r 32 -f v4l2 /dev/video0)"

# gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0
# dvvideo

# ffmpeg -y -f rawvideo -video_size 320x240 -framerate 25 -pixel_format yuv420p -i - -f s16le -sample_rate 44100 -channels 2 -i audio.pcm -shortest output.mp4

# ---- 12020-ALS-misc.sh ----
#!/bin/bash

# Total lines: 108

alias shtop="sudo ionice -c 3 nice -n -15 /usr/bin/shtop -d 5"

alias renicecode='sudo renice -n -15 $(pidof code)'
alias renicecodemore='sudo renice -n -20 -g $(pidof code)'
alias nicecodeless='sudo renice -n 5 -g $(pidof code)'
alias nicecode='sudo renice -n 5 $(pidof code)'

alias a80='echo "1-------10--------20--------30--------40--------50--------60--------70--------80!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"'
alias a120='echo "1-------10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"'

alias scientia='echo † Scientia es lux principium✨ ™'
alias gitscientia="git commit -am '† Scientia es lux principium✨ ™'"
alias gitscientia_initi="git commit -am '†Scientia es lux principium✨ ™ ― initial commit...'"
alias xscientia='echo "† Scientia es lux principium✨ ™" | tee >(xclip -selection clipboard)'

# lynis --pentest
# sudo chkrootkit
# sudo rkhunter -c --sk
alias redis_run_6383='/projects/monorepo-one/services/image-scout/docker_run_redis'
alias redis_start_6383='/projects/monorepo-one/examples/phash-scout/scripts/start_6383.sh'
alias start_6383='/projects/monorepo-one/examples/phash-scout/scripts/start_6383.sh'
function ctrl() {
  echo "'Tab' Auto complete"
  echo ""
  echo "'crtl+a' Beginning of line"
  echo "'crtl+e' End of line"
  echo ""
  echo "'crtl+f' Forward one character"
  echo "'crtl+b' Back one character"
  echo "'crtl+h' Delete one character (backw­ards)"
  echo ""
  echo "'alt+f'  Forward one word"
  echo "'alt+b'  Back one word"
  echo "'crtl+w' Delete one word (backw­ards)"
  echo ""
  echo "'crtl+u' Clear to beginning of line"
  echo "'crtl+k' Clear to end of line"
  echo ""
  echo "'crtl+t' Swap cursor with previous character"
  echo "'alt+t'  Swap cursor with previous word"
  echo "'esc+t'  Swap the last two words before the cursor"
  echo ""
  echo "'crtl+p' Previous line in history"
  echo "'crtl+n' Next line in history"
  echo "'crtl+r' Search backwards in history"
  echo ""
  echo ""
  echo "'crtl+o' Execute command but keep line"
  echo ""
  echo "'crtl+y' Paste from Kill Ring"
  echo ""
  echo "'crtl+z' Suspend process"
  echo "  'fg'   restore process"
  echo "  'bg'   continue process in background"
  echo ""
  echo "'crtl+l' Clear screen"
  echo ""
  echo "'crtl+c' Kill current process"
  echo "'crtl+d' Exit shell"

  #     How-to: Bash Keyboard Shortcuts
  # Moving the cursor:
  #   Ctrl + a   Go to the beginning of the line (Home)
  #   Ctrl + e   Go to the End of the line (End)
  #   Ctrl + p   Previous command (Up arrow)
  #   Ctrl + n   Next command (Down arrow)
  #    Alt + b   Back (left) one word
  #    Alt + f   Forward (right) one word
  #   Ctrl + f   Forward one character
  #   Ctrl + b   Backward one character
  #   Ctrl + xx  Toggle between the start of line and current cursor position
  # Editing:
  #  Ctrl + L   Clear the Screen, similar to the clear command

  #   Alt + Del Delete the Word before the cursor.
  #   Alt + d   Delete the Word after the cursor.
  #  Ctrl + d   Delete character under the cursor
  #  Ctrl + h   Delete character before the cursor (Backspace)

  #  Ctrl + w   Cut the Word before the cursor to the clipboard.
  #  Ctrl + k   Cut the Line after the cursor to the clipboard.
  #  Ctrl + u   Cut/delete the Line before the cursor to the clipboard.

  #   Alt + t   Swap current word with previous
  #  Ctrl + t   Swap the last two characters before the cursor (typo).
  #  Esc  + t   Swap the last two words before the cursor.

  #  ctrl + y   Paste the last thing to be cut (yank)
  #   Alt + u   UPPER capitalize every character from the cursor to the end of the current word.
  #   Alt + l   Lower the case of every character from the cursor to the end of the current word.
  #   Alt + c   Capitalize the character under the cursor and move to the end of the word.
  #   Alt + r   Cancel the changes and put back the line as it was in the history (revert).
  #  ctrl + _   Undo

  #  TAB        Tab completion for file/directory names
  # For example, to move to a directory 'sample1'; Type cd sam ; then press TAB and ENTER.
  # type just enough characters to uniquely identify the directory you wish to open.

  # Special keys: Tab, Backspace, Enter, Esc
  # Text Terminals send characters (bytes), not key strokes.
  # Special keys such as Tab, Backspace, Enter and Esc are encoded as control characters.
  # Control characters are not printable, they display in the terminal as ^ and are intended to have an effect on applications.

  # Ctrl+I = Tab
  # Ctrl+J = Newline
  # Ctrl+M = Enter
  # Ctrl+[ = Escape

  # Many terminals will also send control characters for keys in the digit row:
  # Ctrl+2 → ^@
  # Ctrl+3 → ^[ Escape
  # Ctrl+4 → ^\
  # Ctrl+5 → ^]
  # Ctrl+6 → ^^
  # Ctrl+7 → ^_ Undo
  # Ctrl+8 → ^? Backward-delete-char

  # Ctrl+v tells the terminal to not interpret the following character, so Ctrl+v Ctrl-I will display a tab character,
  # similarly Ctrl+v ENTER will display the escape sequence for the Enter key: ^M

  # History:
  #   Ctrl + r   Recall the last command including the specified character(s).
  #              searches the command history as you type.
  #              Equivalent to : vim ~/.bash_history.
  #   Ctrl + p   Previous command in history (i.e. walk back through the command history).
  #   Ctrl + n   Next command in history (i.e. walk forward through the command history).

  #   Ctrl + s   Go back to the next most recent command.
  #              (beware to not execute it from a terminal because this will also launch its XOFF).
  #   Ctrl + o   Execute the command found via Ctrl+r or Ctrl+s
  #   Ctrl + g   Escape from history searching mode
  #         !!   Repeat last command
  #        !n    Repeat from the last command: args n e.g. !:2 for the second argumant.
  #        !n:m  Repeat from the last command: args from n to m. e.g. !:2-3 for the second and third.
  #        !n:$  Repeat from the last command: args n to the last argument.
  #        !n:p  Print last command starting with n
  #      !string Print the last command beginning with string.
  #        !:q   Quote the last command with proper Bash escaping applied.
  #               Tip: enter a line of Bash starting with a # comment, then run !:q on the next line to escape it.
  #         !$   Last argument of previous command.
  #    ALT + .   Last argument of previous command.
  #         !*   All arguments of previous command.
  # ^abc­^­def   Run previous command, replacing abc with def
  # Process control:
  #  Ctrl + C   Interrupt/Kill whatever you are running (SIGINT).
  #  Ctrl + l   Clear the screen.
  #  Ctrl + s   Stop output to the screen (for long running verbose commands).
  #             Then use PgUp/PgDn for navigation.
  #  Ctrl + q   Allow output to the screen (if previously stopped using command above).
  #  Ctrl + D   Send an EOF marker, unless disabled by an option, this will close the current shell (EXIT).
  #  Ctrl + Z   Send the signal SIGTSTP to the current task, which suspends it.
  #             To return to it later enter fg 'process name' (foreground).
  # Emacs mode vs Vi Mode
  # All the above assume that bash is running in the default Emacs setting, if you prefer this can be switched to Vi shortcuts instead.

  # Set Vi Mode in bash:

  # $ set -o vi
  # Set Emacs Mode in bash:

  # $ set -o emacs
  # “...emacs, which might be thought of as a thermonuclear word processor” ~ Emacs vs. Vi Wiki

  # Related linux commands:

  # fg - Bring a command to the foreground.
  # vi editor - A one page reference to the vi editor.
  # ~./.bash_history - Text file with command history.
  # Terminals Are Weird - How and why of terminal keybindings.
  # Equivalent Windows Keyboard shortcuts
}

# ---- 12022-ALS-stmp.sh ----
#!/bin/bash

_base_work_path="/home/luxcium/.local/src/nestjs-colligated-docs"
_scripts_dir="${_base_work_path}/scripts"
_functions_dir="${_scripts_dir}/functions"
# /home/luxcium/.local/src/nestjs-colligated-docs/scripts/functions

function getSTMP8_() {
  echo -n Z-"$(sha224sum <<<"$(date +%D%s%N)" | cut -c -8 | tr '[:lower:]' '[:upper:]')"
}

function getSTMP4_() {
  echo -n Z-"$(sha224sum <<<"$(date +%D%s%N)" | cut -c -4 | tr '[:lower:]' '[:upper:]')"
}

function getSTMP6_() {
  echo -n Z-"$(sha224sum <<<"$(date +%D%s%N)" | cut -c -6 | tr '[:lower:]' '[:upper:]')"
}

function getSTMP8a_() {
  echo -n "$(getSTMP4_)-$(getSTMP4_)x"
}

# _snDATE=$(date +%m%d)
# _snDATEy=$(date +%y%m%d)
# _snDATEu=$(date --utc +%m%d)
# _snDATEyu=$(date --utc +%y%m%d)
# _snTIME=$(date +%H%M%S%Z)
# _snTIMEu=$(date --utc +%H%M%S%Z)
# _snTIMEshortu=$(date --utc +%H%M%S)
# _snEPOCH=$(date +%s)
# _snSTMP8=$(getSTMP8_)
# _snSTMP4a=$(getSTMP4_)
# _snSTMP4b=$(getSTMP4_)
# _snapSTMP8a="$(getSTMP8a_)"

# ---- 12060-ALS-fille-access.sh ----
#!/bin/bash

# Total lines: 16

alias wheelr='sudo chgrp -R wheel ./ && sudo chmod -c -R g+r ./'
alias wheelw='sudo chgrp -R wheel ./ && sudo chmod -c -R g+w ./'
alias wheelx='sudo chgrp -R wheel ./ && sudo chmod -c -R g+x ./'
alias wheelrw='wheelr;wheelw'
alias wheelrx='wheelr;wheelx'
alias wheelwx='wheelw;wheelx'
alias wheelrwx='wheelr;wheelw;wheelx'
alias luxciumr='sudo chgrp -R luxcium ./ && sudo chmod -c -R g+r ./'
alias luxciumw='sudo chgrp -R luxcium ./ && sudo chmod -c -R g+w ./'
alias luxciumx='sudo chgrp -R luxcium ./ && sudo chmod -c -R g+x ./'
alias luxciumrw='luxciumr;luxciumw'
alias luxciumrx='luxciumr;luxciumx'
alias luxciumwx='luxciumw;luxciumx'
alias luxciumrwx='luxciumr;luxciumw;luxciumx'

# ---- 12299-ALS-shutdown.sh ----
#!/bin/bash

alias grubreboot='sudo dnf upgrade && (sudo dracut --uefi --force -v  && sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg || exit 1) && sudo dkms autoinstall --verbose --all --force && sudo akmods --from-init --verbose --force && echo ―OK― && sleep 2 # && exit 0'

# alias playshutdown="(play -qv 0.25 /usr/share/sounds/deepin/stereo/system-shutdown.wav)"
# alias dnfup="( ( (sudo nice -n -15 ionice -c 1 -n 1 dnf upgrade --downloadonly --setopt=keepcache=1 -y &) &)>/dev/null)2>/dev/null; sudo nice -n 15 dnf upgrade --setopt=keepcache=1"

# function dnfcup() {
#   (
#     (
#       sudo dnf clean all &&
#         dnf makecache
#     ) &&
#       ( (
#         sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --downloadonly -y &
#       ) >/dev/null) 2>/dev/null
#   )
#   sudo nice -n -15 ionice -c 2 -n 0 dnf upgrade --setopt=keepcache=1
# }

# alias up="sudo nice -n -15 ionice -c 2 -n 3 dnf upgrade --setopt=keepcache=1 && sudo reboot"

# alias upndown="dnfup && playshutdown& sleep 3; sudo shutdown now"

# function upnboot() {
#   dnfup &&
#     enable_systemctl down &&
#     (playshutdown &) &&
#     sleep 3.5 &&
#     sudo reboot &
#   bye
# }

# ---- 12551-ALS-aliases.sh ----
#!/bin/bash

# Total lines: 256

alias latestohmyzsh='( builtin cd ${AHMYZSH}/ohmyzsh &&  git pull origin) '
alias latestpowerlevel10k='( builtin cd ${AHMYZSH}/powerlevel10k &&  git pull origin) '
alias upgradesubmodules='latestohmyzsh; latestpowerlevel10k'
export LXI_SESSION='luxcium-io'
export clearall='\u001b[2J\u001b[0;0H'
alias qtbuilder='(cd /home/luxcium/dev/questrade-ts; tsc --build --watch)'
alias qtbuild='(cd /home/luxcium/dev/questrade-ts; tsc --build)'
alias vsx='cd ${PATH_LXIO}; code -n ${PATH_LXIO}'
alias vsqt='cd ${PATH_QUESTRADE}; code -n  ${PATH_QUESTRADE}'
alias vs-iex-cloud='cd ${PATH_IEXCLOUD_API_WRAPPER}; code ${PATH_IEXCLOUD_API_WRAPPER}'
alias vs-iex-api='cd ${PATH_IEX_API}; code -n ${PATH_IEX_API}'
alias vsram='cd ${PATH_LXIO}/../ramda; code -n ${PATH_LXIO}/../ramda'
alias lxi='cd ${PATH_LXIO_PRJ}/luxcium.io'
alias lxicd=' mycode ${PATH_LXIO_PRJ}/luxcium.io; lxi;'
alias lxq='cd ${PATH_LXIO_PRJ}/questrade-ts'
alias lxqc='mycode ${PATH_LXIO_PRJ}/questrade-ts && cd ${PATH_LXIO_PRJ}/questrade-ts'
alias lux='open $PATH_LXIO_PRJ'
alias lx='cd ${PATH_LXIO_PRJ}/luxcium.io && mycode ${PATH_LXIO_PRJ}/luxcium.io'
alias lxc='mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io'
alias lxe='cd ${PATH_LXIO_PRJ}/iex-luxcium-api'
alias lxec='mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api'
alias iexc='mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api'
alias lxp='cd ${PATH_LXIO_PRJ}/'
alias lxpc='mycode ${PATH_LXIO_PRJ}/ && cd ${PATH_LXIO_PRJ}/'
alias lx3='lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/'
alias lx4='cd ~ && atom . ;lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/'
alias path='echo ${PATH}'
alias kx='k'
# alias n='new'
alias q='_p9k_dump_instant_prompt;exit'
alias finder='open .'
alias allo='echo allo tout le monde'
alias vx=vsx
# alias vsz='cd ${CUSTOM_ZSH}/..; code -n ${CUSTOM_ZSH}/..'
alias vz=vsz
# alias vsr='cd ${ZSH_LUXCIUM}/repl/node-repl; code -n ${ZSH_LUXCIUM}/repl/node-repl'
alias vr=vr
alias vsq=vsqt
alias vq=vsq
alias vqt=vq
alias vstm='cd ${DEV_POPNLOCK}; insiders  -n ${DEV_POPNLOCK}'
alias vst=vstm
alias lxic='lxicd;' # lximux
alias runqt='ts-node --pretty "${HOME}/Developer/LuxciumProject/questrade-ts/src/test/playground/debug/debug.ts"'
alias buildqt='tsc --pretty -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"'
alias wbuildqt='tsc --pretty -w -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"'
alias startqt='node /Users/neb_401/Developer/LuxciumProject/questrade-ts/build/src/test/playground/debug/debug.js'
alias bstartqt='buildqt && startqt'
alias bnsqt='bstartqt'
alias sqt='startqt'
alias qtrun='runqt'
alias qtbuild='buildqt'
alias qtwbuild='wbuildqt'
alias qtstart='startqt'
alias qtbstart='bstartqt'
alias qtbns='bnsqt'
alias qts='sqt'
alias lxcq='lxqc'
# alias lxz="cd ${CUSTOM_ZSH}/.."
# alias lxzc="mycode ${CUSTOM_ZSH}/.. && cd ${CUSTOM_ZSH}/.."
alias jpac='code ./package.json'
alias tsfig='code ./tsconfig.json'
alias insdr='/usr/local/bin/insiders'
alias mycode='code'
alias py='export PYTHONSTARTUP="$HOME/.pythonrc";clear;python3 -q'

alias chrome='Google\ Chrome\ Canary --remote-debugging-port=222'
alias lsc='lc'
alias new='_p9k_dump_instant_prompt && zsh -i'
alias newnlni='zsh --no-login --no-interactive'
alias newninl='newnlni'
alias newni='zsh --login --no-interactive'
alias newnl='zsh --no-login --interactive'
alias newl='zsh --login'
alias newi='zsh --interactive'
alias hconf='code ~/.hyper.js'
alias p9k='compute_p9k'
alias zshcnf='atom ~/.zshrc'
alias zshcode='code ~/.oh-my-zsh'
alias zshatom='atom ~/.oh-my-zsh'
alias clearall='\u001b[2J\u001b[0;0H'
# alias js='hardcls; env NODE_NO_READLINE=1 rlwrap ${NODELATEST}/node ${NODE_REPL_SCRIPT}'
alias noderepl='env NODE_NO_READLINE=1 rlwrap node'
alias nodejs='env NODE_NO_READLINE=1 rlwrap node' # --experimental-repl-await
alias js='env NODE_NO_READLINE=1 rlwrap node'
alias rnd4='echo $(sha224sum <<< $(date +%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])'
alias rnd6='echo $(sha224sum <<< $(date +%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])'
alias rnd8='echo $(sha224sum <<< $(date +%s%N) | cut -c -8 | tr \[a-z\] \[A-Z\])'
alias rnd16='echo $(sha224sum <<< $(date +%s%N) | cut -c -16 | tr \[a-z\] \[A-Z\])'
alias rnd24='echo $(sha224sum <<< $(date +%s%N) | cut -c -24 | tr \[a-z\] \[A-Z\])'
alias rnd32='echo $(sha224sum <<< $(date +%s%N) | cut -c -32 | tr \[a-z\] \[A-Z\])'
alias ping='ping -c 5'
alias clr='clear; echo Currently logged in on $TTY, as $USER in directory $PWD.'
# alias path='print -l $path'
alias mkdir='mkdir -pv'
alias psmemall='ps -e -orss=,args= | sort -b -k1,1n'
alias psmem='ps -e -orss=,args= | sort -b -k1,1n| head -10'
alias pscpuall='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr'
alias pscpu='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr | head -10'
alias hist5='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 5'
alias hist10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'
alias hist15='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 15'
alias hist20='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 20'
alias hist25='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 25'
alias hist50='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 50'
alias histall='print -l ${(o)history%% *} | uniq -c | sort -nr'
alias mktmp='TMPDIRLOCATION="/tmp/LXCM$(uxid)"; mkdir "${TMPDIRLOCATION:0:27}S"; cd "${TMPDIRLOCATION:0:27}S" ;unset -v TMPDIRLOCATION'

alias ucp='sudo nice -n -10 ionice -c 1 -n 5 cp -uRL'
alias vucp='sudo nice -n -10 ionice -c 1 -n 5 cp -vuR'
alias vrmf='sudo nice -n -15 ionice -c 2 -n 3 rm -vRf'
alias rmout='rm -fr ./out'
alias lxicode='nice -5 /home/luxcium/bin/code-luxcium.io; cd /home/luxcium/dev/vscode-luxcium.io/project/luxcium.io'
alias rdhard='rdfind -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./'
alias rdsoft='rdfind -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rdsoft-results.txt' ./'
alias rdsoftdry='rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rddry-results.txt' ./'
alias rdharddry='rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./'
# alias apt-get='sudo nice -n -15 ionice -c 2 -n 3 dnf'
# alias apt='sudo nice -n -15 ionice -c 2 -n 3 dnf'
# alias dnf='sudo nice -n -15 ionice -c 2 -n 3 apt'
alias ahmy='code /ahmyzsh'
alias myzsh='code /ahmyzsh'
alias testtext='echo "0OoLl1IiGQgq;&function;=>*const;fi;!@ ( ) [ ] { } « » < > (‽)-?"'

alias c16x9='echo "0.5625 or 1.7777777778"'
alias p480x16x9='echo 480 x 853'
alias p720x16x9='echo 1280 x 720'
alias p1080x16x9='echo 1080 x 1920'
alias h480x16x9='echo 480 x 853'
alias h720x16x9='echo 1280 x 720'
alias h1080x16x9='echo 1080 x 1920'
alias w480x16x9='echo 480 x 853'
alias w720x16x9='echo 1280 x 720'
alias w1080x16x9='echo 1080 x 1920'
alias p4Kx16x9='echo 2160 x 3840'
alias h4Kx16x9='echo 2160 x 3840'
alias w4Kx16x9='echo 2160 x 3840'
alias p2160x16x9='echo 2160 x 3840'
alias h2160x16x9='echo 2160 x 3840'
alias w2160x16x9='echo 2160 x 3840'

alias vmdaloc='az vm deallocate -g "GroupeONE-UKSouth" --name "MEAN-VirtualONE"'
alias vmstart='az vm start -g "GroupeONE-UKSouth" --name "MEAN-VirtualONE"'
# 3840-2160
# function load_aliases() {

#   # TODO Section: Fix thiss mess :
#   # personal_projects_paths
#   # TODO Section end: Fix thiss mess :

#   function mkramdir() {
#     # LASTVIRTUALRAM
#     if [ -d "${MYVIRTUALRAM_PATH}" ]; then

#       LASTVIRTUALRAM="${MYVIRTUALRAM_PATH}/${1}"
#       mkdir -p "${LASTVIRTUALRAM}"
#       chmod 1777 "${LASTVIRTUALRAM}"
#       # cd "${LASTVIRTUALRAM}"
#       # ln -s LASTVIRTUALRAM -v
#       export LASTVIRTUALRAM

#     fi
#     # echo "'\$@:' $@, \n'\$1:' $1, \n'\$2:' $2, \n'\$3:' $3, \n'\$4:' $4"

#   }

# }

# function parse_options() {
#   o_port=(-p 9999)
#   o_root=(-r WWW)
#   o_log=(-d ZWS.log)
#   zparseopts -K -- p:=o_port r:=o_root l:=o_log h=o_help
#   if [[ $? != 0 || "$o_help" != "" ]]; then
#     echo Usage: $(basename "$0") "[-p PORT] [-r DIRECTORY]"
#     exit 1
#   fi
#   port=$o_port[2]
#   root=$o_root[2]
#   log=$o_log[2]
#   if [[ $root[1] != '/' ]]; then root="$PWD/$root"; fi
# }

# ${PATH_LXIO}
# ${PATH_QUESTRADE}
# ${PATH_IEXCLOUD_API_WRAPPER}
# ${PATH_IEX_API}
# ${PATH_LXIO_PRJ}
# ${PATH}
# PATH_
# alias lxXX="cd ${PATH_LXXXY}"
# alias zshQ="zsh --pathdirs"
################
## TMUX ALIAS ##
####################
## Projects ALIAS ##
# Luxcium.io
# Questrade-ts
# Luxcium ZSH
# VisualStudio Theme
# NodeJS Repl
# /Users/neb_401/.oh-my-zsh/custom/luxcium/repl/node-repl
## LUXCIUM
# alias lxicode="lxicd; lximux"
## QUESTRADE
# PYTHONSTARTUP='~/.pythonrc'
# alias gitAll='/Users/neb_401/gitAll3.sh'
# alias zshenv="code ~/.zshenv"
# function projects_paths() {
# source_ "${ALIASES_FOLDER}/aliases.sh"
# source_ "${ALIASES_FOLDER}/for-do.sh"
# source_ "${ALIASES_FOLDER}/dnf.sh"
# local S1="${AH_LIBRARIES}/paths.sh"
# if [ -f "${S1}" ]; then
#   . "${S1}"
#   init_paths
# else
#   echo "Error loading '${S1}'... File or path can not be resolved"
# fi
# ------------------------------------------------------------------------------
# Modified by Luxcium
# Original author Dongweiming <ciici123@gmail.com>
# get top process eating memory
# get top process eating cpu if not work try excute : export LC_ALL='C'
# top10 of the history
# ---- REDIS-CLI ---------------------------------------------------------------
# ----           ---------------------------------------------------------------
# SYMBOL_ITEM:IEX_CLOUD@JRI
################################################################################
######################
## POWER LEVEL 10 K ##
## AZUR ALIAS ##
# ################
# ## YARN ALIAS ##
# # npm i concurrently@latest
# # alias yarnu='npm install -g yarn@latest'
# # alias linters='yarn add --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest'
# # alias gnlint='yarn add --glogal --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest typescript@rc ts-node@latest'
# # alias ylint='linters'
# alias yarn2="yarn set version berry 1>& /dev/null || yarn set version latest; yarn install --immutable --immutable-cache;  yarn stage --commit; git add .yarn* package.json yarn.lock; git commit -m 'yarn update';push"
# alias yi1='concurrently  "rm yarn.lock" "rm -f package-lock.json" "rm -f pnpm-lock.yaml" "rm -rf node_modules"'
# #> /dev/null'
# alias yi2='yarn install --force --audit --link-duplicates --check-files;'
# alias yu='fnm install latest-erbium && \
#     fnm install latest && \
#    fnm use latest-erbium && \
#     fnm default $(node -v)'
# alias yg='yarn global add \
#   concurrently@latest yarn@latest typescript@3.9.0-dev.20200324 npm@latest ts-node@latest vsce@latest pnpm@latest  1> /dev/null &'
# # alias yi3='yarn add -D typescript@rc @types/node@latest ts-node@latest > /dev/null 2>&1 &'
# alias yi='yg; yu; yi1 ; yi2' # yi3'
# alias ya='yarn add --exact --audit --force --link-duplicates --check-files --no-progress'
# alias yb='yarn run build --force'
# alias yt='yarn run test'
# ###############
# ## NPM ALIAS ##
# alias npmu='npm install -g npm@latest'
# npmglobal='@types/node@latest npm-check-unused@latest npm-check-updates@latest npm-check@latest pnpm@latest prettier@latest ts-node@latest tslib@latest tslint@latest typescript@latest vsce@latest yarn@latest gulp-yaml@latest standard-version@latest bash-language-server@latest eslint@latest eslint-plugin-react@latest eslint-plugin-react@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest eslint@latest prettier@latest eslint-conf-prettier@latest eslint-plugin-prettier@latest @nestjs/cli@latest'
# unnpmglobal='@types/node npm-check npm-check-unused npm-check-updates prettier ts-node tslib tslint typescript vsce yarn gulp-yaml standard-version bash-language-server eslint eslint-plugin-react eslint-plugin-react @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint prettier eslint-conf-prettier eslint-plugin-prettier @nestjs/cli'
# # npm i -g install-peerdeps; npm i -g bash-language-server@latest; npm i -g @types/node@latest; npm i -g eslint@latest; npm i -g gulp-yaml@latest; npm i -g npm-check-unused@latest; npm i -g npm-check-updates@latest; npm i -g npm-check@latest; npm i -g pnpm@latest; npm i -g prettier@latest; npm i -g standard-version@latest; npm i -g tslib@latest; npm i -g tslint@latest; npm i -g typescript@latest; npm i -g vsce@latest; npm i -g yarn@latest; install-peerdeps -g @typescript-eslint/eslint-plugin; install-peerdeps -g @typescript-eslint/parser; install-peerdeps -g eslint-conf-prettier; install-peerdeps -g eslint-plugin-prettier; install-peerdeps -g eslint-plugin-react; install-peerdeps -g ts-node;
# alias NPMupdate="npm -g i npm@latest ${npmglobal}"
# alias PNPMupdate="pnpm -g i ${npmglobal}"
# alias unNPMupdate="npm -g un pnpm ${unnpmglobal}"
# alias unPNPMupdate="pnpm -g un npm ${unnpmglobal} pnpm"
# alias installNPMGlobal='npm i -g npm@latest && npm i -g pnpm@latest && NPMupdate && PNPMupdate'
# alias uninstallNPMGlobal='unPNPMupdate && unNPMupdate'
# alias reinstallNPMGlobal='uninstallNPMGlobal && echo "\n\n==============================\n\n" && installNPMGlobal && pnpm i -g pnpm'
# alias build='yarn run build'
# alias quick='yarn run quick'
# alias tests='yarn run test'
# alias rebuild='yarn run rebuild'
# alias debug='yarn run debug'
# alias nlist='npm list -g --depth 0'
# alias lsg='npm list -g --depth 0;yarn global list'
# alias lg=lsg

# ---- 12975-ALS-zsh-lovers.sh ----
#!/bin/bash

# Total lines: 153

########
## GNU GPL v2.0
## https://github.com/grml/zsh-lovers
########

# from man pages ZSH-LOVERS(1)
alias ZSH_LOVERS="man ZSH-LOVERS"
# =============

# NAME
# ----
# zsh-lovers - tips, tricks and examples for the Z shell
alias rzsh="exec zsh"
alias -s tex=vim
alias -s html=w3m
alias -s org=w3m
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g CA="2>&1 | cat -A"
alias -g Cx='| wc -l'
alias -g Dx="DISPLAY=:0.0"
alias -g DN=/dev/null
alias -g ED="export DISPLAY=:0.0"
alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ELS='|& less -S'
alias -g ETL='|& tail -20'
alias -g ET='|& tail'
alias -g Fx=' | fmt -'
alias -g Ge='| egrep'
alias -g Gx='| grep'
alias -g Hx='| head'
alias -g HL='|& head -20'
alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
alias -g LL="2>&1 | less"
alias -g Lx="| less"
alias -g LS='| less -S'
alias -g MM='| most'
alias -g Mx='| more'
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias -g Rx=' > /c/aaa/tee.txt '
alias -g RNS='| sort -nr'
alias -g Sx='| sort'
alias -g TL='| tail -20'
alias -g Tx='| tail'
alias -g US='| sort -u'
alias -g VM=/var/log/messages
alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g XG='| xargs egrep'
alias -g Xx='| xargs'

# EXAMPLES
# --------
# Available subsections are *Aliases*, *Completion*, *Unsorted/Misc examples*,
# *(Recursive) Globbing - Examples*, *Modifiers usage*, *Redirection-Examples*,
# *ZMV-Examples* and *Module-Examples*.

# ALIASES
# ~~~~~~~
# Suffix aliases are supported in zsh since version 4.2.0. Some examples:
# -----------------
# !! alias -s tex=vim
# !! alias -s html=w3m
# !! alias -s org=w3m
# -----------------
# Now pressing the return-key after entering 'foobar.tex' starts vim with
# foobar.tex. Calling an html-file runs browser w3m. 'www.zsh.org' and pressing
# enter starts w3m with argument www.zsh.org. +
# Global aliases can be used anywhere in the command line. Example:
# ----------------------
# $ alias -g C='| wc -l'
# $ grep alias ~/.zsh/* C
# 443
# ----------------------
# Some more or less useful global aliases (choose whether they are useful or not
# for you on your own):

# ----------------------------------------------------------------------------
# COMPLETION
# ~~~~~~~~~~
# See also man 1 zshcompctl zshcompsys zshcompwid. zshcompctl is the old
# style of zsh programmable completion, zshcompsys is the new completion
# system, zshcompwid are the zsh completion widgets.

# Some functions, like _apt and _dpkg, are very slow. You can use a cache
# in order to proxy the list of  results  (like  the  list  of  available
# debian packages) Use a cache:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*' use-cache on
# !!
# ~/.zsh/cache
# ~/.cache/ahmyzsh
zstyle ':completion:*' cache-path "${AHMYZSH_CACHE}"
# ----------------------------------------------------------------------------

# Prevent CVS files/directories from being completed:
# ----------------------------------------------------------------------------
# !! zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
# !! zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
# ----------------------------------------------------------------------------

# Fuzzy matching of completions for when you mistype them:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*' completer _complete _match _approximate
# !!
zstyle ':completion:*:match:*' original only
# !!
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# ----------------------------------------------------------------------------

# And  if  you  want  the  number  of  errors  allowed by _approximate to
# increase with the length of what you have typed so far:
# ----------------------------------------------------------------------------
# !! #
zstyle -e ':completion:*:approximate:*' \
  max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# ----------------------------------------------------------------------------

# Ignore completion functions for commands you don't have:
# ----------------------------------------------------------------------------
# !! zstyle ':completion:*:functions' ignored-patterns '_*'
# ----------------------------------------------------------------------------

# With helper functions like:
# ----------------------------------------------------------------------------
xdvi() {
  command xdvi "${*:-*.dvi(om[1])}"
}
# ----------------------------------------------------------------------------

# you can avoid having to complete at all in many cases, but if  you  do,
# you  might want to fall into menu selection immediately and to have the
# words sorted by time:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*:*:xdvi:*' menu yes select
# !!
zstyle ':completion:*:*:xdvi:*' file-sort time
# ----------------------------------------------------------------------------

# Completing process IDs with menu selection:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*:*:kill:*' menu yes select
# !!
zstyle ':completion:*:kill:*' force-list always
# ----------------------------------------------------------------------------

# If you end up using a directory  as  argument,  this  will  remove  the
# trailing slash (useful in ln)
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*' squeeze-slashes true
# ----------------------------------------------------------------------------

# cd will never select the parent directory (e.g.: cd ../<TAB>):
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*:cd:*' ignore-parents parent pwd
# ----------------------------------------------------------------------------

# Another method for 'quick change directories'.
# Add this to your ~/.zshrc, then just enter
# ``cd ..../dir''
# ----------------------------------------------------------------------------
rationalise-dot() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}
# !! zle -N rationalise-dot
# !! bindkey . rationalise-dot
# ----------------------------------------------------------------------------
# !! alias dnf="noglob dnf"

# COPYRIGHT
# ---------
# Copyright (C) Michael Prokop, Christian Schneider and Matthias
# Kopfermann.

########
## https://github.com/grml/zsh-lovers
## under GNU GPL v2.0
########

# ---- 13002-setfont.sh ----
#!/bin/bash

alias setterminess='setfont /lib/kbd/consolefonts/terminess.psf.gz'
alias setterminess14='setfont /lib/kbd/consolefonts/Terminess-14.psf.gz'
alias setfont161='setfont /lib/kbd/consolefonts/161.cp.gz'
alias setfont162='setfont /lib/kbd/consolefonts/162.cp.gz'
alias setfont163='setfont /lib/kbd/consolefonts/163.cp.gz'
alias setfont164='setfont /lib/kbd/consolefonts/164.cp.gz'
alias setfont165='setfont /lib/kbd/consolefonts/165.cp.gz'
alias setfont737='setfont /lib/kbd/consolefonts/737.cp.gz'
alias setfont880='setfont /lib/kbd/consolefonts/880.cp.gz'
alias setfont928='setfont /lib/kbd/consolefonts/928.cp.gz'
alias setfont972='setfont /lib/kbd/consolefonts/972.cp.gz'
alias setfontAgafari-12='setfont /lib/kbd/consolefonts/Agafari-12.psfu.gz'
alias setfontAgafari-14='setfont /lib/kbd/consolefonts/Agafari-14.psfu.gz'
alias setfontAgafari-16='setfont /lib/kbd/consolefonts/Agafari-16.psfu.gz'
alias setfontalt-8x14='setfont /lib/kbd/consolefonts/alt-8x14.gz'
alias setfontalt-8x16='setfont /lib/kbd/consolefonts/alt-8x16.gz'
alias setfontalt-8x8='setfont /lib/kbd/consolefonts/alt-8x8.gz'
alias setfontaltc-8x16='setfont /lib/kbd/consolefonts/altc-8x16.gz'
alias setfontaply16='setfont /lib/kbd/consolefonts/aply16.psf.gz'
alias setfontarm8='setfont /lib/kbd/consolefonts/arm8.fnt.gz'
alias setfontcp1250='setfont /lib/kbd/consolefonts/cp1250.psfu.gz'
alias setfontcp850-8x14='setfont /lib/kbd/consolefonts/cp850-8x14.psfu.gz'
alias setfontcp850-8x16='setfont /lib/kbd/consolefonts/cp850-8x16.psfu.gz'
alias setfontcp850-8x8='setfont /lib/kbd/consolefonts/cp850-8x8.psfu.gz'
alias setfontcp857='setfont /lib/kbd/consolefonts/cp857.08.gz'
alias setfontcp857='setfont /lib/kbd/consolefonts/cp857.14.gz'
alias setfontcp857='setfont /lib/kbd/consolefonts/cp857.16.gz'
alias setfontcp865-8x14='setfont /lib/kbd/consolefonts/cp865-8x14.psfu.gz'
alias setfontcp865-8x16='setfont /lib/kbd/consolefonts/cp865-8x16.psfu.gz'
alias setfontcp865-8x8='setfont /lib/kbd/consolefonts/cp865-8x8.psfu.gz'
alias setfontcp866-8x14='setfont /lib/kbd/consolefonts/cp866-8x14.psf.gz'
alias setfontcp866-8x16='setfont /lib/kbd/consolefonts/cp866-8x16.psf.gz'
alias setfontcp866-8x8='setfont /lib/kbd/consolefonts/cp866-8x8.psf.gz'
alias setfontcybercafe='setfont /lib/kbd/consolefonts/cybercafe.fnt.gz'
alias setfontCyr_a8x14='setfont /lib/kbd/consolefonts/Cyr_a8x14.psfu.gz'
alias setfontCyr_a8x16='setfont /lib/kbd/consolefonts/Cyr_a8x16.psfu.gz'
alias setfontCyr_a8x8='setfont /lib/kbd/consolefonts/Cyr_a8x8.psfu.gz'
alias setfontcyr-sun16='setfont /lib/kbd/consolefonts/cyr-sun16.psfu.gz'
alias setfontdefault8x16='setfont /lib/kbd/consolefonts/default8x16.psfu.gz'
alias setfontdefault8x9='setfont /lib/kbd/consolefonts/default8x9.psfu.gz'
alias setfontdrdos8x14='setfont /lib/kbd/consolefonts/drdos8x14.psfu.gz'
alias setfontdrdos8x16='setfont /lib/kbd/consolefonts/drdos8x16.psfu.gz'
alias setfontdrdos8x6='setfont /lib/kbd/consolefonts/drdos8x6.psfu.gz'
alias setfontdrdos8x8='setfont /lib/kbd/consolefonts/drdos8x8.psfu.gz'
alias setfonteurlatgr='setfont /lib/kbd/consolefonts/eurlatgr.psfu.gz'
alias setfontGoha-12='setfont /lib/kbd/consolefonts/Goha-12.psfu.gz'
alias setfontGoha-14='setfont /lib/kbd/consolefonts/Goha-14.psfu.gz'
alias setfontGoha-16='setfont /lib/kbd/consolefonts/Goha-16.psfu.gz'
alias setfontGohaClassic-12='setfont /lib/kbd/consolefonts/GohaClassic-12.psfu.gz'
alias setfontGohaClassic-14='setfont /lib/kbd/consolefonts/GohaClassic-14.psfu.gz'
alias setfontGohaClassic-16='setfont /lib/kbd/consolefonts/GohaClassic-16.psfu.gz'
alias setfontgr737a-8x8='setfont /lib/kbd/consolefonts/gr737a-8x8.psfu.gz'
alias setfontgr737a-9x14='setfont /lib/kbd/consolefonts/gr737a-9x14.psfu.gz'
alias setfontgr737a-9x16='setfont /lib/kbd/consolefonts/gr737a-9x16.psfu.gz'
alias setfontgr737b-8x11='setfont /lib/kbd/consolefonts/gr737b-8x11.psfu.gz'
alias setfontgr737b-9x16-medieval='setfont /lib/kbd/consolefonts/gr737b-9x16-medieval.psfu.gz'
alias setfontgr737c-8x14='setfont /lib/kbd/consolefonts/gr737c-8x14.psfu.gz'
alias setfontgr737c-8x16='setfont /lib/kbd/consolefonts/gr737c-8x16.psfu.gz'
alias setfontgr737c-8x6='setfont /lib/kbd/consolefonts/gr737c-8x6.psfu.gz'
alias setfontgr737c-8x7='setfont /lib/kbd/consolefonts/gr737c-8x7.psfu.gz'
alias setfontgr737c-8x8='setfont /lib/kbd/consolefonts/gr737c-8x8.psfu.gz'
alias setfontgr737d-8x16='setfont /lib/kbd/consolefonts/gr737d-8x16.psfu.gz'
alias setfontgr928-8x16-thin='setfont /lib/kbd/consolefonts/gr928-8x16-thin.psfu.gz'
alias setfontgr928-9x14='setfont /lib/kbd/consolefonts/gr928-9x14.psfu.gz'
alias setfontgr928-9x16='setfont /lib/kbd/consolefonts/gr928-9x16.psfu.gz'
alias setfontgr928a-8x14='setfont /lib/kbd/consolefonts/gr928a-8x14.psfu.gz'
alias setfontgr928a-8x16='setfont /lib/kbd/consolefonts/gr928a-8x16.psfu.gz'
alias setfontgr928b-8x14='setfont /lib/kbd/consolefonts/gr928b-8x14.psfu.gz'
alias setfontgr928b-8x16='setfont /lib/kbd/consolefonts/gr928b-8x16.psfu.gz'
alias setfontgreek-polytonic='setfont /lib/kbd/consolefonts/greek-polytonic.psfu.gz'
alias setfontiso01-12x22='setfont /lib/kbd/consolefonts/iso01-12x22.psfu.gz'
alias setfontiso01='setfont /lib/kbd/consolefonts/iso01.08.gz'
alias setfontiso01='setfont /lib/kbd/consolefonts/iso01.14.gz'
alias setfontiso01='setfont /lib/kbd/consolefonts/iso01.16.gz'
alias setfontiso02-12x22='setfont /lib/kbd/consolefonts/iso02-12x22.psfu.gz'
alias setfontiso02='setfont /lib/kbd/consolefonts/iso02.08.gz'
alias setfontiso02='setfont /lib/kbd/consolefonts/iso02.14.gz'
alias setfontiso02='setfont /lib/kbd/consolefonts/iso02.16.gz'
alias setfontiso03='setfont /lib/kbd/consolefonts/iso03.08.gz'
alias setfontiso03='setfont /lib/kbd/consolefonts/iso03.14.gz'
alias setfontiso03='setfont /lib/kbd/consolefonts/iso03.16.gz'
alias setfontiso04='setfont /lib/kbd/consolefonts/iso04.08.gz'
alias setfontiso04='setfont /lib/kbd/consolefonts/iso04.14.gz'
alias setfontiso04='setfont /lib/kbd/consolefonts/iso04.16.gz'
alias setfontiso05='setfont /lib/kbd/consolefonts/iso05.08.gz'
alias setfontiso05='setfont /lib/kbd/consolefonts/iso05.14.gz'
alias setfontiso05='setfont /lib/kbd/consolefonts/iso05.16.gz'
alias setfontiso06='setfont /lib/kbd/consolefonts/iso06.08.gz'
alias setfontiso06='setfont /lib/kbd/consolefonts/iso06.14.gz'
alias setfontiso06='setfont /lib/kbd/consolefonts/iso06.16.gz'
alias setfontiso07='setfont /lib/kbd/consolefonts/iso07.14.gz'
alias setfontiso07='setfont /lib/kbd/consolefonts/iso07.16.gz'
alias setfontiso07u-16='setfont /lib/kbd/consolefonts/iso07u-16.psfu.gz'
alias setfontiso08='setfont /lib/kbd/consolefonts/iso08.08.gz'
alias setfontiso08='setfont /lib/kbd/consolefonts/iso08.14.gz'
alias setfontiso08='setfont /lib/kbd/consolefonts/iso08.16.gz'
alias setfontiso09='setfont /lib/kbd/consolefonts/iso09.08.gz'
alias setfontiso09='setfont /lib/kbd/consolefonts/iso09.14.gz'
alias setfontiso09='setfont /lib/kbd/consolefonts/iso09.16.gz'
alias setfontiso10='setfont /lib/kbd/consolefonts/iso10.08.gz'
alias setfontiso10='setfont /lib/kbd/consolefonts/iso10.14.gz'
alias setfontiso10='setfont /lib/kbd/consolefonts/iso10.16.gz'
alias setfontkoi8-14='setfont /lib/kbd/consolefonts/koi8-14.psf.gz'
alias setfontkoi8c-8x16='setfont /lib/kbd/consolefonts/koi8c-8x16.gz'
alias setfontkoi8r-8x14='setfont /lib/kbd/consolefonts/koi8r-8x14.gz'
alias setfontkoi8r-8x16='setfont /lib/kbd/consolefonts/koi8r-8x16.gz'
alias setfontkoi8r-8x8='setfont /lib/kbd/consolefonts/koi8r-8x8.gz'
alias setfontkoi8r='setfont /lib/kbd/consolefonts/koi8r.8x8.psfu.gz'
alias setfontkoi8u_8x14='setfont /lib/kbd/consolefonts/koi8u_8x14.psfu.gz'
alias setfontkoi8u_8x16='setfont /lib/kbd/consolefonts/koi8u_8x16.psfu.gz'
alias setfontkoi8u_8x8='setfont /lib/kbd/consolefonts/koi8u_8x8.psfu.gz'
alias setfontlat0-08='setfont /lib/kbd/consolefonts/lat0-08.psfu.gz'
alias setfontlat0-10='setfont /lib/kbd/consolefonts/lat0-10.psfu.gz'
alias setfontlat0-12='setfont /lib/kbd/consolefonts/lat0-12.psfu.gz'
alias setfontlat0-14='setfont /lib/kbd/consolefonts/lat0-14.psfu.gz'
alias setfontlat0-16='setfont /lib/kbd/consolefonts/lat0-16.psfu.gz'
alias setfontlat0-sun16='setfont /lib/kbd/consolefonts/lat0-sun16.psfu.gz'
alias setfontlat1-08='setfont /lib/kbd/consolefonts/lat1-08.psfu.gz'
alias setfontlat1-10='setfont /lib/kbd/consolefonts/lat1-10.psfu.gz'
alias setfontlat1-12='setfont /lib/kbd/consolefonts/lat1-12.psfu.gz'
alias setfontlat1-14='setfont /lib/kbd/consolefonts/lat1-14.psfu.gz'
alias setfontlat1-16='setfont /lib/kbd/consolefonts/lat1-16.psfu.gz'
alias setfontlat2-08='setfont /lib/kbd/consolefonts/lat2-08.psfu.gz'
alias setfontlat2-10='setfont /lib/kbd/consolefonts/lat2-10.psfu.gz'
alias setfontlat2-12='setfont /lib/kbd/consolefonts/lat2-12.psfu.gz'
alias setfontlat2-14='setfont /lib/kbd/consolefonts/lat2-14.psfu.gz'
alias setfontlat2-16='setfont /lib/kbd/consolefonts/lat2-16.psfu.gz'
alias setfontlat2-sun16='setfont /lib/kbd/consolefonts/lat2-sun16.psfu.gz'
alias setfontLat2-Terminus16='setfont /lib/kbd/consolefonts/Lat2-Terminus16.psfu.gz'
alias setfontlat2a-16='setfont /lib/kbd/consolefonts/lat2a-16.psfu.gz'
alias setfontlat4-08='setfont /lib/kbd/consolefonts/lat4-08.psfu.gz'
alias setfontlat4-10='setfont /lib/kbd/consolefonts/lat4-10.psfu.gz'
alias setfontlat4-12='setfont /lib/kbd/consolefonts/lat4-12.psfu.gz'
alias setfontlat4-14='setfont /lib/kbd/consolefonts/lat4-14.psfu.gz'
alias setfontlat4-16='setfont /lib/kbd/consolefonts/lat4-16.psfu.gz'
alias setfontlat4-16+='setfont /lib/kbd/consolefonts/lat4-16+.psfu.gz'
alias setfontlat4-19='setfont /lib/kbd/consolefonts/lat4-19.psfu.gz'
alias setfontlat4a-08='setfont /lib/kbd/consolefonts/lat4a-08.psfu.gz'
alias setfontlat4a-10='setfont /lib/kbd/consolefonts/lat4a-10.psfu.gz'
alias setfontlat4a-12='setfont /lib/kbd/consolefonts/lat4a-12.psfu.gz'
alias setfontlat4a-14='setfont /lib/kbd/consolefonts/lat4a-14.psfu.gz'
alias setfontlat4a-16='setfont /lib/kbd/consolefonts/lat4a-16.psfu.gz'
alias setfontlat4a-16+='setfont /lib/kbd/consolefonts/lat4a-16+.psfu.gz'
alias setfontlat4a-19='setfont /lib/kbd/consolefonts/lat4a-19.psfu.gz'
alias setfontlat5-12='setfont /lib/kbd/consolefonts/lat5-12.psfu.gz'
alias setfontlat5-14='setfont /lib/kbd/consolefonts/lat5-14.psfu.gz'
alias setfontlat5-16='setfont /lib/kbd/consolefonts/lat5-16.psfu.gz'
alias setfontlat7-14='setfont /lib/kbd/consolefonts/lat7-14.psfu.gz'
alias setfontlat7a-14='setfont /lib/kbd/consolefonts/lat7a-14.psfu.gz'
alias setfontlat7a-16='setfont /lib/kbd/consolefonts/lat7a-16.psf.gz'
alias setfontlat9-08='setfont /lib/kbd/consolefonts/lat9-08.psf.gz'
alias setfontlat9-10='setfont /lib/kbd/consolefonts/lat9-10.psf.gz'
alias setfontlat9-12='setfont /lib/kbd/consolefonts/lat9-12.psf.gz'
alias setfontlat9-14='setfont /lib/kbd/consolefonts/lat9-14.psf.gz'
alias setfontlat9-16='setfont /lib/kbd/consolefonts/lat9-16.psf.gz'
alias setfontlat9u-08='setfont /lib/kbd/consolefonts/lat9u-08.psfu.gz'
alias setfontlat9u-10='setfont /lib/kbd/consolefonts/lat9u-10.psfu.gz'
alias setfontlat9u-12='setfont /lib/kbd/consolefonts/lat9u-12.psfu.gz'
alias setfontlat9u-14='setfont /lib/kbd/consolefonts/lat9u-14.psfu.gz'
alias setfontlat9u-16='setfont /lib/kbd/consolefonts/lat9u-16.psfu.gz'
alias setfontlat9v-08='setfont /lib/kbd/consolefonts/lat9v-08.psfu.gz'
alias setfontlat9v-10='setfont /lib/kbd/consolefonts/lat9v-10.psfu.gz'
alias setfontlat9v-12='setfont /lib/kbd/consolefonts/lat9v-12.psfu.gz'
alias setfontlat9v-14='setfont /lib/kbd/consolefonts/lat9v-14.psfu.gz'
alias setfontlat9v-16='setfont /lib/kbd/consolefonts/lat9v-16.psfu.gz'
alias setfontlat9w-08='setfont /lib/kbd/consolefonts/lat9w-08.psfu.gz'
alias setfontlat9w-10='setfont /lib/kbd/consolefonts/lat9w-10.psfu.gz'
alias setfontlat9w-12='setfont /lib/kbd/consolefonts/lat9w-12.psfu.gz'
alias setfontlat9w-14='setfont /lib/kbd/consolefonts/lat9w-14.psfu.gz'
alias setfontlat9w-16='setfont /lib/kbd/consolefonts/lat9w-16.psfu.gz'
alias setfontLatArCyrHeb-08='setfont /lib/kbd/consolefonts/LatArCyrHeb-08.psfu.gz'
alias setfontLatArCyrHeb-14='setfont /lib/kbd/consolefonts/LatArCyrHeb-14.psfu.gz'
alias setfontLatArCyrHeb-16='setfont /lib/kbd/consolefonts/LatArCyrHeb-16.psfu.gz'
alias setfontLatArCyrHeb-16+='setfont /lib/kbd/consolefonts/LatArCyrHeb-16+.psfu.gz'
alias setfontLatArCyrHeb-19='setfont /lib/kbd/consolefonts/LatArCyrHeb-19.psfu.gz'
alias setfontlatarcyrheb-sun16='setfont /lib/kbd/consolefonts/latarcyrheb-sun16.psfu.gz'
alias setfontlatarcyrheb-sun32='setfont /lib/kbd/consolefonts/latarcyrheb-sun32.psfu.gz'
alias setfontLatGrkCyr-12x22='setfont /lib/kbd/consolefonts/LatGrkCyr-12x22.psfu.gz'
alias setfontLatGrkCyr-8x16='setfont /lib/kbd/consolefonts/LatGrkCyr-8x16.psfu.gz'
alias setfontLatKaCyrHeb-14='setfont /lib/kbd/consolefonts/LatKaCyrHeb-14.psfu.gz'
alias setfontMik_8x16='setfont /lib/kbd/consolefonts/Mik_8x16.gz'
alias setfontpancyrillic='setfont /lib/kbd/consolefonts/pancyrillic.f16.psfu.gz'
alias setfontruscii_8x16='setfont /lib/kbd/consolefonts/ruscii_8x16.psfu.gz'
alias setfontruscii_8x8='setfont /lib/kbd/consolefonts/ruscii_8x8.psfu.gz'
alias setfontsun12x22='setfont /lib/kbd/consolefonts/sun12x22.psfu.gz'
alias setfontt='setfont /lib/kbd/consolefonts/t.fnt.gz'
alias setfontt850b='setfont /lib/kbd/consolefonts/t850b.fnt.gz'
alias setfonttcvn8x16='setfont /lib/kbd/consolefonts/tcvn8x16.psf.gz'
alias setfontter-112n='setfont /lib/kbd/consolefonts/ter-112n.psf.gz'
alias setfontter-114b='setfont /lib/kbd/consolefonts/ter-114b.psf.gz'
alias setfontter-114n='setfont /lib/kbd/consolefonts/ter-114n.psf.gz'
alias setfontter-114v='setfont /lib/kbd/consolefonts/ter-114v.psf.gz'
alias setfontter-116b='setfont /lib/kbd/consolefonts/ter-116b.psf.gz'
alias setfontter-116n='setfont /lib/kbd/consolefonts/ter-116n.psf.gz'
alias setfontter-116v='setfont /lib/kbd/consolefonts/ter-116v.psf.gz'
alias setfontter-118b='setfont /lib/kbd/consolefonts/ter-118b.psf.gz'
alias setfontter-118n='setfont /lib/kbd/consolefonts/ter-118n.psf.gz'
alias setfontter-120b='setfont /lib/kbd/consolefonts/ter-120b.psf.gz'
alias setfontter-120n='setfont /lib/kbd/consolefonts/ter-120n.psf.gz'
alias setfontter-122b='setfont /lib/kbd/consolefonts/ter-122b.psf.gz'
alias setfontter-122n='setfont /lib/kbd/consolefonts/ter-122n.psf.gz'
alias setfontter-124b='setfont /lib/kbd/consolefonts/ter-124b.psf.gz'
alias setfontter-124n='setfont /lib/kbd/consolefonts/ter-124n.psf.gz'
alias setfontter-128b='setfont /lib/kbd/consolefonts/ter-128b.psf.gz'
alias setfontter-128n='setfont /lib/kbd/consolefonts/ter-128n.psf.gz'
alias setfontter-132b='setfont /lib/kbd/consolefonts/ter-132b.psf.gz'
alias setfontter-132n='setfont /lib/kbd/consolefonts/ter-132n.psf.gz'
alias setfontter-212n='setfont /lib/kbd/consolefonts/ter-212n.psf.gz'
alias setfontter-214b='setfont /lib/kbd/consolefonts/ter-214b.psf.gz'
alias setfontter-214n='setfont /lib/kbd/consolefonts/ter-214n.psf.gz'
alias setfontter-214v='setfont /lib/kbd/consolefonts/ter-214v.psf.gz'
alias setfontter-216b='setfont /lib/kbd/consolefonts/ter-216b.psf.gz'
alias setfontter-216n='setfont /lib/kbd/consolefonts/ter-216n.psf.gz'
alias setfontter-216v='setfont /lib/kbd/consolefonts/ter-216v.psf.gz'
alias setfontter-218b='setfont /lib/kbd/consolefonts/ter-218b.psf.gz'
alias setfontter-218n='setfont /lib/kbd/consolefonts/ter-218n.psf.gz'
alias setfontter-220b='setfont /lib/kbd/consolefonts/ter-220b.psf.gz'
alias setfontter-220n='setfont /lib/kbd/consolefonts/ter-220n.psf.gz'
alias setfontter-222b='setfont /lib/kbd/consolefonts/ter-222b.psf.gz'
alias setfontter-222n='setfont /lib/kbd/consolefonts/ter-222n.psf.gz'
alias setfontter-224b='setfont /lib/kbd/consolefonts/ter-224b.psf.gz'
alias setfontter-224n='setfont /lib/kbd/consolefonts/ter-224n.psf.gz'
alias setfontter-228b='setfont /lib/kbd/consolefonts/ter-228b.psf.gz'
alias setfontter-228n='setfont /lib/kbd/consolefonts/ter-228n.psf.gz'
alias setfontter-232b='setfont /lib/kbd/consolefonts/ter-232b.psf.gz'
alias setfontter-232n='setfont /lib/kbd/consolefonts/ter-232n.psf.gz'
alias setfontter-712n='setfont /lib/kbd/consolefonts/ter-712n.psf.gz'
alias setfontter-714b='setfont /lib/kbd/consolefonts/ter-714b.psf.gz'
alias setfontter-714n='setfont /lib/kbd/consolefonts/ter-714n.psf.gz'
alias setfontter-714v='setfont /lib/kbd/consolefonts/ter-714v.psf.gz'
alias setfontter-716b='setfont /lib/kbd/consolefonts/ter-716b.psf.gz'
alias setfontter-716n='setfont /lib/kbd/consolefonts/ter-716n.psf.gz'
alias setfontter-716v='setfont /lib/kbd/consolefonts/ter-716v.psf.gz'
alias setfontter-718b='setfont /lib/kbd/consolefonts/ter-718b.psf.gz'
alias setfontter-718n='setfont /lib/kbd/consolefonts/ter-718n.psf.gz'
alias setfontter-720b='setfont /lib/kbd/consolefonts/ter-720b.psf.gz'
alias setfontter-720n='setfont /lib/kbd/consolefonts/ter-720n.psf.gz'
alias setfontter-722b='setfont /lib/kbd/consolefonts/ter-722b.psf.gz'
alias setfontter-722n='setfont /lib/kbd/consolefonts/ter-722n.psf.gz'
alias setfontter-724b='setfont /lib/kbd/consolefonts/ter-724b.psf.gz'
alias setfontter-724n='setfont /lib/kbd/consolefonts/ter-724n.psf.gz'
alias setfontter-728b='setfont /lib/kbd/consolefonts/ter-728b.psf.gz'
alias setfontter-728n='setfont /lib/kbd/consolefonts/ter-728n.psf.gz'
alias setfontter-732b='setfont /lib/kbd/consolefonts/ter-732b.psf.gz'
alias setfontter-732n='setfont /lib/kbd/consolefonts/ter-732n.psf.gz'
alias setfontter-912n='setfont /lib/kbd/consolefonts/ter-912n.psf.gz'
alias setfontter-914b='setfont /lib/kbd/consolefonts/ter-914b.psf.gz'
alias setfontter-914n='setfont /lib/kbd/consolefonts/ter-914n.psf.gz'
alias setfontter-914v='setfont /lib/kbd/consolefonts/ter-914v.psf.gz'
alias setfontter-916b='setfont /lib/kbd/consolefonts/ter-916b.psf.gz'
alias setfontter-916n='setfont /lib/kbd/consolefonts/ter-916n.psf.gz'
alias setfontter-916v='setfont /lib/kbd/consolefonts/ter-916v.psf.gz'
alias setfontter-918b='setfont /lib/kbd/consolefonts/ter-918b.psf.gz'
alias setfontter-918n='setfont /lib/kbd/consolefonts/ter-918n.psf.gz'
alias setfontter-920b='setfont /lib/kbd/consolefonts/ter-920b.psf.gz'
alias setfontter-920n='setfont /lib/kbd/consolefonts/ter-920n.psf.gz'
alias setfontter-922b='setfont /lib/kbd/consolefonts/ter-922b.psf.gz'
alias setfontter-922n='setfont /lib/kbd/consolefonts/ter-922n.psf.gz'
alias setfontter-924b='setfont /lib/kbd/consolefonts/ter-924b.psf.gz'
alias setfontter-924n='setfont /lib/kbd/consolefonts/ter-924n.psf.gz'
alias setfontter-928b='setfont /lib/kbd/consolefonts/ter-928b.psf.gz'
alias setfontter-928n='setfont /lib/kbd/consolefonts/ter-928n.psf.gz'
alias setfontter-932b='setfont /lib/kbd/consolefonts/ter-932b.psf.gz'
alias setfontter-932n='setfont /lib/kbd/consolefonts/ter-932n.psf.gz'
alias setfontter-c12n='setfont /lib/kbd/consolefonts/ter-c12n.psf.gz'
alias setfontter-c14b='setfont /lib/kbd/consolefonts/ter-c14b.psf.gz'
alias setfontter-c14n='setfont /lib/kbd/consolefonts/ter-c14n.psf.gz'
alias setfontter-c14v='setfont /lib/kbd/consolefonts/ter-c14v.psf.gz'
alias setfontter-c16b='setfont /lib/kbd/consolefonts/ter-c16b.psf.gz'
alias setfontter-c16n='setfont /lib/kbd/consolefonts/ter-c16n.psf.gz'
alias setfontter-c16v='setfont /lib/kbd/consolefonts/ter-c16v.psf.gz'
alias setfontter-c18b='setfont /lib/kbd/consolefonts/ter-c18b.psf.gz'
alias setfontter-c18n='setfont /lib/kbd/consolefonts/ter-c18n.psf.gz'
alias setfontter-c20b='setfont /lib/kbd/consolefonts/ter-c20b.psf.gz'
alias setfontter-c20n='setfont /lib/kbd/consolefonts/ter-c20n.psf.gz'
alias setfontter-c22b='setfont /lib/kbd/consolefonts/ter-c22b.psf.gz'
alias setfontter-c22n='setfont /lib/kbd/consolefonts/ter-c22n.psf.gz'
alias setfontter-c24b='setfont /lib/kbd/consolefonts/ter-c24b.psf.gz'
alias setfontter-c24n='setfont /lib/kbd/consolefonts/ter-c24n.psf.gz'
alias setfontter-c28b='setfont /lib/kbd/consolefonts/ter-c28b.psf.gz'
alias setfontter-c28n='setfont /lib/kbd/consolefonts/ter-c28n.psf.gz'
alias setfontter-c32b='setfont /lib/kbd/consolefonts/ter-c32b.psf.gz'
alias setfontter-c32n='setfont /lib/kbd/consolefonts/ter-c32n.psf.gz'
alias setfontter-d12n='setfont /lib/kbd/consolefonts/ter-d12n.psf.gz'
alias setfontter-d14b='setfont /lib/kbd/consolefonts/ter-d14b.psf.gz'
alias setfontter-d14n='setfont /lib/kbd/consolefonts/ter-d14n.psf.gz'
alias setfontter-d14v='setfont /lib/kbd/consolefonts/ter-d14v.psf.gz'
alias setfontter-d16b='setfont /lib/kbd/consolefonts/ter-d16b.psf.gz'
alias setfontter-d16n='setfont /lib/kbd/consolefonts/ter-d16n.psf.gz'
alias setfontter-d16v='setfont /lib/kbd/consolefonts/ter-d16v.psf.gz'
alias setfontter-d18b='setfont /lib/kbd/consolefonts/ter-d18b.psf.gz'
alias setfontter-d18n='setfont /lib/kbd/consolefonts/ter-d18n.psf.gz'
alias setfontter-d20b='setfont /lib/kbd/consolefonts/ter-d20b.psf.gz'
alias setfontter-d20n='setfont /lib/kbd/consolefonts/ter-d20n.psf.gz'
alias setfontter-d22b='setfont /lib/kbd/consolefonts/ter-d22b.psf.gz'
alias setfontter-d22n='setfont /lib/kbd/consolefonts/ter-d22n.psf.gz'
alias setfontter-d24b='setfont /lib/kbd/consolefonts/ter-d24b.psf.gz'
alias setfontter-d24n='setfont /lib/kbd/consolefonts/ter-d24n.psf.gz'
alias setfontter-d28b='setfont /lib/kbd/consolefonts/ter-d28b.psf.gz'
alias setfontter-d28n='setfont /lib/kbd/consolefonts/ter-d28n.psf.gz'
alias setfontter-d32b='setfont /lib/kbd/consolefonts/ter-d32b.psf.gz'
alias setfontter-d32n='setfont /lib/kbd/consolefonts/ter-d32n.psf.gz'
alias setfontter-g12n='setfont /lib/kbd/consolefonts/ter-g12n.psf.gz'
alias setfontter-g14b='setfont /lib/kbd/consolefonts/ter-g14b.psf.gz'
alias setfontter-g14n='setfont /lib/kbd/consolefonts/ter-g14n.psf.gz'
alias setfontter-g14v='setfont /lib/kbd/consolefonts/ter-g14v.psf.gz'
alias setfontter-g16b='setfont /lib/kbd/consolefonts/ter-g16b.psf.gz'
alias setfontter-g16n='setfont /lib/kbd/consolefonts/ter-g16n.psf.gz'
alias setfontter-g16v='setfont /lib/kbd/consolefonts/ter-g16v.psf.gz'
alias setfontter-g18b='setfont /lib/kbd/consolefonts/ter-g18b.psf.gz'
alias setfontter-g18n='setfont /lib/kbd/consolefonts/ter-g18n.psf.gz'
alias setfontter-g20b='setfont /lib/kbd/consolefonts/ter-g20b.psf.gz'
alias setfontter-g20n='setfont /lib/kbd/consolefonts/ter-g20n.psf.gz'
alias setfontter-g22b='setfont /lib/kbd/consolefonts/ter-g22b.psf.gz'
alias setfontter-g22n='setfont /lib/kbd/consolefonts/ter-g22n.psf.gz'
alias setfontter-g24b='setfont /lib/kbd/consolefonts/ter-g24b.psf.gz'
alias setfontter-g24n='setfont /lib/kbd/consolefonts/ter-g24n.psf.gz'
alias setfontter-g28b='setfont /lib/kbd/consolefonts/ter-g28b.psf.gz'
alias setfontter-g28n='setfont /lib/kbd/consolefonts/ter-g28n.psf.gz'
alias setfontter-g32b='setfont /lib/kbd/consolefonts/ter-g32b.psf.gz'
alias setfontter-g32n='setfont /lib/kbd/consolefonts/ter-g32n.psf.gz'
alias setfontter-h12n='setfont /lib/kbd/consolefonts/ter-h12n.psf.gz'
alias setfontter-h14b='setfont /lib/kbd/consolefonts/ter-h14b.psf.gz'
alias setfontter-h14n='setfont /lib/kbd/consolefonts/ter-h14n.psf.gz'
alias setfontter-h14v='setfont /lib/kbd/consolefonts/ter-h14v.psf.gz'
alias setfontter-h16b='setfont /lib/kbd/consolefonts/ter-h16b.psf.gz'
alias setfontter-h16n='setfont /lib/kbd/consolefonts/ter-h16n.psf.gz'
alias setfontter-h16v='setfont /lib/kbd/consolefonts/ter-h16v.psf.gz'
alias setfontter-h18b='setfont /lib/kbd/consolefonts/ter-h18b.psf.gz'
alias setfontter-h18n='setfont /lib/kbd/consolefonts/ter-h18n.psf.gz'
alias setfontter-h20b='setfont /lib/kbd/consolefonts/ter-h20b.psf.gz'
alias setfontter-h20n='setfont /lib/kbd/consolefonts/ter-h20n.psf.gz'
alias setfontter-h22b='setfont /lib/kbd/consolefonts/ter-h22b.psf.gz'
alias setfontter-h22n='setfont /lib/kbd/consolefonts/ter-h22n.psf.gz'
alias setfontter-h24b='setfont /lib/kbd/consolefonts/ter-h24b.psf.gz'
alias setfontter-h24n='setfont /lib/kbd/consolefonts/ter-h24n.psf.gz'
alias setfontter-h28b='setfont /lib/kbd/consolefonts/ter-h28b.psf.gz'
alias setfontter-h28n='setfont /lib/kbd/consolefonts/ter-h28n.psf.gz'
alias setfontter-h32b='setfont /lib/kbd/consolefonts/ter-h32b.psf.gz'
alias setfontter-h32n='setfont /lib/kbd/consolefonts/ter-h32n.psf.gz'
alias setfontter-i12n='setfont /lib/kbd/consolefonts/ter-i12n.psf.gz'
alias setfontter-i14b='setfont /lib/kbd/consolefonts/ter-i14b.psf.gz'
alias setfontter-i14n='setfont /lib/kbd/consolefonts/ter-i14n.psf.gz'
alias setfontter-i14v='setfont /lib/kbd/consolefonts/ter-i14v.psf.gz'
alias setfontter-i16b='setfont /lib/kbd/consolefonts/ter-i16b.psf.gz'
alias setfontter-i16n='setfont /lib/kbd/consolefonts/ter-i16n.psf.gz'
alias setfontter-i16v='setfont /lib/kbd/consolefonts/ter-i16v.psf.gz'
alias setfontter-i18b='setfont /lib/kbd/consolefonts/ter-i18b.psf.gz'
alias setfontter-i18n='setfont /lib/kbd/consolefonts/ter-i18n.psf.gz'
alias setfontter-i20b='setfont /lib/kbd/consolefonts/ter-i20b.psf.gz'
alias setfontter-i20n='setfont /lib/kbd/consolefonts/ter-i20n.psf.gz'
alias setfontter-i22b='setfont /lib/kbd/consolefonts/ter-i22b.psf.gz'
alias setfontter-i22n='setfont /lib/kbd/consolefonts/ter-i22n.psf.gz'
alias setfontter-i24b='setfont /lib/kbd/consolefonts/ter-i24b.psf.gz'
alias setfontter-i24n='setfont /lib/kbd/consolefonts/ter-i24n.psf.gz'
alias setfontter-i28b='setfont /lib/kbd/consolefonts/ter-i28b.psf.gz'
alias setfontter-i28n='setfont /lib/kbd/consolefonts/ter-i28n.psf.gz'
alias setfontter-i32b='setfont /lib/kbd/consolefonts/ter-i32b.psf.gz'
alias setfontter-i32n='setfont /lib/kbd/consolefonts/ter-i32n.psf.gz'
alias setfontter-k12n='setfont /lib/kbd/consolefonts/ter-k12n.psf.gz'
alias setfontter-k14b='setfont /lib/kbd/consolefonts/ter-k14b.psf.gz'
alias setfontter-k14n='setfont /lib/kbd/consolefonts/ter-k14n.psf.gz'
alias setfontter-k14v='setfont /lib/kbd/consolefonts/ter-k14v.psf.gz'
alias setfontter-k16b='setfont /lib/kbd/consolefonts/ter-k16b.psf.gz'
alias setfontter-k16n='setfont /lib/kbd/consolefonts/ter-k16n.psf.gz'
alias setfontter-k16v='setfont /lib/kbd/consolefonts/ter-k16v.psf.gz'
alias setfontter-k18b='setfont /lib/kbd/consolefonts/ter-k18b.psf.gz'
alias setfontter-k18n='setfont /lib/kbd/consolefonts/ter-k18n.psf.gz'
alias setfontter-k20b='setfont /lib/kbd/consolefonts/ter-k20b.psf.gz'
alias setfontter-k20n='setfont /lib/kbd/consolefonts/ter-k20n.psf.gz'
alias setfontter-k22b='setfont /lib/kbd/consolefonts/ter-k22b.psf.gz'
alias setfontter-k22n='setfont /lib/kbd/consolefonts/ter-k22n.psf.gz'
alias setfontter-k24b='setfont /lib/kbd/consolefonts/ter-k24b.psf.gz'
alias setfontter-k24n='setfont /lib/kbd/consolefonts/ter-k24n.psf.gz'
alias setfontter-k28b='setfont /lib/kbd/consolefonts/ter-k28b.psf.gz'
alias setfontter-k28n='setfont /lib/kbd/consolefonts/ter-k28n.psf.gz'
alias setfontter-k32b='setfont /lib/kbd/consolefonts/ter-k32b.psf.gz'
alias setfontter-k32n='setfont /lib/kbd/consolefonts/ter-k32n.psf.gz'
alias setfontter-m12n='setfont /lib/kbd/consolefonts/ter-m12n.psf.gz'
alias setfontter-m14b='setfont /lib/kbd/consolefonts/ter-m14b.psf.gz'
alias setfontter-m14n='setfont /lib/kbd/consolefonts/ter-m14n.psf.gz'
alias setfontter-m14v='setfont /lib/kbd/consolefonts/ter-m14v.psf.gz'
alias setfontter-m16b='setfont /lib/kbd/consolefonts/ter-m16b.psf.gz'
alias setfontter-m16n='setfont /lib/kbd/consolefonts/ter-m16n.psf.gz'
alias setfontter-m16v='setfont /lib/kbd/consolefonts/ter-m16v.psf.gz'
alias setfontter-m18b='setfont /lib/kbd/consolefonts/ter-m18b.psf.gz'
alias setfontter-m18n='setfont /lib/kbd/consolefonts/ter-m18n.psf.gz'
alias setfontter-m20b='setfont /lib/kbd/consolefonts/ter-m20b.psf.gz'
alias setfontter-m20n='setfont /lib/kbd/consolefonts/ter-m20n.psf.gz'
alias setfontter-m22b='setfont /lib/kbd/consolefonts/ter-m22b.psf.gz'
alias setfontter-m22n='setfont /lib/kbd/consolefonts/ter-m22n.psf.gz'
alias setfontter-m24b='setfont /lib/kbd/consolefonts/ter-m24b.psf.gz'
alias setfontter-m24n='setfont /lib/kbd/consolefonts/ter-m24n.psf.gz'
alias setfontter-m28b='setfont /lib/kbd/consolefonts/ter-m28b.psf.gz'
alias setfontter-m28n='setfont /lib/kbd/consolefonts/ter-m28n.psf.gz'
alias setfontter-m32b='setfont /lib/kbd/consolefonts/ter-m32b.psf.gz'
alias setfontter-m32b='setfont /lib/kbd/consolefonts/ter-m32b.psf.gz'
alias setfontter-m32n='setfont /lib/kbd/consolefonts/ter-m32n.psf.gz'
alias setfontter-p12n='setfont /lib/kbd/consolefonts/ter-p12n.psf.gz'
alias setfontter-p14b='setfont /lib/kbd/consolefonts/ter-p14b.psf.gz'
alias setfontter-p14n='setfont /lib/kbd/consolefonts/ter-p14n.psf.gz'
alias setfontter-p14v='setfont /lib/kbd/consolefonts/ter-p14v.psf.gz'
alias setfontter-p16b='setfont /lib/kbd/consolefonts/ter-p16b.psf.gz'
alias setfontter-p16n='setfont /lib/kbd/consolefonts/ter-p16n.psf.gz'
alias setfontter-p16v='setfont /lib/kbd/consolefonts/ter-p16v.psf.gz'
alias setfontter-p18b='setfont /lib/kbd/consolefonts/ter-p18b.psf.gz'
alias setfontter-p18n='setfont /lib/kbd/consolefonts/ter-p18n.psf.gz'
alias setfontter-p20b='setfont /lib/kbd/consolefonts/ter-p20b.psf.gz'
alias setfontter-p20n='setfont /lib/kbd/consolefonts/ter-p20n.psf.gz'
alias setfontter-p22b='setfont /lib/kbd/consolefonts/ter-p22b.psf.gz'
alias setfontter-p22n='setfont /lib/kbd/consolefonts/ter-p22n.psf.gz'
alias setfontter-p24b='setfont /lib/kbd/consolefonts/ter-p24b.psf.gz'
alias setfontter-p24n='setfont /lib/kbd/consolefonts/ter-p24n.psf.gz'
alias setfontter-p28b='setfont /lib/kbd/consolefonts/ter-p28b.psf.gz'
alias setfontter-p28n='setfont /lib/kbd/consolefonts/ter-p28n.psf.gz'
alias setfontter-p32b='setfont /lib/kbd/consolefonts/ter-p32b.psf.gz'
alias setfontter-p32n='setfont /lib/kbd/consolefonts/ter-p32n.psf.gz'
alias setfontter-u12n='setfont /lib/kbd/consolefonts/ter-u12n.psf.gz'
alias setfontter-u14b='setfont /lib/kbd/consolefonts/ter-u14b.psf.gz'
alias setfontter-u14n='setfont /lib/kbd/consolefonts/ter-u14n.psf.gz'
alias setfontter-u14v='setfont /lib/kbd/consolefonts/ter-u14v.psf.gz'
alias setfontter-u16b='setfont /lib/kbd/consolefonts/ter-u16b.psf.gz'
alias setfontter-u16n='setfont /lib/kbd/consolefonts/ter-u16n.psf.gz'
alias setfontter-u16v='setfont /lib/kbd/consolefonts/ter-u16v.psf.gz'
alias setfontter-u18b='setfont /lib/kbd/consolefonts/ter-u18b.psf.gz'
alias setfontter-u18n='setfont /lib/kbd/consolefonts/ter-u18n.psf.gz'
alias setfontter-u20b='setfont /lib/kbd/consolefonts/ter-u20b.psf.gz'
alias setfontter-u20n='setfont /lib/kbd/consolefonts/ter-u20n.psf.gz'
alias setfontter-u22b='setfont /lib/kbd/consolefonts/ter-u22b.psf.gz'
alias setfontter-u22n='setfont /lib/kbd/consolefonts/ter-u22n.psf.gz'
alias setfontter-u24b='setfont /lib/kbd/consolefonts/ter-u24b.psf.gz'
alias setfontter-u24n='setfont /lib/kbd/consolefonts/ter-u24n.psf.gz'
alias setfontter-u28b='setfont /lib/kbd/consolefonts/ter-u28b.psf.gz'
alias setfontter-u28n='setfont /lib/kbd/consolefonts/ter-u28n.psf.gz'
alias setfontter-u32b='setfont /lib/kbd/consolefonts/ter-u32b.psf.gz'
alias setfontter-u32n='setfont /lib/kbd/consolefonts/ter-u32n.psf.gz'
alias setfontter-v12n='setfont /lib/kbd/consolefonts/ter-v12n.psf.gz'
alias setfontter-v14b='setfont /lib/kbd/consolefonts/ter-v14b.psf.gz'
alias setfontter-v14n='setfont /lib/kbd/consolefonts/ter-v14n.psf.gz'
alias setfontter-v14v='setfont /lib/kbd/consolefonts/ter-v14v.psf.gz'
alias setfontter-v16b='setfont /lib/kbd/consolefonts/ter-v16b.psf.gz'
alias setfontter-v16n='setfont /lib/kbd/consolefonts/ter-v16n.psf.gz'
alias setfontter-v16v='setfont /lib/kbd/consolefonts/ter-v16v.psf.gz'
alias setfontter-v18b='setfont /lib/kbd/consolefonts/ter-v18b.psf.gz'
alias setfontter-v18n='setfont /lib/kbd/consolefonts/ter-v18n.psf.gz'
alias setfontter-v20b='setfont /lib/kbd/consolefonts/ter-v20b.psf.gz'
alias setfontter-v20n='setfont /lib/kbd/consolefonts/ter-v20n.psf.gz'
alias setfontter-v22b='setfont /lib/kbd/consolefonts/ter-v22b.psf.gz'
alias setfontter-v22n='setfont /lib/kbd/consolefonts/ter-v22n.psf.gz'
alias setfontter-v24b='setfont /lib/kbd/consolefonts/ter-v24b.psf.gz'
alias setfontter-v24n='setfont /lib/kbd/consolefonts/ter-v24n.psf.gz'
alias setfontter-v28b='setfont /lib/kbd/consolefonts/ter-v28b.psf.gz'
alias setfontter-v28n='setfont /lib/kbd/consolefonts/ter-v28n.psf.gz'
alias setfontter-v32b='setfont /lib/kbd/consolefonts/ter-v32b.psf.gz'
alias setfontter-v32n='setfont /lib/kbd/consolefonts/ter-v32n.psf.gz'
alias setfontterminess='setfont /lib/kbd/consolefonts/terminess.psf.gz'
alias setfontUniCyr_8x14='setfont /lib/kbd/consolefonts/UniCyr_8x14.psf.gz'
alias setfontUniCyr_8x16='setfont /lib/kbd/consolefonts/UniCyr_8x16.psf.gz'
alias setfontUniCyr_8x8='setfont /lib/kbd/consolefonts/UniCyr_8x8.psf.gz'
alias setfontUniCyrExt_8x16='setfont /lib/kbd/consolefonts/UniCyrExt_8x16.psf.gz'
alias setfontviscii10-8x16='setfont /lib/kbd/consolefonts/viscii10-8x16.psfu.gz'

# ERRORS
# partialfonts
# README.12x22
# README.Arabic
# README.cp1250
# README.cybercafe
# README.Cyrillic
# README.drdos
# README.Ethiopic
# README.eurlatgr
# README.eurlatgr.mappings
# README.Greek
# README.Hebrew
# README.lat0
# README.Lat2-Terminus16
# README.lat7
# README.lat9
# README.LatGrkCyr
# README.psfu
# README.Sun
# README.terminus

# ---- 13010-ALS-nmon.sh ----
#!/bin/bash

export NMON='mknd.jJ'

# h = This help
alias nmonhelp='sudo nice -n -15 ionice -c 2 -n 3 env NMON=h nmon -a'

# r = Resources OS & Proc
alias nmonres='sudo nice -n -15 ionice -c 2 -n 3 env NMON=r nmon -a'

# c = CPU Util  C = wide view
alias nmoncpu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=c nmon -a'
alias nmonccpu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=C nmon -a'

# l = longer term CPU averages
alias nmonlcpu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=l nmon -a'

# m = Memory & Swap    L=Huge
alias nmonmem='sudo nice -n -15 ionice -c 2 -n 3 env NMON=m nmon -a'

# V = Virtual Memory
alias nmonvirt='sudo nice -n -15 ionice -c 2 -n 3 env NMON=V nmon -a'

# n = Network
alias nmonnetwork='sudo nice -n -15 ionice -c 2 -n 3 env NMON=n nmon -a'

# N = NFS
alias nmonnfs='sudo nice -n -15 ionice -c 2 -n 3 env NMON=N nmon -a'

#
# d = Disk I/O Graphs  D=Stats
alias nmondisk='sudo nice -n -15 ionice -c 2 -n 3 env NMON=d nmon -a'
alias nmondiskstats='sudo nice -n -15 ionice -c 2 -n 3 env NMON=D nmon -a'

# o = Disks %Busy Map
#

# k = Kernel stats & loadavg
alias nmonkern='sudo nice -n -15 ionice -c 2 -n 3 env NMON=k nmon -a'

# j = Filesystem Usage J=reduced
alias nmonfs='sudo nice -n -15 ionice -c 2 -n 3 env NMON=jJ nmon -a'
alias nmonfsall='sudo nice -n -15 ionice -c 2 -n 3 env NMON=j nmon -a'

#
# M = MHz by thread & CPU
alias nmonmhz='sudo nice -n -15 ionice -c 2 -n 3 env NMON=M nmon -a'

#

# t = TopProcess 1=Priority/Nice/State
# ReOrder by: 3=CPU 4=RAM 5=I/O
alias nmontopnice='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t1 nmon -a'
alias nmontopproc='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t3 nmon -a'
alias nmontopmem='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t4 nmon -a'
alias nmontopio='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t5 nmon -a'

# u = TopProc with command line
# ReOrder by: 3=CPU 4=RAM 5=I/O
alias nmontopniceu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t1u nmon -a'
alias nmontopprocu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t3u nmon -a'
alias nmontopmemu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t4u nmon -a'
alias nmontopiou='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t5u nmon -a'

# alias nmonmmm='sudo nice -n -15 ionice -c 2 -n 3 env NMON=MMM nmon -a'
# alias nmonV='sudo nice -n -15 ionice -c 2 -n 3 env NMON=V nmon -a'
# alias nmonN='sudo nice -n -15 ionice -c 2 -n 3 env NMON=N nmon -a'
# alias nmonr='sudo nice -n -15 ionice -c 2 -n 3 env NMON=r nmon -a'
# alias nmono='sudo nice -n -15 ionice -c 2 -n 3 env NMON=o nmon -a'
# alias nmonddisk='sudo nice -n -15 ionice -c 2 -n 3 env NMON=d nmon -a'
# alias nmondisk='sudo nice -n -15 ionice -c 2 -n 3 env NMON=d. nmon -a'

# nmon -h
# Hint for nmon version 16k
#         Full Help Info : nmon -h

#         On-screen Stats: nmon
#         Data Collection: nmon -f [-s <seconds>] [-c <count>] [-t|-T]
#         Capacity Plan  : nmon -x
# Interactive-Mode:
#         Read the Welcome screen & at any time type: 'h' for more help
#         Type 'q' to exit nmon

# For Data-Collect-Mode
#         -f            Must be the first option on the line (switches off interactive mode)
#                       Saves data to a CSV Spreadsheet format .nmon file in then local directory
#                       Note: -f sets a defaults -s300 -c288    which you can then modify
#         Further Data Collection Options:
#         -s <seconds>  time between data snapshots
#         -c <count>    of snapshots before exiting
#         -t            Includes Top Processes stats (-T also collects command arguments)
#         -x            Capacity Planning=15 min snapshots for 1 day. (nmon -ft -s 900 -c 96)
# ---- End of Hints
# ---- Full Help Information for nmon 16k

# For Interactive and Data Collection Mode:
#         User Defined Disk Groups (DG) - This works in both modes
#         It is a work around Linux issues, where disks & partitions are mixed up in /proc files
#         & drive driver developers use bizarre device names, making it trick to separate them.
#         -g <filename> Use this file to define the groups
#                       - On each line: group-name <disks-list>   (space separated list)
#                       - Example line: database sdb sdc sdd sde
#                       - Up to 64 disk groups, 512 disks per line
#                       - Disks names can appear more than one group
#         -g auto       - Will generate a file called 'auto' with just disks from 'lsblk|grep disk' output
#          For Interactive use define the groups then type: g or G
#          For Data Capture defining the groups switches on data collection

# Data-Collect-Mode = spreadsheet format (i.e. comma separated values)
#         Note: Use only one of f, F, R, x, X or z to switch on Data Collection mode
#         Note: Make it the first argument then use other options to modify the defaults
#         Note: Don't collect data that you don't want - it just makes the files too large
#         Note: Too many snapshots = too much data and crashes Analyser and other tools
#         Note: 500 to 800 snapshots make a good graph on a normal size screen
#         Recommended normal minimal options: snapshots every 2 minutes all day:
#                 Simple capture:      nmon -f  -s 120 -c 720
#                 With Top Procs:      nmon -fT -s 120 -c 720
#                 Set the directory:   nmon -fT -s 120 -c 720 -m /home/nag/nmon
#                 Capture a busy hour: nmon -fT -s   5 -c 720 -m /home/nag/nmon

# For Data-Collect-Mode Options
#         -f            spreadsheet output format [note: default -s300 -c288]
#                          output file is <hostname>_YYYYMMDD_HHMM.nmon
#         -F <filename> same as -f but user supplied filename
#                          Not recommended as the default file name is perfect
#         The other options in alphabetical order:
#         -a            Include Accelerator GPU stats
#         -b            Online only: for black and white mode (switch off colour)
#         -c <number>   The number of snapshots before nmon stops
#         -d <disks>    To set the maximum number of disks [default 256]
#                       Ignores disks if the systems has 100's of disk or the config is odd!
#         -D            Use with -g to add the Disk Wait/Service Time & in-flight stats
#         -f and -F     See above
#         -g <filename> User Defined Disk Groups (see above) - Data Capture: Generates  BBBG & DG lines
#         -g auto       See above but makes the file 'auto' for you of just the disks like sda etc.
#         -h            This help output
#         -I <percent>  Set the ignore process & disks busy threshold (default 0.1%)
#                       Don't save or show proc/disk using less than this percent
#         -J            Switch-off Journel Filesystem stats collection (can causes issues with automound NFS)
#         -l <dpl>      Disks per line in data capture to avoid spreadsheet width issues. Default 150. EMC=64.
#         -m <directory> nmon changes to this directory before saving to file
#                       Useful when starting nmon via cron
#         -M              Adds MHz stats for each CPU thread. Some POWER8 model CPU cores can be different frequencies
#         -N            Include NFS Network File System for V2, V3 and V4
#         -p            nmon outputs the PID when it starts. Useful in scripts to capture the PID for a later safe stop.
#         -r <runname>  Use in a benchmark to record the run details for later analysis [default hostname]
#         -R              Old rrdtool format used by some - may be removed in the future. If you use this email Nigel
#         -s <seconds>  Time between snap shots - with '-c count' decides duration of the data capture
#         -t            Include Top Processes in the output
#         -T            As -t plus it saves command line arguments in UARG section
#         -U            Include the Linux 10 CPU utilisation stats (CPUUTIL lines in the file)
#         -V            Print nmon version & exit immediately

#         To manually load nmon files into a spreadsheet:
#                 sort -A *nmon >stats.csv
#                 Transfer the stats.csv file to your PC
#                 Start spreadsheet & then Open with type=comma-separated-value ASCII file
#                 This puts every datum in a different cell
#                 Now select the data of one type (same 1st column) and graph it
#                 The nmon Analyser & other tools do not need the file sorted.

# Capacity Planning mode - use cron to run each day
#         -x            Sensible spreadsheet output for one day
#                       Every 15 mins for 1 day ( i.e. -ft -s 900 -c 96)
#         -X            Sensible spreadsheet output for busy hour
#                       Every 30 secs for 1 hour ( i.e. -ft -s 30 -c 120)
#         -z            Like -x but the output saved in /var/perf/tmp assuming root user

# Interactive Mode Keys in Alphabetical Order
#     Start nmon then type the letters below to switch on & off particular stats
#     The stats are always in the same order on-screen
#     To see more stats: make the font smaller or use two windows

#         Key --- Toggles on off to control what is displayed ---
#         b   = Black and white mode (or use -b command line option)
#         c   = CPU Utilisation stats with bar graphs (CPU core threads)
#         C   = CPU Utilisation as above but concise wide view (up to 192 CPUs)
#         d   = Disk I/O Busy% & Graphs of Read and Write KB/s
#         D   = Disk I/O Numbers including Transfers, Average Block Size & Peaks (type: 0 to reset)
#         g   = User Defined Disk Groups            (assumes -g <file> when starting nmon)
#         G   = Change Disk stats (d) to just disks (assumes -g auto   when starting nmon)
#         h   = This help information
#         j   = File Systems including Journal File Systems
#         J   =  Reduces 'j' output by removing unreal File Systems
#         k   = Kernel stats Run Queue, context-switch, fork, Load Average & Uptime
#         l   = Long term Total CPU (over 75 snapshots) via bar graphs
#         L   = Large and =Huge memory page stats
#         m   = Memory & Swap stats
#         M   = MHz for machines with variable frequency 1st=Threads 2nd=Cores 3=Graphs
#         n   = Network stats & errors (if no errors it disappears)
#         N   = NFS - Network File System
#               1st NFS V2 & V3, 2nd=NFS4-Client & 3rd=NFS4-Server
#         o   = Disk I/O Map (one character per disk pixels showing how busy it is)
#               Particularly good if you have 100's of disks
#         q   = Quit
#         r   = Resources: Machine type, name, cache details & OS version & Distro + LPAR
#         t   = Top Processes: select the data & order 1=Basic, 3=Perf 4=Size 5=I/O=root only
#         u   = Top Process with command line details
#         U   = CPU utilisation stats - all 10 Linux stats:
#               user, user_nice, system, idle, iowait, irq, softirq, steal, guest, guest_nice
#         v   = Experimental Verbose mode - tries to make recommendations
#         V   = Virtual Memory stats

#         Key --- Other Interactive Controls ---
#         +   = Double the screen refresh time
#         -   = Halves the screen refresh time
#         0   = Reset peak counts to zero (peak highlight with '>')
#         1   = Top Processes mode 1 Nice, Priority, Status
#         3   = Top Processes mode 3 CPU, Memory, Faults
#         4   = Top Processes mode 4 as 3 but order by memory
#         5   = Top Processes mode 5 as 3 but order by I/O (if root user)
#         6   = Highlights 60% row on Long Term CPU view
#         7   = Highlights 70% row on Long Term CPU view
#         8   = Highlights 80% row on Long Term CPU view
#         9   = Highlights 90% row on Long Term CPU view
#         .   = Minimum mode i.e. only busy disks and processes shown
#         space = Refresh screen now

# Interactive Start-up Control
#         If you find you always type the same toggles every time you start
#         then place them in the NMON shell variable. For example:
#          export NMON=cmdrtn

# Other items for Interactive and Data Collection mode:
#         a) To limit the processes nmon lists (online and to a file)
#             either set NMONCMD0 to NMONCMD63 to the program names
#             or use -C cmd:cmd:cmd etc. example: -C ksh:vi:syncd
# Other items for Data Collection mode:
#         b) To you want to stop nmon use: kill -USR2 <nmon-pid>
#         c) Use -p and nmon outputs the background process pid
#         d) If you want to pipe nmon output to other commands use a FIFO:
#             mkfifo /tmp/mypipe
#             nmon -F /tmp/mypipe &
#             tail -f /tmp/mypipe
#         e) If nmon fails please report it with:
#            1) nmon version like: 16k
#            2) the output of: cd /proc; cat cpuinfo meminfo partitions stat vmstat
#            3) some clue of what you were doing
#            4) I may ask you to run the debug version or collect data files
#         f) If box & line characters are letters then check: terminal emulator & $TERM
#         g) External Data Collectors - nmon will execute a command or script at each snapshot time
#            They must output to a different file which is merge afterwards with the nmon output
#            Set the following shell variables:
#             NMON_START  = script to generate CVS Header test line explaining the columns
#                  Generate: TabName,DataDescription,Column_name_and_units,Column_name_and_units ...
#             NMON_SNAP   = script for each snapshots data, the parameter is the T0000 snapshot number
#                  Generate: TabName,T00NN,Data,Data,Data ...
#             NMON_END    = script to clean up or finalise the data
#             NMON_ONE_IN = call NMON_START less often (if it is heavy in CPU terms)
#             Once capture done: cat nmon-file data-file >merged-file ; ready for Analyser or other tools
#             The nmon Analyser will automatically do its best to graph the data on a new Tab sheet

#         Developer: Nigel Griffiths      See http://nmon.sourceforge.net
#         Feedback welcome - On the current release only
#         No warranty given or implied. (C) Copyright 2009 Nigel Griffiths GPLv3

# ---- 14000-python.sh ----
#!/bin/bash

alias python='python3'

# ---- 15000-comfyui.sh ----
#!/usr/bin/env bash

# ComfyUI

alias ai_lab="conda activate ai_lab && cd /projects/sdxl-workspace;"
alias comfy="conda activate ai_lab && /projects/monorepo-one/static/stable-diffusion/ComfyUI.bat.sh"

# "conda activate ai_lab && cd /projects/sdxl-workspace/ComfyUI/ && python /projects/sdxl-workspace/ComfyUI/main.py"

# ---- 20000-Terminator.sh ----
#!/bin/bash

# Total lines: 21

alias get_tab='remotinator get_tab'
alias get_tab_title='remotinator get_tab_title'
alias get_terminals='remotinator get_terminals'
alias get_window='remotinator get_window'
alias get_window_title='remotinator get_window_title'
alias hsplit='remotinator hsplit'
alias new_tab='remotinator new_tab'
alias new_window='remotinator new_window'
alias vsplit='remotinator vsplit'

alias qtapiconsole='terminator -m --role=qtapiconsole --layout=qtapiconsole --profile=default --working-directory=/home/luxcium/dev/questrade-ts'

alias qtapi="cd /home/luxcium/dev/questrade-ts/out"
alias qtapiout="cd /home/luxcium/dev/questrade-ts/out"
alias qtapitsc="(qtapi; tsc --build --watch)"
alias qtapitsc_="(qtapi; tsc --build)"
alias qtapinode="(qtapitsc_&;qtapiout; node /home/luxcium/dev/questrade-ts/out/src/test/playground/main.js)"
# /home/luxcium/dev/questrade-ts/out/src/test/playground

# ---- 30000-tmux.sh ----

# ---- 31000-neovim.sh ----
#!/usr/bin/bash

alias vim="nvim"

# ---- 78000-nvidia.sh ----
#!/usr/bin/env bash

alias DynamicDithering='DitheringDynamic'
alias StaticDithering='DitheringStatic'
alias TemporalDithering='DitheringTemporal'

alias dynamic='DitheringDynamic'
alias static='DitheringStatic'
alias temporal='DitheringTemporal'

alias imageperform='OpenGLImagePerform'
alias imagePerformNormal='OpenGLImagePerform'
alias imagePerformHigh='OpenGLImagePerformHigh'
alias imageQualityNormal='OpenGLImageQuality'
alias imageQualityHigh='OpenGLImageQualityHigh'
alias imagequality='OpenGLImageQuality'





# export XDG_RUNTIME_DIR='/home/luxcium/nvidia-tmp'
# export NVIDIA_CONF='/home/luxcium/.nvidia-settings-rc'
# alias nvidia-conf='nvidia-settings -i -V --write-config --config=${NVIDIA_CONF} &'
# alias nvidia-loadconf='nvidia-settings --load-config-only'

# nvidia-settings --help

# nvidia-settings:  version 525.78.01
#   The NVIDIA Settings tool.

#   This program is used to configure the NVIDIA Linux graphics driver.
#   For more detail, please see the nvidia-settings(1) man page.

# nvidia-settings [options]

#   -v, --version
#       Print the nvidia-settings version and exit.

#   -h, --help
#       Print usage information and exit.

#   --config=CONFIG
#       Use the configuration file CONFIG rather than the default ~/.nvidia-settings-rc

#   -c CTRL-DISPLAY, --ctrl-display=CTRL-DISPLAY
#       Control the specified X display.  If this option is not given, then nvidia-settings will control the display specified by '--display'; if that is not given, th
#       en the $DISPLAY environment variable is used.

#   -l, --load-config-only
#       Load the configuration file, send the values specified therein to the X server, and exit.  This mode of operation is useful to place in your xinitrc file, for
#       example.

#   -n, --no-config
#       Do not load the configuration file.  This mode of operation is useful if nvidia-settings has difficulties starting due to problems with applying settings in th
#       e configuration file.

#   -r, --rewrite-config-file
#       Write the X server configuration to the configuration file, and exit, without starting the graphical user interface.  See EXAMPLES section.

#   -V VERBOSE, --verbose=VERBOSE
#       Controls how much information is printed.  Valid values are 'none' (do not print status messages), 'errors' (print error messages), 'deprecations' (print error
#       and deprecation messages), 'warnings' (print error, deprecation, and warning messages), and 'all' (print error, deprecation, warning and other informational me
#       ssages).  By default, 'deprecations' is set.

#   -a ASSIGN, --assign=ASSIGN
#       The ASSIGN argument to the '--assign' command line option is of the form:

#         {DISPLAY}/{attribute name}[{display devices}]={value}

#       This assigns the attribute {attribute name} to the value {value} on the X Display {DISPLAY}.  {DISPLAY} follows the usual {host}:{display}.{screen} syntax of t
#       he DISPLAY environment variable and is optional; when it is not specified, then it is implied following the same rule as the --ctrl-display option.  If the X s
#       creen is not specified, then the assignment is made to all X screens.  Note that the '/' is only required when {DISPLAY} is present.

#       {DISPLAY} can additionally include a target specification to direct an assignment to something other than an X screen.  A target specification is contained wit
#       hin brackets and consists of a target type name, a colon, and the target id.  The target type name can be one of "screen", "gpu", "framelock", "fan", "thermals
#       ensor", "svp", or "dpy"; the target id is the index into the list of targets (for that target type).  The target specification can be used in {DISPLAY} whereve
#       r an X screen can be used, following the syntax {host}:{display}[{target_type}:{target_id}].  See the output of

#         nvidia-settings -q all

#       for information on which target types can be used with which attributes.  See the output of

#          nvidia-settings -q screens -q gpus -q framelocks -q fans -q thermalsensors -q svps -q dpys

#       for lists of targets for each target type.

#       The [{display devices}] portion is also optional; if it is not specified, then the attribute is assigned to all display devices.

#       Some examples:

#         -a FSAA=5
#         -a localhost:0.0/DigitalVibrance[CRT-0]=0
#         --assign="SyncToVBlank=1"
#         -a [gpu:0]/DigitalVibrance[DFP-1]=63

#   -q QUERY, --query=QUERY
#       The QUERY argument to the '--query' command line option is of the form:

#         {DISPLAY}/{attribute name}[{display devices}]

#       This queries the current value of the attribute {attribute name} on the X Display {DISPLAY}.  The syntax is the same as that for the '--assign' option, without
#       '={value}'; specify '-q screens', '-q gpus', '-q framelocks', '-q fans', '-q thermalsensors', '-q svps', or '-q dpys' to query a list of X screens, GPUs, Frame
#       Lock devices, Visual Computing Systems, Devices, Fans, Thermal Sensors, 3D Vision Pro Transceivers, or Display Devices, respectively, that are present on the X
#       Display {DISPLAY}.  Specify '-q all' to query all attributes.

#   -t, --terse
#       When querying attribute values with the '--query' command line option, only print the current value, rather than the more verbose description of the attribute,
#       its valid values, and its current value.

#   -d, --display-device-string
#       When printing attribute values in response to the '--query' option, if the attribute value is a display device mask, print the value as a list of display devic
#       es (e.g., "CRT-0, DFP-0"), rather than a hexadecimal bit mask (e.g., 0x00010001).

#   -g, --glxinfo
#       Print GLX Information for the X display and exit.

#   -E, --eglinfo
#       Print EGL Information for the X display and exit.

#   -e DESCRIBE, --describe=DESCRIBE
#       Prints information about a particular attribute.  Specify 'all' to list the descriptions of all attributes.  Specify 'list' to list the attribute names without
#       a descriptions.

#   -p PAGE, --page=PAGE
#       The PAGE argument to the '--page' commandline option selects a particular page in the nvidia-settings user interface to display upon starting nvidia-settings.
#       Valid values are the page names in the tree view on the left side of the nvidia-settings user interface; e.g.,

#         --page="X Screen 0"

#       Because some page names are not unique (e.g., a "PowerMizer" page is present under each GPU), the page name can optionally be prepended with the name of the pa
#       rent X Screen or GPU page, followed by a comma.  E.g.,

#         --page="GPU 0 - (Quadro 6000), PowerMizer"

#       The first page with a name matching the PAGE argument will be used.  By default, the "System Information" page is displayed.

#   -L, --list-targets-only
#       When performing an attribute query (from the '--query' command line option) or an attribute assignment (from the '--assign' command line option or when loading
#       an ~/.nvidia-settings-rc file), nvidia-settings identifies one or more targets on which to query/assign the attribute.

#       The '--list-targets-only' option will cause nvidia-settings to list the targets on which the query/assign operation would have been performed, without actually
#       performing the operation(s), and exit.

#   -w, --write-config, --no-write-config
#       Save the configuration file on exit (enabled by default).

#   -i, --use-gtk2
#       Force nvidia-settings to use the GTK+ 2 library for the graphical user interface if a user interface is required. This option is only available on systems wher
#       e nvidia-settings supports both the GTK+ 2 and GTK+ 3 user interfaces.

#   -I GTK-LIBRARY, --gtk-library=GTK-LIBRARY
#       Specify the graphical user interface library to use if a nvidia-settings user interface is required. This value may be the exact location of the library or it
#       may be the directory containing the appropriately named library. If this is the exact location, the 'use-gtk2' option is ignored.

# ---- 80000-vscode-portable.sh ----
#!/usr/bin/bash

alias get-vscode-stable="wget https://code.visualstudio.com/sha/download?build=stable&os=linux-x64"

# ---- 89000-killall.sh ----
#!/usr/bin/env bash

alias kchrome='killall chrome || killall chrome-stable'
alias kmsedge='killall msedge'
alias kkonsole='killall konsole'
alias kdolphin='killall dolphin'
alias kcode='killall code'
alias kkwrite='killall kwrite'
alias kgwenview='killall gwenview'

function killmore() {

    nohup bash -c "(

        sleep 0.125
        killall kwrite
    ) &

    (
        sleep 0.25
        killall gwenview
    ) &

    (
        sleep 0.5
        killall chrome || killall chrome-stable
    ) &

    (
        sleep 1
        killall dolphin
    ) &

    (
        sleep 1.25
        killall msedge
    ) &

    sleep 1.75
    killall konsole

    )" >/dev/null 2>&1 &
}
# >/dev/null 2>&1 &
# alias killmore=''
alias killmorecode='nohup bash -c "(sleep 1.5; killall code)" >/dev/null 2>&1 & killmore'
alias killcodemore='nohup bash -c "(sleep 1.5; killall code)" >/dev/null 2>&1 & killmore'

alias killchrome='kchrome'
alias killmsedge='kmsedge'
alias kmicrosoft-edge='kmsedge'
alias killmicrosoft-edge='kmsedge'
alias killkonsole='kkonsole'
alias killdolphin='kdolphin'
alias killcode='kcode'
alias killkwrite='kkwrite'
alias killgwenview='kgwenview'

alias reboot='nohup bash -c "(sleep 2; /sbin/reboot)" >/dev/null 2>&1 & nohup bash -c "(sleep 1.25; killall code)" >/dev/null 2>&1 & killmore &'

# ---- 90201-fnm.sh ----
#!/bin/bash

alias use14="fnm use 14"
alias use16="fnm use 16"
alias use18="fnm use 18"
alias use19="fnm use 19"
alias use20="fnm use 20"

alias usefnm="fnm use default"
alias uselts="fnm use lts"
alias useactive="fnm use active"
alias useacurrent="fnm use acurrent"

alias update-fnm='update_fnm'
alias fnm-update='update_fnm'
alias updatefnm='update_fnm'
alias fnmupdate='update_fnm'
alias upgrade-fnm='update_fnm'
alias fnm-upgrade='update_fnm'
alias upgradefnm='update_fnm'
alias fnmupgrade='update_fnm'

# alias update-fnm="fnm-update"
# update_fnm
# alias fnmupdate="${AHMYZSH}/core/bin/fnm-update"
# alias updatefnm="fnmupdate"

# ---- include-dnf.repos.sh ----
#!/bin/bash

# function exclude_azure-cli() {
#   echo 'exclude: azure-cli'
#   mv /etc/yum.repos.d/azure-cli.repo /etc/yum.repos.d/azure-cli.repo.off
#   #$@!
# }

# function include_azure-cli() {
#   echo 'include: azure-cli'
#   mv /etc/yum.repos.d/azure-cli.repo.off /etc/yum.repos.d/azure-cli.repo
#   #$%
# }
# function exclude_bintray-ookla-rhel() {
#   echo 'exclude: bintray-ookla-rhel'
#   mv /etc/yum.repos.d/bintray-ookla-rhel.repo /etc/yum.repos.d/bintray-ookla-rhel.repo.off
#   #$@!
# }

# function include_bintray-ookla-rhel() {
#   echo 'include: bintray-ookla-rhel'
#   mv /etc/yum.repos.d/bintray-ookla-rhel.repo.off /etc/yum.repos.d/bintray-ookla-rhel.repo
#   #$%
# }
# function exclude__copr_phracek-PyCharm() {
#   echo 'exclude: _copr_phracek-PyCharm'
#   mv /etc/yum.repos.d/_copr_phracek-PyCharm.repo /etc/yum.repos.d/_copr_phracek-PyCharm.repo.off
#   #$@!
# }

# function include__copr_phracek-PyCharm() {
#   echo 'include: _copr_phracek-PyCharm'
#   mv /etc/yum.repos.d/_copr_phracek-PyCharm.repo.off /etc/yum.repos.d/_copr_phracek-PyCharm.repo
#   #$%
# }
# function exclude_docker-ce() {
#   echo 'exclude: docker-ce'
#   mv /etc/yum.repos.d/docker-ce.repo /etc/yum.repos.d/docker-ce.repo.off
#   #$@!
# }

# function include_docker-ce() {
#   echo 'include: docker-ce'
#   mv /etc/yum.repos.d/docker-ce.repo.off /etc/yum.repos.d/docker-ce.repo
#   #$%
# }
# function exclude_fedora-cisco-openh264() {
#   echo 'exclude: fedora-cisco-openh264'
#   mv /etc/yum.repos.d/fedora-cisco-openh264.repo /etc/yum.repos.d/fedora-cisco-openh264.repo.off
#   #$@!
# }

# function include_fedora-cisco-openh264() {
#   echo 'include: fedora-cisco-openh264'
#   mv /etc/yum.repos.d/fedora-cisco-openh264.repo.off /etc/yum.repos.d/fedora-cisco-openh264.repo
#   #$%
# }
# function exclude_fedora-updates-testing-modular() {
#   echo 'exclude: fedora-updates-testing-modular'
#   mv /etc/yum.repos.d/fedora-updates-testing-modular.repo /etc/yum.repos.d/fedora-updates-testing-modular.repo.off
#   #$@!
# }

# function include_fedora-updates-testing-modular() {
#   echo 'include: fedora-updates-testing-modular'
#   mv /etc/yum.repos.d/fedora-updates-testing-modular.repo.off /etc/yum.repos.d/fedora-updates-testing-modular.repo
#   #$%
# }
# function exclude_fedora-updates-testing() {
#   echo 'exclude: fedora-updates-testing'
#   mv /etc/yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo.off
#   #$@!
# }

# function include_fedora-updates-testing() {
#   echo 'include: fedora-updates-testing'
#   mv /etc/yum.repos.d/fedora-updates-testing.repo.off /etc/yum.repos.d/fedora-updates-testing.repo
#   #$%
# }
# function exclude_gh-cli() {
#   echo 'exclude: gh-cli'
#   mv /etc/yum.repos.d/gh-cli.repo /etc/yum.repos.d/gh-cli.repo.off
#   #$@!
# }

# function include_gh-cli() {
#   echo 'include: gh-cli'
#   mv /etc/yum.repos.d/gh-cli.repo.off /etc/yum.repos.d/gh-cli.repo
#   #$%
# }
# function exclude_google-chrome-beta() {
#   echo 'exclude: google-chrome-beta'
#   mv /etc/yum.repos.d/google-chrome-beta.repo /etc/yum.repos.d/google-chrome-beta.repo.off
#   #$@!
# }

# function include_google-chrome-beta() {
#   echo 'include: google-chrome-beta'
#   mv /etc/yum.repos.d/google-chrome-beta.repo.off /etc/yum.repos.d/google-chrome-beta.repo
#   #$%
# }
# function exclude_google-chrome() {
#   echo 'exclude: google-chrome'
#   mv /etc/yum.repos.d/google-chrome.repo /etc/yum.repos.d/google-chrome.repo.off
#   #$@!
# }

# function include_google-chrome() {
#   echo 'include: google-chrome'
#   mv /etc/yum.repos.d/google-chrome.repo.off /etc/yum.repos.d/google-chrome.repo
#   #$%
# }
# function exclude_google-chrome-unstable() {
#   echo 'exclude: google-chrome-unstable'
#   mv /etc/yum.repos.d/google-chrome-unstable.repo /etc/yum.repos.d/google-chrome-unstable.repo.off
#   #$@!
# }

# function include_google-chrome-unstable() {
#   echo 'include: google-chrome-unstable'
#   mv /etc/yum.repos.d/google-chrome-unstable.repo.off /etc/yum.repos.d/google-chrome-unstable.repo
#   #$%
# }
# function exclude_microsoft-insiders-fast() {
#   echo 'exclude: microsoft-insiders-fast'
#   mv /etc/yum.repos.d/microsoft-insiders-fast.repo /etc/yum.repos.d/microsoft-insiders-fast.repo.off
#   #$@!
# }

# function include_microsoft-insiders-fast() {
#   echo 'include: microsoft-insiders-fast'
#   mv /etc/yum.repos.d/microsoft-insiders-fast.repo.off /etc/yum.repos.d/microsoft-insiders-fast.repo
#   #$%
# }
# function exclude_microsoft-insiders-slow() {
#   echo 'exclude: microsoft-insiders-slow'
#   mv /etc/yum.repos.d/microsoft-insiders-slow.repo /etc/yum.repos.d/microsoft-insiders-slow.repo.off
#   #$@!
# }

# function include_microsoft-insiders-slow() {
#   echo 'include: microsoft-insiders-slow'
#   mv /etc/yum.repos.d/microsoft-insiders-slow.repo.off /etc/yum.repos.d/microsoft-insiders-slow.repo
#   #$%
# }
# function exclude_microsoft-prod() {
#   echo 'exclude: microsoft-prod'
#   mv /etc/yum.repos.d/microsoft-prod.repo /etc/yum.repos.d/microsoft-prod.repo.off
#   #$@!
# }

# function include_microsoft-prod() {
#   echo 'include: microsoft-prod'
#   mv /etc/yum.repos.d/microsoft-prod.repo.off /etc/yum.repos.d/microsoft-prod.repo
#   #$%
# }
# function exclude_mongodb-org-4.4() {
#   echo 'exclude: mongodb-org-4'
#   mv /etc/yum.repos.d/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo.off
#   #$@!
# }

# function include_mongodb-org-4.4() {
#   echo 'include: mongodb-org-4'
#   mv /etc/yum.repos.d/mongodb-org-4.4.repo.off /etc/yum.repos.d/mongodb-org-4.4.repo
#   #$%
# }
# function exclude_rpmfusion-free-updates-testing() {
#   echo 'exclude: rpmfusion-free-updates-testing'
#   mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off
#   #$@!
# }

# function include_rpmfusion-free-updates-testing() {
#   echo 'include: rpmfusion-free-updates-testing'
#   mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-free-updates-testing.repo
#   #$%
# }
# function exclude_rpmfusion-nonfree-nvidia-driver() {
#   echo 'exclude: rpmfusion-nonfree-nvidia-driver'
#   mv /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo.off
#   #$@!
# }

# function include_rpmfusion-nonfree-nvidia-driver() {
#   echo 'include: rpmfusion-nonfree-nvidia-driver'
#   mv /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo.off /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo
#   #$%
# }
# function exclude_rpmfusion-nonfree-steam() {
#   echo 'exclude: rpmfusion-nonfree-steam'
#   mv /etc/yum.repos.d/rpmfusion-nonfree-steam.repo /etc/yum.repos.d/rpmfusion-nonfree-steam.repo.off
#   #$@!
# }

# function include_rpmfusion-nonfree-steam() {
#   echo 'include: rpmfusion-nonfree-steam'
#   mv /etc/yum.repos.d/rpmfusion-nonfree-steam.repo.off /etc/yum.repos.d/rpmfusion-nonfree-steam.repo
#   #$%
# }
# function exclude_rpmfusion-nonfree-updates-testing() {
#   echo 'exclude: rpmfusion-nonfree-updates-testing'
#   mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off
#   #$@!
# }

# function include_rpmfusion-nonfree-updates-testing() {
#   echo 'include: rpmfusion-nonfree-updates-testing'
#   mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo
#   #$%
# }
# function exclude_teamviewer() {
#   echo 'exclude: teamviewer'
#   mv /etc/yum.repos.d/teamviewer.repo /etc/yum.repos.d/teamviewer.repo.off
#   #$@!
# }

# function include_teamviewer() {
#   echo 'include: teamviewer'
#   mv /etc/yum.repos.d/teamviewer.repo.off /etc/yum.repos.d/teamviewer.repo
#   #$%
# }
# function exclude_vscode() {
#   echo 'exclude: vscode'
#   mv /etc/yum.repos.d/vscode.repo /etc/yum.repos.d/vscode.repo.off
#   #$@!
# }

# function include_vscode() {
#   echo 'include: vscode'
#   mv /etc/yum.repos.d/vscode.repo.off /etc/yum.repos.d/vscode.repo
#   #$%
# }

# function include_repos_() {
#   include_azure-cli
#   include_bintray-ookla-rhel
#   include__copr_phracek-PyCharm
#   include_docker-ce
#   include_fedora-cisco-openh264
#   include_fedora-updates-testing-modular
#   include_fedora-updates-testing
#   include_gh-cli
#   include_google-chrome-beta
#   include_google-chrome
#   include_google-chrome-unstable
#   include_microsoft-insiders-fast
#   include_microsoft-insiders-slow
#   include_microsoft-prod
#   include_mongodb-org-4.4
#   include_rpmfusion-free-updates-testing
#   include_rpmfusion-nonfree-nvidia-driver
#   include_rpmfusion-nonfree-steam
#   include_rpmfusion-nonfree-updates-testing
#   include_teamviewer
#   include_vscode
# }

# function exclude_repos_() {
#   exclude_azure-cli
#   exclude_bintray-ookla-rhel
#   exclude__copr_phracek-PyCharm
#   exclude_docker-ce
#   exclude_fedora-cisco-openh264
#   exclude_fedora-updates-testing-modular
#   exclude_fedora-updates-testing
#   exclude_gh-cli
#   exclude_google-chrome-beta
#   exclude_google-chrome
#   exclude_google-chrome-unstable
#   exclude_microsoft-insiders-fast
#   exclude_microsoft-insiders-slow
#   exclude_microsoft-prod
#   exclude_mongodb-org-4
#   exclude_rpmfusion-free-updates-testing
#   exclude_rpmfusion-nonfree-nvidia-driver
#   exclude_rpmfusion-nonfree-steam
#   exclude_rpmfusion-nonfree-updates-testing
#   exclude_teamviewer
#   exclude_vscode
# }

# ---- k8s.sh ----
#!/bin/bash

alias k="kubectl"

# ---- tmux.sh ----
#!/bin/bash


# Alias to start a new tmux session named 'questrade-ts' using a specific configuration file for Questrade.
alias lxqtx='env tmux -uv -f ${TMUX_CONFIGS}/questrade.tmux.conf new-session -A -s questrade-ts -c ${PATH_LXIO_PRJ}/questrade-ts'

# Alias to start a new tmux session named 'luxcium-io' using a specific configuration file for Luxcium.
alias txio='env tmux -uv -f ${TMUX_CONFIGS}/luxcium.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io'

# Alias to create a new window in the current tmux session.
alias nx='tmux neww'

# Alias to detach from all tmux sessions and then run the 'mxd' command.
alias dx='tmux detach -a; mxd'

# Alias to kill all tmux sessions and processes, and run '_p9k_dump_instant_prompt' and 'notmytty' commands.
alias k='_p9k_dump_instant_prompt;notmytty; tmux kill-session -a; killall tmux'

# Alias to create a new detached tmux window named 'Jupyter Lab' in the specified directory and run 'jupyter lab'.
alias mylab="tmux new-window -d -c '/Users/neb_401/JupyterLab' -n 'Jupyter Lab' 'env jupyter lab'"

# Alias to create a new detached tmux window named 'Jupyter Lab' and run 'jupyter lab'.
alias jlab="tmux new-window -d -n 'Jupyter Lab' 'env jupyter lab'"

# Alias to detach from the current tmux session.
alias quit='tmux detach'

# Alias to run the 'tmux-luxcium' command.
alias lximux='tmux-luxcium'

# Alias to kill a specific tmux session identified by the environment variable $LXI_SESSION.
alias lxikill='tmux kill-session -t $LXI_SESSION'

# Alias to open the tmux configuration file in the Atom editor.
alias cnftmx='atom ~/.tmux.conf'
# alias tmuxlxic='mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io'
# alias mxdef='tmux -uv -f ${TMUX_CONFIGS}/common.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io'
# alias dx='tmux detach'
# alias lxic='tmuxlxic; tmux new-session -A -s luxcium-io;'

# alias tmux='tmux -f ~/.tmux.conf'

