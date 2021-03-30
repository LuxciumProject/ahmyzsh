# -- Excuse my French

# usage: dnf [options] COMMAND

# Liste des commandes principales :

# alias           Liste ou crée les alias de commandes
# autoremove        supprime tous les paquets non nécessaires installés à l’origine comme dépendances
# check           identifier les problèmes dans packagedb
# check-update       recherche les mises à jour de paquets disponibles
# clean           supprime les données du cache
# deplist          Liste les dépendances du paquet et indique quels paquets les fournissent
# distro-sync        synchronise les paquets installés vers leurs versions les plus récentes
# downgrade         Rétrograde un paquet
# group           affiche ou utilise les informations des groupes
# help           affiche un message d’aide à l’utilisation
# history          affiche ou utilise l’historique de transaction
# info           affiche les détails d’un paquet ou d’un groupe de paquets
# install          installe un ou plusieurs paquets sur votre système
# list           liste un paquet ou un groupe de paquets
# makecache         génération du cache des métadonnées
# mark           marquer ou démarquer les paquets installés comme installés par l’utilisateur.
# module          Interagit avec les modules.
# provides         recherche quel paquet fournit la valeur donnée
# reinstall         Réinstalle un paquet
# remove          supprime un ou plusieurs paquets de votre système
# repolist         affiche les dépôts logiciels configurés
# repoquery         recherche les paquets qui correspondent au mot clé
# repository-packages    exécute des commandes pour chaque paquet d’un dépôt donné
# search          recherche les détails du paquet en fonction de la chaîne entrée
# shell           exécute un interpréteur de commandes DNF interactif
# swap           exécute un interpréteur de commandes DNF interactif pour la suppression et l’installation d’une spécification
# updateinfo        affiche des avertissements concernant les paquets
# upgrade          met à niveau un ou plusieurs paquets de votre système
# upgrade-minimal      met à jour, mais uniquement les paquets correspondants les plus récents qui résolvent un problème affectant votre système

# Liste des commandes de greffons :

# builddep         Install build dependencies for package or spec file
# changelog         affiche le contenu du journal des changements des paquets
# config-manager      gestion de la configuration et des dépôts dnf
# copr           Interagit avec les dépôts Copr.
# debug-dump        déverse les informations des paquets rpm installés vers un fichier
# debug-restore       restaure les paquets enregistrés dans le fichier de déversement de débuggage
# debuginfo-install     installe les paquets debuginfo
# download         Téléchargement du paquet dans le répertoire courant
# needs-restarting     détermine les binaires mis à jour qui nécessitent un redémarrage
# playground        Interagit avec le dépôt Playground.
# repoclosure        Affiche une liste de dépendances non résolues pour les dépôts
# repodiff         Liste les différences entre deux ensembles de dépôts
# repograph         Sortie d’un graphe de dépendance des paquets complet au format dot
# repomanage        Gère un dossier de paquets rpm
# reposync         télécharger tous les paquets depuis le dépôt distant

# affiche un message d’aide à l’utilisation

