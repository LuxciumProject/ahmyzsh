# ---- DNF ---------------------------------------------------------------
## Aliases

#@ https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/dnf/dnf.plugin.zsh
#@ commit:c0b1252
#@ created by https://github.com/GioMac
#@ updated and maintained by https://github.com/mcornella

# alias dnfl='dnf list'       # List packages
# alias dnfli='dnf list --installed' # List installed packages
alias dnfgl='dnf grouplist' # List package groups
alias dnfp='dnf info'       # Show package information
alias dnfs='dnf search'     # Search package
# alias dnfu='sudo dnf upgrade --refresh'   # Upgrade package
# alias dnfuy='sudo dnf upgrade -y --refresh' # Upgrade package
# alias dnfi='sudo dnf install'    # Install package
alias dnfgi='sudo dnf groupinstall' # Install package group
alias dnfr='sudo dnf remove'        # Remove package
alias dnfgr='sudo dnf groupremove'  # Remove package group
alias dnfmc='dnf makecache'         # Generate metadata cache
alias dnfc='sudo dnf clean all'     # Clean cache
alias dnfmkcln='dnfc -v; dnfmc'     # Clean cache & Regenerate metadata cache

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

## Additional Aliases
#@ created by https://github.com/Luxcium
alias dnfud='sudo dnf upgrade --downloadonly -y --refresh' # Upgrade package

## Functions
#@ created by https://github.com/Luxcium

function dnfl() {
  sudo dnf list "*${@}*"
}

function dnfli() {
  sudo dnf list --installed "*${@}*"
}

function dnfr() {
  sudo dnf remove "*${@}*"
}

function dnfi() {
  sudo dnf install "*${@}*"
}

function dnfxr() {
  sudo nice -n -15 ionice -c 1 -n 1 dnf remove "*${@}*"
}

function dnfxi() {
  sudo nice -n -15 ionice -c 1 -n 1 dnf install "*${@}*"
}

function _dnf_clean_all() {
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  echo "CLEAN ALL:"
  sudo nice -25 ionice -c 3 dnf clean all --refresh && play_osx1_0012_critical_chronicles || play_osx2_0002_assend_attention
  echo ""
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
}

# download updates
function _get_updates() {

  (
    (
      (
        source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
        play_019
        sudo nice -n -15 ionice -c 2 -n 0 dnf upgrade --downloadonly --setopt=keepcache=1 --assumeyes && play_phone_0045 || play_etc-dialog
      ) &
    ) >/dev/null
  ) 2>/dev/null
}

# inatall updates
function _dnfup() {
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  play_019
  sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --setopt=keepcache=1 $1 || play_etc-dialog
}

