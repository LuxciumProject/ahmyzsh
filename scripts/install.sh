#!/usr/bin/env bash
# scripts/install.sh
# Idempotent user-level installer for the modular AhMyZSH boot spine.

set -Eeuo pipefail

readonly PROGRAM_NAME='ahmyzsh-install'
readonly PROGRAM_VERSION='0.3.0'
readonly BLOCK_BEGIN='# >>> ahmyzsh modular boot >>>'
readonly BLOCK_END='# <<< ahmyzsh modular boot <<<'
readonly SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
DEFAULT_REPO_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd -P)"

TARGET_HOME=${HOME}
REPO_DIR=${DEFAULT_REPO_DIR}
INSTALL_FONTS=1
INSTALL_PACKAGES=0
DRY_RUN=0
CHECK_ONLY=0
UNINSTALL=0
FORCE=0

usage() {
  cat <<'EOF'
Usage: scripts/install.sh [OPTIONS]

Install the modular AhMyZSH user-level hooks and MesloLGS NF fonts.

Options:
  --home DIR          Target home directory (default: current HOME)
  --repo DIR          Repository directory (default: this checkout)
  --with-fonts        Download verified MesloLGS NF fonts (default)
  --without-fonts     Skip font download
  --with-packages     On apt systems, install zsh/git/curl/fontconfig with sudo
  --check             Read-only prerequisite and installation report
  --dry-run           Print intended writes without performing them
  --uninstall         Remove managed hooks and repository link; keep user data
  --force             Replace a conflicting AhMyZSH repository link
  --version           Print version
  -h, --help          Show this help

The installer never replaces ~/.zshenv or ~/.zshrc. It owns one marked block in
each file and stores one pre-AhMyZSH backup beside a file before first change.
EOF
}

log() {
  printf '[ahmyzsh] %s\n' "$*"
}

die() {
  printf '[ahmyzsh] error: %s\n' "$*" >&2
  exit 1
}

run() {
  if (( DRY_RUN )); then
    printf '[dry-run]'
    printf ' %q' "$@"
    printf '\n'
  else
    "$@"
  fi
}

while (( $# )); do
  case $1 in
    --home)
      (( $# >= 2 )) || die '--home requires a directory'
      TARGET_HOME=$2
      shift 2
      ;;
    --repo)
      (( $# >= 2 )) || die '--repo requires a directory'
      REPO_DIR=$2
      shift 2
      ;;
    --with-fonts) INSTALL_FONTS=1; shift ;;
    --without-fonts) INSTALL_FONTS=0; shift ;;
    --with-packages) INSTALL_PACKAGES=1; shift ;;
    --check) CHECK_ONLY=1; shift ;;
    --dry-run) DRY_RUN=1; shift ;;
    --uninstall) UNINSTALL=1; shift ;;
    --force) FORCE=1; shift ;;
    --version) printf '%s %s\n' "$PROGRAM_NAME" "$PROGRAM_VERSION"; exit 0 ;;
    -h|--help) usage; exit 0 ;;
    *) die "unknown option: $1" ;;
  esac
done

[[ -d $TARGET_HOME ]] || die "target home does not exist: $TARGET_HOME"
[[ -r $REPO_DIR/zsh/env.zsh ]] || die "not an AhMyZSH repository: $REPO_DIR"
REPO_DIR="$(cd -- "$REPO_DIR" && pwd -P)"

XDG_CONFIG_DIR=${XDG_CONFIG_HOME:-$TARGET_HOME/.config}
XDG_CACHE_DIR=${XDG_CACHE_HOME:-$TARGET_HOME/.cache}
XDG_DATA_DIR=${XDG_DATA_HOME:-$TARGET_HOME/.local/share}
XDG_STATE_DIR=${XDG_STATE_HOME:-$TARGET_HOME/.local/state}
AHM_CONFIG_DIR=$XDG_CONFIG_DIR/ahmyzsh
REPO_LINK=$AHM_CONFIG_DIR/repo
FONT_DIR=$XDG_DATA_DIR/fonts/MesloLGS-NF