# General DNF options:
#  -c [config file], --config [config file]
#             emplacement du fichier de configuration
#  -q, --quiet      opération silencieuse
#  -v, --verbose     opération verbeuse
#  --version       affiche la version de DNF et quitte
#  --installroot [path] définit la racine d’installation
#  --nodocs       ne pas installer les documentations
#  --noplugins      désactive tous les modules complémentaires
#  --enableplugin [plugin]
#             active les modules complémentaires par nom
#  --disableplugin [plugin]
#             désactive les modules complémentaires par leur nom
#  --releasever RELEASEVER
#             annule la valeur de $releasever dans les fichiers de
#             configuration et de dépôts
#  --setopt SETOPTS   réinitialise la configuration ainsi que les options
#             des dépôts
#  --skip-broken     résout les problèmes de résolutions de dépendance en
#             ignorant les paquets
#  -h, --help, --help-cmd
#             affiche l’aide de la commande
#  --allowerasing    autorise l’effacement des paquets installés pour
#             résoudre les dépendances
#  -b, --best      tente d’utiliser les versions de paquets les plus
#             récentes lors des transactions.
#  --nobest       ne pas limiter la transaction au meilleur candidat
#  -C, --cacheonly    exécute entièrement depuis le cache système, sans le
#             mettre à jour
#  -R [minutes], --randomwait [minutes]
#             temps d’attente maximum de la commande
#  -d [debug level], --debuglevel [debug level]
#             niveau de déboguage pour la sortie
#  --debugsolver     détaille les résultats de résolution des dépendances
#             dans des fichiers
#  --showduplicates   affiche les doublons dans les dépôts, pour les
#             commandes list/search
#  -e ERRORLEVEL, --errorlevel ERRORLEVEL
#             niveau d’erreur pour la sortie
#  --obsoletes      active la mécanique de traitement des paquets
#             obsolètes de dnf pour les mises à jour ou affiche les
#             fonctionnalités qu’un paquet rend obsolètes pour les
#             commandes « info », « list » et « repoquery »
#  --rpmverbosity [debug level name]
#             niveau de déboguage de rpm pour la sortie
#  -y, --assumeyes    répond automatiquement oui à toutes les questions
#  --assumeno      répond automatiquement non à toutes les questions
#  --enablerepo [repo]  Active les dépôts additionnels. Option de liste. Prend
#             en charge les globs, peut être renseigné plusieurs
#             fois.
#  --disablerepo [repo] Désactive les dépôts. Option de liste. Prend en charge
#             les globs, peut être renseigné plusieurs fois.
#  --repo [repo], --repoid [repo]
#             active seulement des dépôts spécifiques par id ou par
#             le caractère générique (*), peut être spécifié
#             plusieurs fois
#  --enable       active les dépôts avec la commande config-manager
#             (sauvegarde automatiquement)
#  --disable       désactive les dépôts avec la commande config-manager
#             (sauvegarde automatiquement)
#  -x [package], --exclude [package], --excludepkgs [package]
#             exclut des paquets par leur nom ou par le caractère
#             générique (*)
#  --disableexcludes [repo], --disableexcludepkgs [repo]
#             désactive « excludepkgs »
#  --repofrompath [repo,path]
#             étiquette et chemin vers un dépôt additionnel (même
#             chemin que dans un baseurl), peut être spécifié
#             plusieurs fois.
#  --noautoremove    désactive la suppression des dépendances désormais
#             inutilisées
#  --nogpgcheck     désactive la vérification par signature gpg (si la
#             politique RPM le permet)
#  --color COLOR     contrôle l’utilisation ou pas de la couleur
#  --refresh       configure les métadonnées comme étant expirées avant
#             d’exécuter la commande
#  -4          résout en adresses IPv4 uniquement
#  -6          résout en adresses IPv6 uniquement
#  --destdir DESTDIR, --downloaddir DESTDIR
#             définit le dossier dans lequel copier les paquets
#  --downloadonly    télécharge seulement des paquets
#  --comment COMMENT   ajoute un commentaire à la transaction
#  --bugfix       Inclut les paquets concernant la correction de bugs
#             dans les mises à jour
#  --enhancement     Inclut les paquets concernant des améliorations dans
#             les mises à jour
#  --newpackage     Inclut les paquets concernant les nouveaux paquets
#             dans les mises à jour
#  --security      Inclure les paquets concernant la sécurité dans les
#             mises à jour
#  --advisory ADVISORY, --advisories ADVISORY
#             Inclut dans les mises à jour les paquets nécessaires
#             pour résoudre une alerte donnée, dans les mises à jour
#  --bz BUGZILLA, --bzs BUGZILLA
#             Inclut dans les mises à jour les paquets nécessaires
#             pour résoudre le ticket BugZilla cité
#  --cve CVES, --cves CVES
#             Inclut dans les mises à jour les paquets nécessaires
#             pour résoudre le CVE cité
#  --sec-severity {Critical,Important,Moderate,Low}, --secseverity {Critical,Important,Moderate,Low}
#             Inclut les paquets concernant la sécurité avec une
#             certaine sévérité dans les mises à jour
#  --forcearch ARCH   Force l’utilisation d’une architecture

################################################################################
## dnfmc --help ################################################################
################################################################################

# usage: dnf makecache [-c [config file]] [-q] [-v] [--version] [--installroot [path]] [--nodocs] [--noplugins]
#           [--enableplugin [plugin]] [--disableplugin [plugin]] [--releasever RELEASEVER] [--setopt SETOPTS]
#           [--skip-broken] [-h] [--allowerasing] [-b | --nobest] [-C] [-R [minutes]] [-d [debug level]] [--debugsolver]
#           [--showduplicates] [-e ERRORLEVEL] [--obsoletes] [--rpmverbosity [debug level name]] [-y] [--assumeno]
#           [--enablerepo [repo]] [--disablerepo [repo] | --repo [repo]] [--enable | --disable] [-x [package]]
#           [--disableexcludes [repo]] [--repofrompath [repo,path]] [--noautoremove] [--nogpgcheck] [--color COLOR]
#           [--refresh] [-4] [-6] [--destdir DESTDIR] [--downloadonly] [--comment COMMENT] [--bugfix] [--enhancement]
#           [--newpackage] [--security] [--advisory ADVISORY] [--bz BUGZILLA] [--cve CVES]
#           [--sec-severity {Critical,Important,Moderate,Low}] [--forcearch ARCH] [--timer]