function yumFedoraActivate() {
  source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  # (play_001)
  echo "yumFedoraActivate"
  echo "+++"
  echo "activate: "
  (sudo mv /etc/yum.repos.d/fedora.repo-off /etc/yum.repos.d/fedora.repo) && (
    sleep 0.153
    play_013 &
  ) &
  echo "activate: fedora-updates"
  (sudo mv /etc/yum.repos.d/fedora-updates.repo-off /etc/yum.repos.d/fedora-updates.repo) && (
    sleep 0.13
    play_013 &
  ) &
  # +++
  echo "activate: fedora-modular"
  (sudo mv /etc/yum.repos.d/fedora-modular.repo-off /etc/yum.repos.d/fedora-modular.repo) && (
    sleep 0.14
    play_013 &
  ) &
  echo "activate: fedora-updates-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-modular.repo-off /etc/yum.repos.d/fedora-updates-modular.repo) && (
    sleep 0.15
    play_013 &
  ) &
  # +++
  echo "activate: rpmfusion-free"
  (sudo mv /etc/yum.repos.d/rpmfusion-free.repo-off /etc/yum.repos.d/rpmfusion-free.repo) && (
    sleep 0.16
    play_013 &
  ) &
  echo "activate: rpmfusion-free-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates.repo-off /etc/yum.repos.d/rpmfusion-free-updates.repo) && (
    sleep 0.17
    play_013 &
  ) &
  # +++
  echo "activate: rpmfusion-nonfree"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree.repo-off /etc/yum.repos.d/rpmfusion-nonfree.repo) && (
    sleep 0.18
    play_013 &
  ) &
  echo "activate: rpmfusion-nonfree-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates.repo-off /etc/yum.repos.d/rpmfusion-nonfree-updates.repo) && (
    sleep 0.19
    play_013 &
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
  (sudo mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo-off) && (
    sleep 0.110
    play_013 &
  ) &
  echo "deactivate: fedora-updates"
  (sudo mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo-off) && (
    sleep 0.111
    play_013 &
  ) &
  # +++
  echo "deactivate: fedora-modular"
  (sudo mv /etc/yum.repos.d/fedora-modular.repo /etc/yum.repos.d/fedora-modular.repo-off) && (
    sleep 0.112
    play_013 &
  ) &
  echo "deactivate: fedora-updates-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-modular.repo /etc/yum.repos.d/fedora-updates-modular.repo-off) && (
    sleep 0.113
    play_013 &
  ) &
  # +++
  echo "deactivate: rpmfusion-free"
  (sudo mv /etc/yum.repos.d/rpmfusion-free.repo /etc/yum.repos.d/rpmfusion-free.repo-off) && (
    sleep 0.114
    play_013 &
  ) &
  echo "deactivate: rpmfusion-free-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates.repo /etc/yum.repos.d/rpmfusion-free-updates.repo-off) && (
    sleep 0.115
    play_013 &
  ) &
  # +++
  echo "deactivate: rpmfusion-nonfree"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree.repo /etc/yum.repos.d/rpmfusion-nonfree.repo-off) && (
    sleep 0.116
    play_013 &
  ) &
  echo "deactivate: rpmfusion-nonfree-updates"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates.repo /etc/yum.repos.d/rpmfusion-nonfree-updates.repo-off) && (
    sleep 0.117
    play_013 &
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
  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo-off /etc/yum.repos.d/fedora-updates-testing.repo) && (
    sleep 0.118
    play_013 &
  ) &
  echo "activate: fedora-updates-testing-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo-off /etc/yum.repos.d/fedora-updates-testing-modular.repo) && (
    sleep 0.119
    play_013 &
  ) &
  echo "activate: rpmfusion-free-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo-off /etc/yum.repos.d/rpmfusion-free-updates-testing.repo) && (
    sleep 0.120
    play_013 &
  ) &
  echo "activate: rpmfusion-nonfree-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo-off /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo) && (
    sleep 0.121
    play_013 &
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
  (sudo mv /etc/yum.repos.d/fedora-updates-testing.repo /etc/yum.repos.d/fedora-updates-testing.repo-off) && (
    sleep 0.122
    play_013 &
  ) &
  echo "deactivate: fedora-updates-testing-modular"
  (sudo mv /etc/yum.repos.d/fedora-updates-testing-modular.repo /etc/yum.repos.d/fedora-updates-testing-modular.repo-off) && (
    sleep 0.123
    play_013 &
  ) &
  echo "deactivate: rpmfusion-free-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-free-updates-testing.repo /etc/yum.repos.d/rpmfusion-free-updates-testing.repo-off) && (
    sleep 0.124
    play_013 &
  ) &
  echo "deactivate: rpmfusion-nonfree-updates-testing"
  (sudo mv /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo /etc/yum.repos.d/rpmfusion-nonfree-updates-testing.repo-off) && (
    sleep 0.125
    play_013 &
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
  (sudo mv /etc/yum.repos.d/gh-cli.repo-off /etc/yum.repos.d/gh-cli.repo) && (
    sleep 0.126
    play_013 &
  ) &
  echo "activate: bintray-ookla-rhel"
  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo-off /etc/yum.repos.d/bintray-ookla-rhel.repo) && (
    sleep 0.127
    play_013 &
  ) &
  echo "activate: google-chrome"
  (sudo mv /etc/yum.repos.d/google-chrome.repo-off /etc/yum.repos.d/google-chrome.repo) && (
    sleep 0.128
    play_013 &
  ) &
  echo "activate: google-chrome-beta"
  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo-off /etc/yum.repos.d/google-chrome-beta.repo) && (
    sleep 0.129
    play_013 &
  ) &
  echo "activate: google-chrome-unstable"
  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo-off /etc/yum.repos.d/google-chrome-unstable.repo) && (
    sleep 0.130
    play_013 &
  ) &
  echo "activate: vscode"
  (sudo mv /etc/yum.repos.d/vscode.repo-off /etc/yum.repos.d/vscode.repo) && (
    sleep 0.131
    play_013 &
  ) &
  echo "activate: mongodb-org-4.4"
  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo-off /etc/yum.repos.d/mongodb-org-4.4.repo) && (
    sleep 0.132
    play_013 &
  ) &
  echo "activate: docker-ce"
  (sudo mv /etc/yum.repos.d/docker-ce.repo-off /etc/yum.repos.d/docker-ce.repo) && (
    sleep 0.133
    play_013 &
  ) &
  echo "activate: fedora-cisco-openh264"
  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo-off /etc/yum.repos.d/fedora-cisco-openh264.repo) && (
    sleep 0.134
    play_013 &
  ) &
  echo "activate: cuda-fedora32"
  (sudo mv /etc/yum.repos.d/cuda-fedora32.repo-off /etc/yum.repos.d/cuda-fedora32.repo) && (
    sleep 0.135
    play_013 &
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
  (sudo mv /etc/yum.repos.d/gh-cli.repo /etc/yum.repos.d/gh-cli.repo-off) && (
    sleep 0.136
    play_013 &
  ) &
  echo "deactivate: bintray-ookla-rhel"
  (sudo mv /etc/yum.repos.d/bintray-ookla-rhel.repo /etc/yum.repos.d/bintray-ookla-rhel.repo-off) && (
    sleep 0.137
    play_013 &
  ) &
  echo "deactivate: google-chrome"
  (sudo mv /etc/yum.repos.d/google-chrome.repo /etc/yum.repos.d/google-chrome.repo-off) && (
    sleep 0.138
    play_013 &
  ) &
  echo "deactivate: google-chrome-beta"
  (sudo mv /etc/yum.repos.d/google-chrome-beta.repo /etc/yum.repos.d/google-chrome-beta.repo-off) && (
    sleep 0.139
    play_013 &
  ) &
  echo "deactivate: google-chrome-unstable"
  (sudo mv /etc/yum.repos.d/google-chrome-unstable.repo /etc/yum.repos.d/google-chrome-unstable.repo-off) && (
    sleep 0.140
    play_013 &
  ) &
  echo "deactivate: vscode"
  (sudo mv /etc/yum.repos.d/vscode.repo /etc/yum.repos.d/vscode.repo-off) && (
    sleep 0.141
    play_013 &
  ) &
  echo "deactivate: mongodb-org-4.4"
  (sudo mv /etc/yum.repos.d/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo-off) && (
    sleep 0.142
    play_013 &
  ) &
  echo "deactivate: docker-ce"
  (sudo mv /etc/yum.repos.d/docker-ce.repo /etc/yum.repos.d/docker-ce.repo-off) && (
    sleep 0.143
    play_013 &
  ) &
  echo "deactivate: fedora-cisco-openh264"
  (sudo mv /etc/yum.repos.d/fedora-cisco-openh264.repo /etc/yum.repos.d/fedora-cisco-openh264.repo-off) && (
    sleep 0.144
    play_013 &
  ) &
  echo "deactivate: cuda-fedora32"
  (sudo mv /etc/yum.repos.d/cuda-fedora32.repo /etc/yum.repos.d/cuda-fedora32.repo-off) && (
    sleep 0.145
    play_013 &
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
  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo-off /etc/yum.repos.d/microsoft-insiders-fast.repo) && (
    sleep 0.146
    play_013 &
  ) &
  echo "activate: microsoft-insiders-slow"
  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo-off /etc/yum.repos.d/microsoft-insiders-slow.repo) && (
    sleep 0.147
    play_013 &
  ) &
  echo "activate: microsoft-prod"
  (sudo mv /etc/yum.repos.d/microsoft-prod.repo-off /etc/yum.repos.d/microsoft-prod.repo) && (
    sleep 0.148
    play_013 &
  ) &
  echo "activate: azure-cli"
  (sudo mv /etc/yum.repos.d/azure-cli.repo-off /etc/yum.repos.d/azure-cli.repo) && (
    sleep 0.149
    play_013 &
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
  (sudo mv /etc/yum.repos.d/microsoft-insiders-fast.repo /etc/yum.repos.d/microsoft-insiders-fast.repo-off) && (
    sleep 0.150
    play_013 &
  ) &
  echo "deactivate: microsoft-insiders-slow"
  echo "deactivate: microsoft-insiders-slow"
  (sudo mv /etc/yum.repos.d/microsoft-insiders-slow.repo /etc/yum.repos.d/microsoft-insiders-slow.repo-off) && (
    sleep 0.151
    play_013 &
  ) &
  echo "deactivate: microsoft-prod"
  (sudo mv /etc/yum.repos.d/microsoft-prod.repo /etc/yum.repos.d/microsoft-prod.repo-off) && (
    sleep 0.152
    play_013 &
  ) &
  echo "deactivate: azure-cli"
  (sudo mv /etc/yum.repos.d/azure-cli.repo /etc/yum.repos.d/azure-cli.repo-off) && (
    sleep 0.12
    play_013 &
  ) &
  # +++
  echo ""
}
