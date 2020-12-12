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