remove_managed_block() {
  local file=$1
  local output=$2
  awk -v begin="$BLOCK_BEGIN" -v end="$BLOCK_END" '
    $0 == begin { skipping=1; next }
    $0 == end { skipping=0; next }
    !skipping { print }
  ' "$file" >"$output"
}

write_managed_block() {
  local file=$1
  local line=$2
  local tmp
  tmp=$(mktemp "${TMPDIR:-/tmp}/ahmyzsh-install.XXXXXX")

  if [[ -f $file ]]; then
    remove_managed_block "$file" "$tmp"
  fi
  {
    [[ ! -s $tmp ]] || printf '\n'
    printf '%s\n%s\n%s\n' "$BLOCK_BEGIN" "$line" "$BLOCK_END"
  } >>"$tmp"

  if [[ -f $file ]] && cmp -s -- "$file" "$tmp"; then
    rm -f -- "$tmp"
    log "unchanged: $file"
    return 0
  fi

  if (( DRY_RUN )); then
    log "would update managed block: $file"
    rm -f -- "$tmp"
    return 0
  fi

  mkdir -p -- "$(dirname -- "$file")"
  if [[ -f $file && ! -e $file.pre-ahmyzsh ]]; then
    cp -p -- "$file" "$file.pre-ahmyzsh"
  fi
  mv -f -- "$tmp" "$file"
  log "updated: $file"
}

strip_managed_block() {
  local file=$1
  local tmp
  [[ -f $file ]] || return 0
  tmp=$(mktemp "${TMPDIR:-/tmp}/ahmyzsh-uninstall.XXXXXX")
  remove_managed_block "$file" "$tmp"
  if cmp -s -- "$file" "$tmp"; then
    rm -f -- "$tmp"
    return 0
  fi
  if (( DRY_RUN )); then
    log "would remove managed block: $file"
    rm -f -- "$tmp"
  else
    mv -f -- "$tmp" "$file"
    log "removed managed block: $file"
  fi
}

check_installation() {
  local status=0 command_name
  printf 'AhMyZSH installation check\n'
  printf '  home:       %s\n' "$TARGET_HOME"
  printf '  repository: %s\n' "$REPO_DIR"
  printf '  link:       %s\n' "$REPO_LINK"

  for command_name in zsh git curl sha256sum; do
    if command -v "$command_name" >/dev/null 2>&1; then
      printf '  %-10s available\n' "$command_name"
    else
      printf '  %-10s missing\n' "$command_name"
      status=1
    fi
  done
  [[ -r $REPO_DIR/ohmyzsh/oh-my-zsh.sh ]] || {
    printf '  ohmyzsh    missing (shell will use fallback mode)\n'
    status=1
  }
  [[ -r $REPO_DIR/powerlevel10k/powerlevel10k.zsh-theme ]] || {
    printf '  p10k       missing (native prompt will be used)\n'
    status=1
  }
  [[ -L $REPO_LINK && $(readlink -f -- "$REPO_LINK") == "$REPO_DIR" ]] ||
    printf '  installed  no matching repository link yet\n'
  return "$status"
}

install_packages() {
  command -v apt-get >/dev/null 2>&1 || die '--with-packages currently supports apt systems only'
  run sudo apt-get update
  run sudo apt-get install -y zsh git curl fontconfig
}

