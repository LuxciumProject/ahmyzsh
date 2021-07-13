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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  play_019
  sudo nice -n -15 ionice -c 1 -n 2 dnf distro-sync --setopt=keepcache=1 $1 || play_etc-dialog
}

function yumFedoraActivate() {
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
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
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/azure-cli.repo /etc/yum.repos.d/azure-cli.repo.off) && echo 'exclude: azure-cli' || echo 'exclude: azure-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_azure-cli() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/azure-cli.repo.off /etc/yum.repos.d/azure-cli.repo) && echo 'include: azure-cli' || echo 'include: azure-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_bintray-ookla-rhel() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo /etc/yum.repos.d/bintray-ookla-rhel.repo.off) && echo 'exclude: bintray-ookla-rhel' || echo 'exclude: bintray-ookla-rhel → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_bintray-ookla-rhel() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo.off /etc/yum.repos.d/bintray-ookla-rhel.repo) && echo 'include: bintray-ookla-rhel' || echo 'include: bintray-ookla-rhel → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude__copr_phracek-PyCharm() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/_copr_phracek-PyCharm.repo /etc/yum.repos.d/_copr_phracek-PyCharm.repo.off) && echo 'exclude: _copr_phracek-PyCharm' || echo 'exclude: _copr_phracek-PyCharm → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include__copr_phracek-PyCharm() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/_copr_phracek-PyCharm.repo.off /etc/yum.repos.d/_copr_phracek-PyCharm.repo) && echo 'include: _copr_phracek-PyCharm' || echo 'include: _copr_phracek-PyCharm → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_docker-ce() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/docker-ce.repo /etc/yum.repos.d/docker-ce.repo.off) && echo 'exclude: docker-ce' || echo 'exclude: docker-ce → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_docker-ce() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/docker-ce.repo.off /etc/yum.repos.d/docker-ce.repo) && echo 'include: docker-ce' || echo 'include: docker-ce → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_fedora-cisco-openh264() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo /etc/yum.repos.d/fedora-cisco-openh264.repo.off) && echo 'exclude: fedora-cisco-openh264' || echo 'exclude: fedora-cisco-openh264 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_fedora-cisco-openh264() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo.off /etc/yum.repos.d/fedora-cisco-openh264.repo) && echo 'include: fedora-cisco-openh264' || echo 'include: fedora-cisco-openh264 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_fedora-updates-testing-modular() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo /etc/yum.repos.d/fedora-updates-testing-modular.repo.off) && echo 'exclude: fedora-updates-testing-modular' || echo 'exclude: fedora-updates-testing-modular → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_fedora-updates-testing-modular() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo.off /etc/yum.repos.d/fedora-updates-testing-modular.repo) && echo 'include: fedora-updates-testing-modular' || echo 'include: fedora-updates-testing-modular → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_fedora-updates-testing() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo.off) && echo 'exclude: fedora-updates-testing' || echo 'exclude: fedora-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_fedora-updates-testing() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo.off /etc/yum.repos.d/fedora-updates-testing.repo) && echo 'include: fedora-updates-testing' || echo 'include: fedora-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_gh-cli() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/gh-cli.repo /etc/yum.repos.d/gh-cli.repo.off) && echo 'exclude: gh-cli' || echo 'exclude: gh-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_gh-cli() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/gh-cli.repo.off /etc/yum.repos.d/gh-cli.repo) && echo 'include: gh-cli' || echo 'include: gh-cli → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_google-chrome-beta() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo /etc/yum.repos.d/google-chrome-beta.repo.off) && echo 'exclude: google-chrome-beta' || echo 'exclude: google-chrome-beta → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_google-chrome-beta() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo.off /etc/yum.repos.d/google-chrome-beta.repo) && echo 'include: google-chrome-beta' || echo 'include: google-chrome-beta → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_google-chrome() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome.repo /etc/yum.repos.d/google-chrome.repo.off) && echo 'exclude: google-chrome' || echo 'exclude: google-chrome → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_google-chrome() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome.repo.off /etc/yum.repos.d/google-chrome.repo) && echo 'include: google-chrome' || echo 'include: google-chrome → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_google-chrome-unstable() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo /etc/yum.repos.d/google-chrome-unstable.repo.off) && echo 'exclude: google-chrome-unstable' || echo 'exclude: google-chrome-unstable → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_google-chrome-unstable() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo.off /etc/yum.repos.d/google-chrome-unstable.repo) && echo 'include: google-chrome-unstable' || echo 'include: google-chrome-unstable → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_microsoft-insiders-fast() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo /etc/yum.repos.d/microsoft-insiders-fast.repo.off) && echo 'exclude: microsoft-insiders-fast' || echo 'exclude: microsoft-insiders-fast → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_microsoft-insiders-fast() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo.off /etc/yum.repos.d/microsoft-insiders-fast.repo) && echo 'include: microsoft-insiders-fast' || echo 'include: microsoft-insiders-fast → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_microsoft-insiders-slow() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo /etc/yum.repos.d/microsoft-insiders-slow.repo.off) && echo 'exclude: microsoft-insiders-slow' || echo 'exclude: microsoft-insiders-slow → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_microsoft-insiders-slow() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo.off /etc/yum.repos.d/microsoft-insiders-slow.repo) && echo 'include: microsoft-insiders-slow' || echo 'include: microsoft-insiders-slow → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_microsoft-prod() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-prod.repo /etc/yum.repos.d/microsoft-prod.repo.off) && echo 'exclude: microsoft-prod' || echo 'exclude: microsoft-prod → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_microsoft-prod() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/microsoft-prod.repo.off /etc/yum.repos.d/microsoft-prod.repo) && echo 'include: microsoft-prod' || echo 'include: microsoft-prod → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_mongodb-org-4-4() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo.off) && echo 'exclude: mongodb-org-4.4' || echo 'exclude: mongodb-org-4.4 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_mongodb-org-4-4() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo.off /etc/yum.repos.d/mongodb-org-4.4.repo) && echo 'include: mongodb-org-4.4' || echo 'include: mongodb-org-4.4 → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-free-updates-testing() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off) && echo 'exclude: rpmfusion-free-updates-testing' || echo 'exclude: rpmfusion-free-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-free-updates-testing() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-free-updates-testing.repo) && echo 'include: rpmfusion-free-updates-testing' || echo 'include: rpmfusion-free-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-nonfree-nvidia-driver() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo.off) && echo 'exclude: rpmfusion-nonfree-nvidia-driver' || echo 'exclude: rpmfusion-nonfree-nvidia-driver → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-nonfree-nvidia-driver() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo.off /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo) && echo 'include: rpmfusion-nonfree-nvidia-driver' || echo 'include: rpmfusion-nonfree-nvidia-driver → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-nonfree-steam() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-steam.repo /etc/yum.repos.d/rpmfusion-nonfree-steam.repo.off) && echo 'exclude: rpmfusion-nonfree-steam' || echo 'exclude: rpmfusion-nonfree-steam → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-nonfree-steam() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-steam.repo.off /etc/yum.repos.d/rpmfusion-nonfree-steam.repo) && echo 'include: rpmfusion-nonfree-steam' || echo 'include: rpmfusion-nonfree-steam → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_rpmfusion-nonfree-updates-testing() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off) && echo 'exclude: rpmfusion-nonfree-updates-testing' || echo 'exclude: rpmfusion-nonfree-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_rpmfusion-nonfree-updates-testing() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo.off /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo) && echo 'include: rpmfusion-nonfree-updates-testing' || echo 'include: rpmfusion-nonfree-updates-testing → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_teamviewer() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/teamviewer.repo /etc/yum.repos.d/teamviewer.repo.off) && echo 'exclude: teamviewer' || echo 'exclude: teamviewer → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_teamviewer() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/teamviewer.repo.off /etc/yum.repos.d/teamviewer.repo) && echo 'include: teamviewer' || echo 'include: teamviewer → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$%
}
function exclude_vscode() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

  (sudo mv /etc/yum.repos.d/vscode.repo /etc/yum.repos.d/vscode.repo.off) && echo 'exclude: vscode' || echo 'exclude: vscode → UNABLE TO COMPLETE TASK'

  # sleep 0.111
  # play_013 &

  #$@!
}

function include_vscode() {
  # source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

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
