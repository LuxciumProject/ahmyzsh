# ---- DNF ---------------------------------------------------------------
## Aliases

#@ https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/dnf/dnf.plugin.zsh
#@ commit:c0b1252
#@ created by https://github.com/GioMac
#@ updated and maintained by https://github.com/mcornella

# alias dnfl="dnf list"            # List packages
alias dnfli="dnf list --installed" # List installed packages
alias dnfgl="dnf grouplist"        # List package groups
alias dnfmc="dnf makecache"        # Generate metadata cache
alias dnfp="dnf info"              # Show package information
alias dnfs="dnf search"            # Search package

alias dnfu="sudo dnf upgrade"       # Upgrade package
alias dnfi="sudo dnf install"       # Install package
alias dnfgi="sudo dnf groupinstall" # Install package group
alias dnfr="sudo dnf remove"        # Remove package
alias dnfgr="sudo dnf groupremove"  # Remove package group
alias dnfc="sudo dnf clean all"     # Clean cache

## Additional Aliases
#@ created by https://github.com/Luxcium
alias dnfud="sudo dnf upgrade --downloadonly -y" # Upgrade package

## Functions
#@ created by https://github.com/Luxcium
function dnfl() {
  sudo dnf list "*${@}*"
}

function dnfr() {
  sudo dnf remove "*${@}*"
}

function dnfi() {
  sudo dnf install "*${@}*"
}

# -- Excuse my French

# usage: dnf [options] COMMAND

# Liste des commandes principales :

# alias                     Liste ou crée les alias de commandes
# autoremove                supprime tous les paquets non nécessaires installés à l’origine comme dépendances
# check                     identifier les problèmes dans packagedb
# check-update              recherche les mises à jour de paquets disponibles
# clean                     supprime les données du cache
# deplist                   Liste les dépendances du paquet et indique quels paquets les fournissent
# distro-sync               synchronise les paquets installés vers leurs versions les plus récentes
# downgrade                 Rétrograde un paquet
# group                     affiche ou utilise les informations des groupes
# help                      affiche un message d’aide à l’utilisation
# history                   affiche ou utilise l’historique de transaction
# info                      affiche les détails d’un paquet ou d’un groupe de paquets
# install                   installe un ou plusieurs paquets sur votre système
# list                      liste un paquet ou un groupe de paquets
# makecache                 génération du cache des métadonnées
# mark                      marquer ou démarquer les paquets installés comme installés par l’utilisateur.
# module                    Interagit avec les modules.
# provides                  recherche quel paquet fournit la valeur donnée
# reinstall                 Réinstalle un paquet
# remove                    supprime un ou plusieurs paquets de votre système
# repolist                  affiche les dépôts logiciels configurés
# repoquery                 recherche les paquets qui correspondent au mot clé
# repository-packages       exécute des commandes pour chaque paquet d’un dépôt donné
# search                    recherche les détails du paquet en fonction de la chaîne entrée
# shell                     exécute un interpréteur de commandes DNF interactif
# swap                      exécute un interpréteur de commandes DNF interactif pour la suppression et l’installation d’une spécification
# updateinfo                affiche des avertissements concernant les paquets
# upgrade                   met à niveau un ou plusieurs paquets de votre système
# upgrade-minimal           met à jour, mais uniquement les paquets correspondants les plus récents qui résolvent un problème affectant votre système

# Liste des commandes de greffons :

# builddep                  Install build dependencies for package or spec file
# changelog                 affiche le contenu du journal des changements des paquets
# config-manager            gestion de la configuration et des dépôts dnf
# copr                      Interagit avec les dépôts Copr.
# debug-dump                déverse les informations des paquets rpm installés vers un fichier
# debug-restore             restaure les paquets enregistrés dans le fichier de déversement de débuggage
# debuginfo-install         installe les paquets debuginfo
# download                  Téléchargement du paquet dans le répertoire courant
# needs-restarting          détermine les binaires mis à jour qui nécessitent un redémarrage
# playground                Interagit avec le dépôt Playground.
# repoclosure               Affiche une liste de dépendances non résolues pour les dépôts
# repodiff                  Liste les différences entre deux ensembles de dépôts
# repograph                 Sortie d’un graphe de dépendance des paquets complet au format dot
# repomanage                Gère un dossier de paquets rpm
# reposync                  télécharger tous les paquets depuis le dépôt distant

# affiche un message d’aide à l’utilisation

