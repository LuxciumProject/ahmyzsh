<!-- scripts/README.md -->

# Lifecycle scripts

`install.sh` is the only installer. It is idempotent, owns marked blocks rather
than whole dotfiles, defaults to verified user-local font installation, and can
remove only what it owns with `--uninstall`.

`benchmark.zsh` compares the independent base with the OMZ-enabled shell. It
uses fresh child shells and does not alter the current configuration.

Package installation is opt-in because it invokes `sudo`. Font installation is
user-local and checksum-verified. A Konsole profile is not edited automatically:
the installer cannot safely guess which profile the user wants to modify.