# génération du cache des métadonnées

# General DNF options:
#  -c [config file], --config [config file]
#             emplacement du fichier de configuration
#  -q, --quiet      opération silencieuse
#  -v, --verbose     opération verbeuse
#  --version       affiche la version de DNF et quitte
#  --installroot [path] définit la racine d’installation
#  --nodocs       ne pas installer les documentations
#  --noplugins      désactive tous les modules complémentaires
#  --enableplugin [plugin]
#             active les modules complémentaires par nom
#  --disableplugin [plugin]
#             désactive les modules complémentaires par leur nom
#  --releasever RELEASEVER
#             annule la valeur de $releasever dans les fichiers de configuration et de dépôts
#  --setopt SETOPTS   réinitialise la configuration ainsi que les options des dépôts
#  --skip-broken     résout les problèmes de résolutions de dépendance en ignorant les paquets
#  -h, --help, --help-cmd
#             affiche l’aide de la commande
#  --allowerasing    autorise l’effacement des paquets installés pour résoudre les dépendances
#  -b, --best      tente d’utiliser les versions de paquets les plus récentes lors des transactions.
#  --nobest       ne pas limiter la transaction au meilleur candidat
#  -C, --cacheonly    exécute entièrement depuis le cache système, sans le mettre à jour
#  -R [minutes], --randomwait [minutes]
#             temps d’attente maximum de la commande
#  -d [debug level], --debuglevel [debug level]
#             niveau de déboguage pour la sortie
#  --debugsolver     détaille les résultats de résolution des dépendances dans des fichiers
#  --showduplicates   affiche les doublons dans les dépôts, pour les commandes list/search
#  -e ERRORLEVEL, --errorlevel ERRORLEVEL
#             niveau d’erreur pour la sortie
#  --obsoletes      active la mécanique de traitement des paquets obsolètes de dnf pour les mises à jour ou affiche les
#             fonctionnalités qu’un paquet rend obsolètes pour les commandes « info », « list » et « repoquery »
#  --rpmverbosity [debug level name]
#             niveau de déboguage de rpm pour la sortie
#  -y, --assumeyes    répond automatiquement oui à toutes les questions
#  --assumeno      répond automatiquement non à toutes les questions
#  --enablerepo [repo]  Active les dépôts additionnels. Option de liste. Prend en charge les globs, peut être renseigné plusieurs
#             fois.
#  --disablerepo [repo] Désactive les dépôts. Option de liste. Prend en charge les globs, peut être renseigné plusieurs fois.
#  --repo [repo], --repoid [repo]
#             active seulement des dépôts spécifiques par id ou par le caractère générique (*), peut être spécifié
#             plusieurs fois
#  --enable       active les dépôts avec la commande config-manager (sauvegarde automatiquement)
#  --disable       désactive les dépôts avec la commande config-manager (sauvegarde automatiquement)
#  -x [package], --exclude [package], --excludepkgs [package]
#             exclut des paquets par leur nom ou par le caractère générique (*)
#  --disableexcludes [repo], --disableexcludepkgs [repo]
#             désactive « excludepkgs »
#  --repofrompath [repo,path]
#             étiquette et chemin vers un dépôt additionnel (même chemin que dans un baseurl), peut être spécifié
#             plusieurs fois.
#  --noautoremove    désactive la suppression des dépendances désormais inutilisées
#  --nogpgcheck     désactive la vérification par signature gpg (si la politique RPM le permet)
#  --color COLOR     contrôle l’utilisation ou pas de la couleur
#  --refresh       configure les métadonnées comme étant expirées avant d’exécuter la commande
#  -4          résout en adresses IPv4 uniquement
#  -6          résout en adresses IPv6 uniquement
#  --destdir DESTDIR, --downloaddir DESTDIR
#             définit le dossier dans lequel copier les paquets
#  --downloadonly    télécharge seulement des paquets
#  --comment COMMENT   ajoute un commentaire à la transaction
#  --bugfix       Inclut les paquets concernant la correction de bugs dans les mises à jour
#  --enhancement     Inclut les paquets concernant des améliorations dans les mises à jour
#  --newpackage     Inclut les paquets concernant les nouveaux paquets dans les mises à jour
#  --security      Inclure les paquets concernant la sécurité dans les mises à jour
#  --advisory ADVISORY, --advisories ADVISORY
#             Inclut dans les mises à jour les paquets nécessaires pour résoudre une alerte donnée, dans les mises à
#             jour
#  --bz BUGZILLA, --bzs BUGZILLA
#             Inclut dans les mises à jour les paquets nécessaires pour résoudre le ticket BugZilla cité
#  --cve CVES, --cves CVES
#             Inclut dans les mises à jour les paquets nécessaires pour résoudre le CVE cité
#  --sec-severity {Critical,Important,Moderate,Low}, --secseverity {Critical,Important,Moderate,Low}
#             Inclut les paquets concernant la sécurité avec une certaine sévérité dans les mises à jour
#  --forcearch ARCH   Force l’utilisation d’une architecture