download_font() {
  local file_name=$1
  local expected_sha=$2
  local target=$FONT_DIR/$file_name
  local encoded_name=${file_name// /%20}
  local url=https://github.com/romkatv/powerlevel10k-media/raw/master/$encoded_name
  local tmp

  if [[ -f $target ]] && printf '%s  %s\n' "$expected_sha" "$target" | sha256sum --check --status; then
    log "font already verified: $file_name"
    return 0
  fi
  if (( DRY_RUN )); then
    log "would download verified font: $file_name"
    return 0
  fi

  mkdir -p -- "$FONT_DIR"
  tmp=$(mktemp "$FONT_DIR/.download.XXXXXX")
  curl --fail --location --silent --show-error \
    --retry 3 --retry-delay 1 --retry-all-errors --connect-timeout 15 \
    --output "$tmp" "$url"
  printf '%s  %s\n' "$expected_sha" "$tmp" | sha256sum --check --status || {
    rm -f -- "$tmp"
    die "checksum failed for $file_name"
  }
  mv -f -- "$tmp" "$target"
  chmod 0644 -- "$target"
  log "installed font: $file_name"
}

install_fonts() {
  command -v curl >/dev/null 2>&1 || die 'curl is required to download fonts'
  command -v sha256sum >/dev/null 2>&1 || die 'sha256sum is required to verify fonts'
  download_font 'MesloLGS NF Regular.ttf' 'd97946186e97f8d7c0139e8983abf40a1d2d086924f2c5dbf1c29bd8f2c6e57d'
  download_font 'MesloLGS NF Bold.ttf' 'b6c0199cf7c7483c8343ea020658925e6de0aeb318b89908152fcb4d19226003'
  download_font 'MesloLGS NF Italic.ttf' '6f357bcbe2597704e157a915625928bca38364a89c22a4ac36e7a116dcd392ef'
  download_font 'MesloLGS NF Bold Italic.ttf' '56b4131adecec052c4b324efb818dd326d586dbc316fc68f98f1cae2eb8d1220'
  if command -v fc-cache >/dev/null 2>&1; then
    run fc-cache -f "$FONT_DIR"
  else
    log 'fontconfig is absent; run fc-cache after installing it'
  fi
}

if (( CHECK_ONLY )); then
  check_installation
  exit $?
fi

if (( UNINSTALL )); then
  strip_managed_block "$TARGET_HOME/.zshenv"
  strip_managed_block "$TARGET_HOME/.zshrc"
  if [[ -L $REPO_LINK ]]; then
    run rm -- "$REPO_LINK"
    log "removed repository link: $REPO_LINK"
  fi
  log 'user configuration, cache, state, fonts, and backups were preserved'
  exit 0
fi

(( INSTALL_PACKAGES == 0 )) || install_packages
command -v zsh >/dev/null 2>&1 || die 'zsh is required (or rerun with --with-packages)'
(( INSTALL_FONTS == 0 )) || install_fonts

run mkdir -p -- "$AHM_CONFIG_DIR" "$XDG_CACHE_DIR/ahmyzsh" "$XDG_STATE_DIR/ahmyzsh"
if [[ -L $REPO_LINK && $(readlink -f -- "$REPO_LINK") == "$REPO_DIR" ]]; then
  log "repository link already correct: $REPO_LINK"
elif [[ -e $REPO_LINK || -L $REPO_LINK ]]; then
  (( FORCE )) || die "conflicting path exists: $REPO_LINK (inspect it or use --force)"
  run mv -- "$REPO_LINK" "$REPO_LINK.pre-ahmyzsh-$(date +%Y%m%d%H%M%S)"
  run ln -s -- "$REPO_DIR" "$REPO_LINK"
else
  run ln -s -- "$REPO_DIR" "$REPO_LINK"
fi

write_managed_block "$TARGET_HOME/.zshenv" \
  'source "${XDG_CONFIG_HOME:-$HOME/.config}/ahmyzsh/repo/zsh/env.zsh"'
write_managed_block "$TARGET_HOME/.zshrc" \
  'source "${XDG_CONFIG_HOME:-$HOME/.config}/ahmyzsh/repo/zsh/boot.zsh"'

log 'installation complete'
log 'Konsole: select “MesloLGS NF” in Settings → Edit Current Profile → Appearance'
log 'open a fresh Zsh, then run: ahm doctor'
