<!-- scripts/README.md -->

# Lifecycle scripts

`install.sh` is the only installer. It is idempotent, owns marked blocks rather
than whole dotfiles, defaults to verified user-local font installation, and can
remove only what it owns with `--uninstall`.

`benchmark.zsh` compares cold and warm independent-base boots with cold and warm
OMZ-enabled boots. It uses temporary homes and fresh child shells, then removes
all benchmark state.

Installation warms the completion/framework cache by default so the first real
terminal does not also pay OMZ's cold completion setup. Use
`--without-cache-warm` only when measuring or debugging a genuinely cold boot.

Package installation is opt-in because it invokes `sudo`. Font installation is
user-local and checksum-verified. A Konsole profile is not edited automatically:
the installer cannot safely guess which profile the user wants to modify.
