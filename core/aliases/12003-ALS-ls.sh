alias al="ls -alhSvF -X"
alias alt="ls -alGhSvF -rt"
alias alu="ls -alGhSvF -rut"
alias alc="ls -alGhSvF -rct"

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
