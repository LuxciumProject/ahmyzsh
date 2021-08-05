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
alias unsplash="mv ./*unsplash*.*p*g ${HOME}/Images/unsplash"

function unsplash() {
  "mv ./*unsplash*.jpg ${HOME}/Images/unsplash"
  "mv ./*unsplash*.png ${HOME}/Images/unsplash"
}
function isthere() {
  ( (ls "${1}") 2>/dev/null 1>&2) 1>/dev/null
  return $?
}

function __mvx_() {
  local dir01="${1}s"
  local ext01="${1}"

  mkdir -p ./${dir01}
  mv *.${ext01} ./${dir01}
}

function mp4s() {
  __mvx_ mp4
}

function jpgs() {
  __mvx_ jpg
  mv *.jpeg ./jpgs
}

function pngs() {
  __mvx_ png
}

function gifs() {
  __mvx_ gif
}

function imgs() {
  unsplash
  mp4s
  pngs
  gifs
  jpgs
}

# ( (ls *.mp4) 2>/dev/null 1>&2)
# ls *.mp4 1&2> /dev/null
# /home/luxcium/Téléchargements/