# General DNF options:
#   -c [config file], --config [config file]
#                         emplacement du fichier de configuration
#   -q, --quiet           opération silencieuse
#   -v, --verbose         opération verbeuse
#   --version             affiche la version de DNF et quitte
#   --installroot [path]  définit la racine d’installation
#   --nodocs              ne pas installer les documentations
#   --noplugins           désactive tous les modules complémentaires
#   --enableplugin [plugin]
#                         active les modules complémentaires par nom
#   --disableplugin [plugin]
#                         désactive les modules complémentaires par leur nom
#   --releasever RELEASEVER
#                         annule la valeur de $releasever dans les fichiers de
#                         configuration et de dépôts
#   --setopt SETOPTS      réinitialise la configuration ainsi que les options
#                         des dépôts
#   --skip-broken         résout les problèmes de résolutions de dépendance en
#                         ignorant les paquets
#   -h, --help, --help-cmd
#                         affiche l’aide de la commande
#   --allowerasing        autorise l’effacement des paquets installés pour
#                         résoudre les dépendances
#   -b, --best            tente d’utiliser les versions de paquets les plus
#                         récentes lors des transactions.
#   --nobest              ne pas limiter la transaction au meilleur candidat
#   -C, --cacheonly       exécute entièrement depuis le cache système, sans le
#                         mettre à jour
#   -R [minutes], --randomwait [minutes]
#                         temps d’attente maximum de la commande
#   -d [debug level], --debuglevel [debug level]
#                         niveau de déboguage pour la sortie
#   --debugsolver         détaille les résultats de résolution des dépendances
#                         dans des fichiers
#   --showduplicates      affiche les doublons dans les dépôts, pour les
#                         commandes list/search
#   -e ERRORLEVEL, --errorlevel ERRORLEVEL
#                         niveau d’erreur pour la sortie
#   --obsoletes           active la mécanique de traitement des paquets
#                         obsolètes de dnf pour les mises à jour ou affiche les
#                         fonctionnalités qu’un paquet rend obsolètes pour les
#                         commandes « info », « list » et « repoquery »
#   --rpmverbosity [debug level name]
#                         niveau de déboguage de rpm pour la sortie
#   -y, --assumeyes       répond automatiquement oui à toutes les questions
#   --assumeno            répond automatiquement non à toutes les questions
#   --enablerepo [repo]   Active les dépôts additionnels. Option de liste. Prend
#                         en charge les globs, peut être renseigné plusieurs
#                         fois.
#   --disablerepo [repo]  Désactive les dépôts. Option de liste. Prend en charge
#                         les globs, peut être renseigné plusieurs fois.
#   --repo [repo], --repoid [repo]
#                         active seulement des dépôts spécifiques par id ou par
#                         le caractère générique (*), peut être spécifié
#                         plusieurs fois
#   --enable              active les dépôts avec la commande config-manager
#                         (sauvegarde automatiquement)
#   --disable             désactive les dépôts avec la commande config-manager
#                         (sauvegarde automatiquement)
#   -x [package], --exclude [package], --excludepkgs [package]
#                         exclut des paquets par leur nom ou par le caractère
#                         générique (*)
#   --disableexcludes [repo], --disableexcludepkgs [repo]
#                         désactive « excludepkgs »
#   --repofrompath [repo,path]
#                         étiquette et chemin vers un dépôt additionnel (même
#                         chemin que dans un baseurl), peut être spécifié
#                         plusieurs fois.
#   --noautoremove        désactive la suppression des dépendances désormais
#                         inutilisées
#   --nogpgcheck          désactive la vérification par signature gpg (si la
#                         politique RPM le permet)
#   --color COLOR         contrôle l’utilisation ou pas de la couleur
#   --refresh             configure les métadonnées comme étant expirées avant
#                         d’exécuter la commande
#   -4                    résout en adresses IPv4 uniquement
#   -6                    résout en adresses IPv6 uniquement
#   --destdir DESTDIR, --downloaddir DESTDIR
#                         définit le dossier dans lequel copier les paquets
#   --downloadonly        télécharge seulement des paquets
#   --comment COMMENT     ajoute un commentaire à la transaction
#   --bugfix              Inclut les paquets concernant la correction de bugs
#                         dans les mises à jour
#   --enhancement         Inclut les paquets concernant des améliorations dans
#                         les mises à jour
#   --newpackage          Inclut les paquets concernant les nouveaux paquets
#                         dans les mises à jour
#   --security            Inclure les paquets concernant la sécurité dans les
#                         mises à jour
#   --advisory ADVISORY, --advisories ADVISORY
#                         Inclut dans les mises à jour les paquets nécessaires
#                         pour résoudre une alerte donnée, dans les mises à jour
#   --bz BUGZILLA, --bzs BUGZILLA
#                         Inclut dans les mises à jour les paquets nécessaires
#                         pour résoudre le ticket BugZilla cité
#   --cve CVES, --cves CVES
#                         Inclut dans les mises à jour les paquets nécessaires
#                         pour résoudre le CVE cité
#   --sec-severity {Critical,Important,Moderate,Low}, --secseverity {Critical,Important,Moderate,Low}
#                         Inclut les paquets concernant la sécurité avec une
#                         certaine sévérité dans les mises à jour
#   --forcearch ARCH      Force l’utilisation d’une architecture
