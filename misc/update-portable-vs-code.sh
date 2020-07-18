# for f in *.xls ; do xls2csv "$f" "${f%.xls}.csv" ; done
#

# LOCATION="/home/luxcium/visual-studio-code/downloads"

# /\*.x86_64.rpm
# for f in "${LOCATION}"; do echo "$f"; done

# /home/luxcium/visual-studio-code/downloads/*.x86_64.rpm

echo $(echo "/tmp/lxcm$(/home/luxcium/ahmyzsh/plugins/bin/randx 4)-vscode-download" | tr \[A-Z\] \[a-z\])
echo "/tmp/LXCM$(/home/luxcium/ahmyzsh/plugins/bin/randx 8)-$(date +%Y%m%d%H%M%S%Z)-vscode-download"

echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 4)
echo -n $(date +%Y%m%d%H%M%S%Z)
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 4)
echo ''

(
  myUXID="$(/home/luxcium/ahmyzsh/plugins/bin/uxid)"
  FOLDER_LOCATION="/tmp/lxcm-$myUXID/visual-studio-code/downloads"
  sudo mkdir -pv "${FOLDER_LOCATION}"
  cd ${FOLDER_LOCATION} &&
    sudo dnf reinstall "code*" --downloadonly --downloaddir $FOLDER_LOCATION -y &&
    for f in $(ls ${FOLDER_LOCATION}/*code*.x86_64.rpm); do sudo rpm2cpio "$f" | sudo cpio -idmv --no-absolute-filenames; done

  # file:///tmp/lxcm-D20F204077175201172UXIDZF4358035/visual-studio-code/downloads/usr/share/code/code
  # file:///tmp/lxcm-D20F204077175201172UXIDZF4358035/visual-studio-code/downloads/usr/share/code-insiders/code-insiders
  # cd visual-studio-code/downloads/usr/share/s

  destFolder="${HOME}/potable-vscode/lxcm${myUXID:0:8}"
  destFolderCode="${destFolder}/code/"
  destFolderCodeInsiders="${destFolder}/insiders/"

  sudo mkdir -pv "${FOLDER_LOCATION}/usr/share/code-insiders/data/tmp/"
  sudo mkdir -pv "${FOLDER_LOCATION}/usr/share/code/data/tmp/"

  sudo chown -R luxcium "${FOLDER_LOCATION}"
  sudo chgrp -R luxcium "${FOLDER_LOCATION}"

  destFolderCode="${HOME}/potable-vscode/lxcm${myUXID:0:8}/"
  destFolderCodeInsiders="${HOME}/potable-vscode/lxcm${myUXID:0:8}/"

  sudo mkdir -pv "${destFolderCode}"
  sudo mkdir -pv "${destFolderCodeInsiders}"

  sudo chown -R luxcium "${destFolderCode}"
  sudo chgrp -R luxcium "${destFolderCode}"

  sudo cp -r "${FOLDER_LOCATION}/usr/share/code/" "${destFolderCode}"
  sudo cp -r "${FOLDER_LOCATION}/usr/share/code-insiders/" "${destFolderCodeInsiders}"

  sudo chown -R luxcium "/home/luxcium/potable-vscode"
  sudo chgrp -R luxcium "/home/luxcium/potable-vscode"
)
#  mkdir -pv "${destFolderCode}"
#  mkdir -pv "${destFolderCodeInsiders}"

# date +%Y%m%d%H%M%S%Z
# 4 294 967 296 (8 hex)
/home/luxcium/visual-studio-code/downloads

mkdir -pv /home/luxcium/visual-studio-code/downloads/usr/share/code/data/tmp
mkdir -pv /home/luxcium/visual-studio-code/downloads/usr/share/code-insiders/data/tmp

echo "$(/home/luxcium/ahmyzsh/plugins/bin/randx 1) # (1 4bit) 16"
echo "$(/home/luxcium/ahmyzsh/plugins/bin/randx 2) # (2 8bit) 256"
echo "$(/home/luxcium/ahmyzsh/plugins/bin/randx 4) # (4 16 bit) 65 536"
echo "$(/home/luxcium/ahmyzsh/plugins/bin/randx 6) # (6 24 bits) 16 777 216"
echo "$(/home/luxcium/ahmyzsh/plugins/bin/randx 8) # (8 32 bits) 4 294 967 296"
echo "$(/home/luxcium/ahmyzsh/plugins/bin/randx 16) # (16 64 bits) 18 446 744 073 709 551 616"

echo "# (1 4bit) 16 - $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)"
echo "# (2 8bit) 256 - $(/home/luxcium/ahmyzsh/plugins/bin/randx 2)"
echo "# (4 16 bit) 65 536 - $(/home/luxcium/ahmyzsh/plugins/bin/randx 4)"
echo "# (6 24 bits) 16 777 216 - $(/home/luxcium/ahmyzsh/plugins/bin/randx 6)"
echo "# (8 32 bits) 4 294 967 296 - $(/home/luxcium/ahmyzsh/plugins/bin/randx 8)"
echo "# (16 64 bits) 18 446 744 073 709 551 616 - $(/home/luxcium/ahmyzsh/plugins/bin/randx 16)"

# (0 0bit) 1
# (1 4bit) 16 - 9
# (2 8bit) 256 - BA
# (4 16 bit) 65 536 - FE87
# (6 24 bits) 16 777 216 - 2546F2
# (8 32 bits) 4 294 967 296 - 9C19BCC2
# (16 64 bits) 18 446 744 073 709 551 616 - DAA2C6A9BC45476A

echo $(/home/luxcium/ahmyzsh/plugins/bin/randx 8)$(date +%Y%m%d%H%M%S%Z)$(/home/luxcium/ahmyzsh/plugins/bin/randx 8)
echo $(/home/luxcium/ahmyzsh/plugins/bin/randx 4)$(date +%Y%m%d%H%M%S%Z%N)$(/home/luxcium/ahmyzsh/plugins/bin/randx 4)
echo $(/home/luxcium/ahmyzsh/plugins/bin/randx 16)$(date +%Y%m%d%H%M%S%Z)$(/home/luxcium/ahmyzsh/plugins/bin/randx 16)

echo $(echo "LXCM$(/home/luxcium/ahmyzsh/plugins/bin/randx 4)$(date +%Y%m%d%H%M%Z)$(/home/luxcium/ahmyzsh/plugins/bin/randx 4)ID" | tr \[a-z\] \[A-Z\])

#   %C   siècle, comme %Y, sans les deux derniers chiffres (par exemple 20)
#   %y   deux derniers chiffres de l'année (00..99)
#   %m   mois (01..12)
#   %d   jour du mois (par exemple 01)
#   %H   heure (00..23)
#   %M   minute (00..59)
#   %Z   abréviation alphabétique des fuseaux horaires (par exemple EDT)
#   %S   secondes (00..60)
#   %N   nanosecondes (000000000..999999999)

# 0
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 1
echo -n $(date --utc +%C) # %C siècle, comme %Y, sans les deux derniers chiffres
# +2 = 3
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 4
echo -n $(date --utc +%y) # %y deux derniers chiffres de l'année (00..99)
# +2 = 6
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 7
echo -n $(date --utc +%m) # %m mois (01..12)
# +2 = 9
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 10
echo -n $(date --utc +%d) # %d jour du mois (par exemple 01)
# +2 = 12
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 13
echo -n $(date --utc +%H) # %H heure (00..23)
# +2 = 15
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 16
echo -n $(date --utc +%M) # %M minute (00..59)
# +2 = 18
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 19
echo -n $(date --utc +%S) # %S secondes (00..60)
# +2 = 21
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 22
echo -n 'XUIID' # % Temps Universel (heure du méridien de Greenwich)
# +5 = 27
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 28
echo -n $(date --utc +%N | cut -c -3) # %N nanosecondes (000000000..999999999)
# +3 = 31
echo -n $(/home/luxcium/ahmyzsh/plugins/bin/randx 1)
# +1 = 32

# 0
# +1 = 1
# %C siècle, comme %Y, sans les deux derniers chiffres
# +2 = 3
# +1 = 4
# %y deux derniers chiffres de l'année (00..99)
# +2 = 6
# +1 = 7
# %m mois (01..12)
# +2 = 9
# +1 = 10
# %d jour du mois (par exemple 01)
# +2 = 12
# +1 = 13
# %H heure (00..23)
# +2 = 15
# +1 = 16
# %M minute (00..59)
# +2 = 18
# +1 = 19
# %S secondes (00..60)
# +2 = 21
# +1 = 22
# %Z abréviation alphabétique des fuseaux horaires (par exemple EDT)
# +3 = 25
# +1 = 26
# %N nanosecondes (000000000..999999999)
# +3 = 29
# +1 = 30
# +1 = 31

2-3
5-6
8-9
11-12
14-15
17-18
21-22
# %C siècle, comme %Y, sans les deux derniers chiffres
# %y deux derniers chiffres de l'année (00..99)
# %m mois (01..12)
# %d jour du mois (par exemple 01)
# %H heure (00..23)
# %M minute (00..59)
# %S secondes (00..60)
# %Z abréviation alphabétique des fuseaux horaires (par exemple EDT)
# %N nanosecondes (000000000..999999999)

echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 2-3)   # %C siècle, comme %Y, sans les deux derniers chiffres
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 5-6)   # %y deux derniers chiffres de l'année (00..99)
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 8-9)   # %m mois (01..12)
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 11-12) # %d jour du mois (par exemple 01)
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 14-15) # %H heure (00..23)
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 17-18) # %M minute (00..59)
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 20-21) # %S secondes (00..60)
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 23-25) # %Z abréviation alphabétique des fuseaux horaires (par exemple EDT)
echo $(echo '320720C07A16B23252555AEDTA192DX' | cut -c 27-29) # & Milisecondes (000..999)
#  sudo nice -n -20 taskset -c 1,8 ionice -c 1 -n 0 echo $(date +%S%N | cut -c -5) >> timetests.txt;

# | cut -c -${1}

# (0 0bit) 1
# (1 4bit) 16
# (2 8bit) 256
# (4 16 bit) 65 536
# (6 24 bits) 16 777 216
# (8 32 bits) 4 294 967 296
# (16 64 bits) 18 446 744 073 709 551 616

# (0) 1
# (1 4bit) 16
# (2 8bit) 256
# (3) 4 096
# (4 16 bit) 65 536
# (5) 1 048 576
# (6 24 bit) 16 777 216
# (7) 268 435 456
# (8 32bit) 4 294 967 296

# (9) 68 719 476 736
# (10) 1 099 511 627 776
# (11) 17 592 186 044 416
# (12) 281 474 976 710 656
# (13) 4 503 599 627 370 496
# (14) 72 057 594 037 927 936
# (15) 1 152 921 504 606 846 976
# (16 64bit) 18 446 744 073 709 551 616

# C20520907B165238379EDT8282884
#   %C   siècle, comme %Y, sans les deux derniers chiffres (par exemple 20)
#   %y   deux derniers chiffres de l'année (00..99)
#   %m   mois (01..12)
#   %d   jour du mois (par exemple 01)
#   %H   heure (00..23)
#   %M   minute (00..59)
#   %Z   abréviation alphabétique des fuseaux horaires (par exemple EDT)
#   %S   secondes (00..60)
#   %N   nanosecondes (000000000..999999999)

#   %%   un caractère %
#   %a   nom du jour de la semaine abrégé (par exemple dim.)
#   %A   nom complet localisé du jour de la semaine (par exemple dimanche)
#   %b   nom abrégé localisé du mois (par exemple janv.)
#   %B   nom complet localisé du mois (par exemple janvier)
#   %c   date et heure localisées (par exemple jeu. 03 mars 2005 23:05:25 CET)
#   %D   date, identique à %m/%d/%y
#   %e   jour du mois, éventuellement complété par une espace, identique à %_d
#   %F   date complète, identique à %+4Y-%m-%d
#   %g   deux derniers chiffres de l'année du numéro de semaine ISO (voir %G)
#   %G   année correspondant au numéro de semaine ISO (voir %V) ; normalement uniquement utile avec %V
#   %h   identique à %b
#   %I   heure (01..12)
#   %j   jour de l'année (001..366)
#   %k   heure avec espace ( 0..23), identique à %_H
#   %l   heure avec espace ( 1..12), identique à %_I
#   %n   un saut de ligne
#   %p   équivalent locale de AM ou PM (blanc si inconnu)
#   %P   identique à %p mais en minuscules
#   %q   trimestre (1..4)
#   %r   heure locale au format 12 heures (par exemple 11:11:04 PM)
#   %R   heure en format 24 heures identique à %H:%M
#   %s   secondes depuis 1970-01-01 00:00:00 UTC
#   %t   une tabulation
#   %T   l'heure, identique à %H:%M:%S
#   %u   jour de la semaine (1..7) ; 1 représente le lundi
#   %U   numéro de la semaine de l'année, avec dimanche en premier jour de la semaine (00..53)
#   %V   numéro de la semaine ISO, avec lundi en premier jour de la semaine
#   %w   jour de la semaine (0..6), 0 représente le dimanche
#   %W   numéro de la semaine, avec lundi en premier jour de la semaine (00..53)
#   %x   représentation localisée de la date (par exemple 12/31/99)
#   %X   représentation localisée de l'heure (par exemple 23:13:48)
#   %Y   année
#   %z   fuseau horaire numérique +hhmm  (par exemple -0400)
#   %:z  fuseau horaire numérique +hh:mm (par exemple -04:00)
#   %::z  fuseau horaire numérique +hh:mm:ss (par exemple -04:00:00)
#   %:::z  fuseau horaire numérique utilisant « : » pour la précision (par exemple -04, +05:30)

# Par défaut, les champs de dates numériques sont complétés par des zéros.
# Les attributs optionnels suivants peuvent suivre « % » :

#   -  (trait d'union) ne pas compléter le champ
#   _  (tiret bas) compléter avec des espaces
#   0  (zéro) compléter avec des zéros
#   +  compléter avec des zéros et ajouter « + » avant les années futures comportant >4 chiffres
#   ^  utiliser des majuscules si possible
#   #  utiliser la casse opposée si possible

# Chaque attribut est suivi d'un champ optionnel de largeur sous la forme
# d'un nombre décimal, éventuellement suivi d'un des modificateurs suivants :
# E pour utiliser la représentation localisée alternative si disponible ou
# O pour utiliser la représentation localisée alternative des symboles numériques
# si disponible.

# Exemples :
# Convertir les secondes depuis Epoch (1970-01-01 UTC) en une date :
#   $ date --date='@2147483647'

# Afficher l'heure en Martinique (utilisez tzselect(1)) pour trouver TZ) :
#   $ TZ='America/Martinique' date

# Afficher l'heure locale pour 9 h du matin, vendredi prochain en Martinique :
#   $ date --date='TZ="America/Martinique" 09:00 next Fri'

# Aide en ligne de GNU coreutils : <https://www.gnu.org/software/coreutils/>
# Signalez les problèmes de traduction de à : <traduc@traduc.org>
# Documentation complète <https://www.gnu.org/software/coreutils/date>
# ou disponible localement via: info '(coreutils) date invocation'

foo=$(xuiid)
foo1=

bazz=0
bazzx=0
for ((i = 0; i < ${#foo}; i++)); do
  bar=$(printf %d\\n \'$(echo -n "${foo:$i:1}"))
  bazz=$((($bazz + $bar)))
  bazzx=$((($bazzx + $bazz)))
done
echo $((($bazz % 10)))
echo $((($bazzx % 10)))
foo2="$(echo $foo | cut -c 1-23)$((($bazz % 10)))$((($bazzx % 10)))$(echo $foo | cut -c 27-32)"
barr=0
baxx=0
for ((i = 0; i < ${#foo2}; i++)); do
  bar=$(printf %d\\n \'$(echo -n "${foo2:$i:1}"))
  # echo $bar
  barr=$((($barr + $bar)))
  baxx=$((($baxx + $barr)))
done
echo $((($barr % 10)))
echo $((($baxx % 10)))
echo $foo2 #="$(echo $foo | cut -c 1-26)$((($bazzx % 10)))$(echo $foo | cut -c 28-32)"