# Makecache command-specific options:
#  --timer
# MAKECACHE:
# Il n’y a pas de dépôts activés dans « /etc/yum.repos.d", "/etc/yum/repos.d", "/etc/distro.repos.d ».
# Nothing to show here
# /etc/yum.repos.d

# /etc/yum.repos.d

# sudo mv /etc/yum.repos.d/azure-cli.repo /etc/yum.repos.d/azure-cli.repo-off
# sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo /etc/yum.repos.d/bintray-ookla-rhel.repo-off
# sudo mv /etc/yum.repos.d/cuda-fedora32.repo /etc/yum.repos.d/cuda-fedora32.repo-off
# sudo mv /etc/yum.repos.d/cuda-rhel8.repo /etc/yum.repos.d/cuda-rhel8.repo-off
# sudo mv /etc/yum.repos.d/docker-ce.repo /etc/yum.repos.d/docker-ce.repo-off
# sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo /etc/yum.repos.d/fedora-cisco-openh264.repo-off
# sudo mv /etc/yum.repos.d/fedora-modular.repo /etc/yum.repos.d/fedora-modular.repo-off
# sudo mv /etc/yum.repos.d/fedora-updates-modular.repo /etc/yum.repos.d/fedora-updates-modular.repo-off
# sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo /etc/yum.repos.d/fedora-updates-testing-modular.repo-off
# sudo mv /etc/yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo-off
# sudo mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo-off
# sudo mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo-off
# sudo mv /etc/yum.repos.d/gh-cli.repo /etc/yum.repos.d/gh-cli.repo-off
# sudo mv /etc/yum.repos.d/google-chrome-beta.repo /etc/yum.repos.d/google-chrome-beta.repo-off
# sudo mv /etc/yum.repos.d/google-chrome-unstable.repo /etc/yum.repos.d/google-chrome-unstable.repo-off
# sudo mv /etc/yum.repos.d/google-chrome.repo /etc/yum.repos.d/google-chrome.repo-off
# sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo /etc/yum.repos.d/microsoft-insiders-fast.repo-off
# sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo /etc/yum.repos.d/microsoft-insiders-slow.repo-off
# sudo mv /etc/yum.repos.d/microsoft-prod.repo /etc/yum.repos.d/microsoft-prod.repo-off
# sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo-off
# sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo-off
# sudo mv /etc/yum.repos.d/rpmfusion-free-updates.repo /etc/yum.repos.d/rpmfusion-free-updates.repo-off
# sudo mv /etc/yum.repos.d/rpmfusion-free.repo /etc/yum.repos.d/rpmfusion-free.repo-off
# sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo-off
# sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates.repo /etc/yum.repos.d/rpmfusion-nonfree-updates.repo-off
# sudo mv /etc/yum.repos.d/rpmfusion-nonfree.repo /etc/yum.repos.d/rpmfusion-nonfree.repo-off
# sudo mv /etc/yum.repos.d/vscode.repo /etc/yum.repos.d/vscode.repo-off

# sudo mv /etc/yum.repos.d/cuda-rhel8.repo-off /etc/yum.repos.d/cuda-rhel8.repoli.repo-off /etc/yum.repos.d/azure-cli.repo
# /etc/yum.repos.d

# ⑆ mv azure-cli.repo azure-cli.repo-off
# mv: impossible de déplacer 'azure-cli.repo' vers 'azure-cli.repo-off': Permission non accordée
# ⑆ sudo !!
# ⑆ sudo mv azure-cli.repo azure-cli.repo-off

# (play_001&)
# play_002
# play_0020
# play_0021
# play_0022
# play_013
# play_003
# play_010
# play_013
# play_012
# play_013
# play_013
# play_015
# play_016
# play_017
# play_018
# play_019
# play_04
# play_05
# play_06
# play_07
# play_08
# play_09
# play_0x10_0066
# play_0x15_0067
# play_0x16_0068
# play_0x20_0069
# play_0x2B_0070
# play_0x3D_0071
# play_0x54_0072
# play_0x0F_0065
# play_0x5B_0073
# play_0x61_0074
# play_0x66_0075
# play_0x6E_0076
# play_0x7B_0077
# play_0xB9_0078
