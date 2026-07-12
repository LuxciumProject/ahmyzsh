#!/usr/bin/env bash
# tests/run.sh
# Isolated characterization and regression suite for the modular boot spine.

set -Eeuo pipefail

readonly SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
readonly REPO_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd -P)"
TEST_ROOT=$(mktemp -d "${TMPDIR:-/tmp}/ahmyzsh-test.XXXXXX")
readonly TEST_ROOT
readonly TEST_HOME=$TEST_ROOT/home
readonly ALT_HOME=$TEST_ROOT/alternate-home
readonly FOREIGN_XDG=$TEST_ROOT/foreign-config
readonly STDERR_FILE=$TEST_ROOT/stderr

PASSED=0
FAILED=0

cleanup() {
  rm -rf -- "$TEST_ROOT"
}
trap cleanup EXIT

pass() {
  PASSED=$((PASSED + 1))
  printf 'ok %d - %s\n' "$((PASSED + FAILED))" "$1"
}

fail() {
  FAILED=$((FAILED + 1))
  printf 'not ok %d - %s\n' "$((PASSED + FAILED))" "$1"
}

assert_eq() {
  local name=$1 expected=$2 actual=$3
  if [[ $actual == "$expected" ]]; then
    pass "$name"
  else
    fail "$name"
    printf '  expected: %q\n  actual:   %q\n' "$expected" "$actual"
  fi
}

assert_contains() {
  local name=$1 haystack=$2 needle=$3
  if [[ $haystack == *"$needle"* ]]; then
    pass "$name"
  else
    fail "$name"
    printf '  missing: %q\n' "$needle"
  fi
}

run_in_home() {
  env \
    HOME="$TEST_HOME" \
    ZDOTDIR="$TEST_HOME" \
    XDG_CONFIG_HOME="$TEST_HOME/.config" \
    XDG_CACHE_HOME="$TEST_HOME/.cache" \
    XDG_DATA_HOME="$TEST_HOME/.local/share" \
    XDG_STATE_HOME="$TEST_HOME/.local/state" \
    "$@"
}

mkdir -p -- "$TEST_HOME" "$ALT_HOME"
printf '%s\n' '# existing zshenv content' >"$TEST_HOME/.zshenv"
printf '%s\n' '# existing zshrc content' >"$TEST_HOME/.zshrc"

syntax_failed=0
while IFS= read -r -d '' file; do
  if ! zsh -n "$file"; then
    syntax_failed=1
    printf '  syntax failure: %s\n' "$file"
  fi
done < <(find "$REPO_DIR/zsh" -type f \( -name '*.zsh' -o -perm -u+x \) -print0)
if (( syntax_failed == 0 )); then pass 'new Zsh sources parse'; else fail 'new Zsh sources parse'; fi

if bash -n "$REPO_DIR/scripts/install.sh" "$REPO_DIR/tests/run.sh"; then
  pass 'Bash lifecycle scripts parse'
else
  fail 'Bash lifecycle scripts parse'
fi

if ! grep -R -n -E '(^|[^[:alnum:]_])eval([[:space:](]|$)' \
    "$REPO_DIR/zsh" "$REPO_DIR/scripts" --include='*.zsh' --include='*.sh' >/dev/null; then
  pass 'active implementation contains no eval'
else
  fail 'active implementation contains no eval'
fi

run_in_home "$REPO_DIR/scripts/install.sh" \
  --home "$TEST_HOME" --repo "$REPO_DIR" --without-fonts >/dev/null
run_in_home "$REPO_DIR/scripts/install.sh" \
  --home "$TEST_HOME" --repo "$REPO_DIR" --without-fonts >/dev/null

assert_eq 'installer owns one .zshenv block' '1' \
  "$(grep -c '^# >>> ahmyzsh modular boot >>>$' "$TEST_HOME/.zshenv")"
assert_eq 'installer owns one .zshrc block' '1' \
  "$(grep -c '^# >>> ahmyzsh modular boot >>>$' "$TEST_HOME/.zshrc")"
assert_eq 'installer repository link is correct' "$REPO_DIR" \
  "$(readlink -f -- "$TEST_HOME/.config/ahmyzsh/repo")"
assert_contains 'installer preserves existing .zshenv content' "$(<"$TEST_HOME/.zshenv")" '# existing zshenv content'
assert_contains 'installer preserves existing .zshrc content' "$(<"$TEST_HOME/.zshrc")" '# existing zshrc content'
[[ -f $TEST_HOME/.zshenv.pre-ahmyzsh && -f $TEST_HOME/.zshrc.pre-ahmyzsh ]] &&
  pass 'installer creates one pre-AhMyZSH backup per existing dotfile' ||
  fail 'installer creates one pre-AhMyZSH backup per existing dotfile'
compdump_count=$(find "$TEST_HOME/.cache/ahmyzsh/v1" -maxdepth 1 -type f -name 'zcompdump-*' | wc -l)
[[ $compdump_count -ge 1 ]] && pass 'installer prewarms OMZ completion cache' || fail 'installer prewarms OMZ completion cache'

env \
  HOME="$TEST_HOME" \
  XDG_CONFIG_HOME="$FOREIGN_XDG" \
  XDG_CACHE_HOME="$TEST_ROOT/foreign-cache" \
  XDG_DATA_HOME="$TEST_ROOT/foreign-data" \
  XDG_STATE_HOME="$TEST_ROOT/foreign-state" \
  "$REPO_DIR/scripts/install.sh" \
    --home "$ALT_HOME" --repo "$REPO_DIR" --without-fonts --without-cache-warm >/dev/null
assert_eq 'alternate-home install ignores caller XDG paths' "$REPO_DIR" \
  "$(readlink -f -- "$ALT_HOME/.config/ahmyzsh/repo")"
[[ ! -e $FOREIGN_XDG/ahmyzsh/repo ]] &&
  pass 'wrong-context guard leaves caller configuration untouched' ||
  fail 'wrong-context guard leaves caller configuration untouched'
env HOME="$ALT_HOME" "$REPO_DIR/scripts/install.sh" \
  --home "$ALT_HOME" --repo "$REPO_DIR" --without-fonts --uninstall >/dev/null

: >"$STDERR_FILE"
noninteractive_output=$(run_in_home zsh -d -c 'print -r -- payload' 2>"$STDERR_FILE")
assert_eq 'non-interactive stdout is untouched' 'payload' "$noninteractive_output"
assert_eq 'non-interactive stderr is empty' '' "$(<"$STDERR_FILE")"

cat >"$TEST_HOME/.config/ahmyzsh/config.zsh" <<'EOF'
# generated test configuration
typeset -g AHMYZSH_USE_OMZ=0
typeset -g AHMYZSH_PROMPT=basic
typeset -g AHMYZSH_NO_INSTANT_PROMPT=1
EOF

: >"$STDERR_FILE"
base_output=$(run_in_home zsh -dic '
  print -r -- "state=$AHMYZSH_BOOT_STATE"
  print -r -- "modules=${AHMYZSH_LOADED_MODULES[*]}"
  print -r -- "failures=${#AHMYZSH_FAILED_MODULES}"
  print -r -- "path-command=$commands[ahm-path]"
  print -r -- "options=$options[autocd]:$options[sharehistory]"
  exit
' 2>"$STDERR_FILE")
assert_contains 'base interactive boot reaches loaded state' "$base_output" 'state=loaded'
assert_contains 'base loads independent core' "$base_output" 'base-options core-functions core-commands'
assert_contains 'base exposes audited commands' "$base_output" "path-command=$REPO_DIR/zsh/bin/ahm-path"
assert_contains 'module option policy persists after loader return' "$base_output" 'options=on:on'
assert_contains 'base has no failed modules' "$base_output" 'failures=0'
assert_eq 'base interactive stderr is empty' '' "$(<"$STDERR_FILE")"

profile_output=$(run_in_home zsh -dic 'ahm profile; exit' 2>"$STDERR_FILE")
assert_contains 'profile reports the complete boot' "$profile_output" 'AhMyZSH boot profile'

legacy_doctor_output=$(run_in_home zsh -dic '
  typeset -g MAIN_INIT=start
  ahm_doctor >/dev/null
  print -r -- "doctor-status=$?"
  exit
' 2>"$STDERR_FILE")
assert_contains 'doctor rejects a simultaneously loaded legacy spine' "$legacy_doctor_output" 'doctor-status=1'

: >"$STDERR_FILE"
idempotent_output=$(run_in_home zsh -dic '
  before=${#AHMYZSH_LOADED_MODULES}
  source $AHMYZSH_ROOT/zsh/boot.zsh
  print -r -- "$before:${#AHMYZSH_LOADED_MODULES}"
  exit
' 2>"$STDERR_FILE")
assert_eq 'boot guard prevents definition layering' '8:8' "$idempotent_output"
assert_eq 'idempotent source emits no stderr' '' "$(<"$STDERR_FILE")"

cat >"$TEST_HOME/.config/ahmyzsh/config.zsh" <<'EOF'
# generated test configuration
typeset -g AHMYZSH_PROMPT=basic
typeset -g AHMYZSH_NO_INSTANT_PROMPT=1
EOF

: >"$STDERR_FILE"
omz_output=$(run_in_home zsh -dic '
  print -r -- "state=$AHMYZSH_BOOT_STATE"
  print -r -- "omz=${ZSH:-missing}"
  print -r -- "failures=${#AHMYZSH_FAILED_MODULES}"
  exit
' 2>"$STDERR_FILE")
assert_contains 'OMZ integration boot reaches loaded state' "$omz_output" 'state=loaded'
assert_contains 'OMZ integration resolves vendored framework' "$omz_output" "omz=$REPO_DIR/ohmyzsh"
assert_contains 'OMZ integration has no failed modules' "$omz_output" 'failures=0'
assert_eq 'OMZ integration stderr is empty' '' "$(<"$STDERR_FILE")"

cat >"$TEST_HOME/.config/ahmyzsh/config.zsh" <<'EOF'
# generated test configuration
typeset -g AHMYZSH_OMZ_DIR=/definitely/missing/ohmyzsh
typeset -g AHMYZSH_P10K_DIR=/definitely/missing/powerlevel10k
typeset -g AHMYZSH_NO_INSTANT_PROMPT=1
EOF

fallback_output=$(run_in_home zsh -dic '
  print -r -- "state=$AHMYZSH_BOOT_STATE"
  print -r -- "failures=${#AHMYZSH_FAILED_MODULES}"
  print -r -- "prompt-note=$AHMYZSH_MODULE_NOTES[prompt]"
  print -r -- "omz-note=$AHMYZSH_MODULE_NOTES[oh-my-zsh]"
  ahm_doctor >/dev/null
  print -r -- "doctor-status=$?"
  exit
' 2>"$STDERR_FILE")
assert_contains 'missing frameworks retain a loaded shell' "$fallback_output" 'state=loaded'
assert_contains 'missing frameworks use prompt fallback' "$fallback_output" 'using native prompt'
assert_contains 'missing frameworks are diagnostic notes' "$fallback_output" 'unavailable at /definitely/missing/ohmyzsh'
assert_contains 'missing frameworks are not module failures' "$fallback_output" 'failures=0'
assert_contains 'doctor reports configured frameworks as unhealthy' "$fallback_output" 'doctor-status=1'

cat >"$TEST_HOME/.config/ahmyzsh/config.zsh" <<'EOF'
# generated test configuration
typeset -g AHMYZSH_USE_OMZ=0
typeset -g AHMYZSH_PROMPT=basic
typeset -g AHMYZSH_NO_INSTANT_PROMPT=1
typeset -ga AHMYZSH_MODULES=(base-options missing-demonstration core-functions core-commands prompt)
EOF

degraded_output=$(run_in_home zsh -dic '
  print -r -- "state=$AHMYZSH_BOOT_STATE"
  print -r -- "skipped=${AHMYZSH_SKIPPED_MODULES[*]}"
  print -r -- "function=$functions[mkcd]"
  exit
' 2>"$STDERR_FILE")
assert_contains 'missing optional module does not stop boot' "$degraded_output" 'state=loaded'
assert_contains 'missing optional module is recorded' "$degraded_output" 'skipped=missing-demonstration'
assert_contains 'later independent module still loads' "$degraded_output" 'function='

cache_dir=$TEST_HOME/.cache/ahmyzsh/v1
[[ -d $cache_dir ]] && pass 'versioned cache is initialized' || fail 'versioned cache is initialized'
warm_output=$(run_in_home zsh -dic 'ahm cache warm; exit' 2>"$STDERR_FILE")
assert_contains 'cache warm reports completion' "$warm_output" 'Warmed AhMyZSH completion and framework caches.'
cache_output=$(run_in_home zsh -dic 'ahm cache clear; exit' 2>"$STDERR_FILE")
assert_contains 'cache clear reports owned schema' "$cache_output" 'Cleared AhMyZSH cache schema v1.'
[[ ! -e $cache_dir ]] && pass 'cache clear removes only active schema' || fail 'cache clear removes only active schema'

run_in_home "$REPO_DIR/scripts/install.sh" \
  --home "$TEST_HOME" --repo "$REPO_DIR" --without-fonts --uninstall >/dev/null
assert_eq 'uninstall removes .zshenv managed block' '0' \
  "$(grep -c '^# >>> ahmyzsh modular boot >>>$' "$TEST_HOME/.zshenv" || true)"
assert_eq 'uninstall removes .zshrc managed block' '0' \
  "$(grep -c '^# >>> ahmyzsh modular boot >>>$' "$TEST_HOME/.zshrc" || true)"
assert_contains 'uninstall retains original .zshenv content' "$(<"$TEST_HOME/.zshenv")" '# existing zshenv content'
assert_contains 'uninstall retains original .zshrc content' "$(<"$TEST_HOME/.zshrc")" '# existing zshrc content'
[[ ! -e $TEST_HOME/.config/ahmyzsh/repo ]] &&
  pass 'uninstall removes repository link' || fail 'uninstall removes repository link'

printf '1..%d\n' "$((PASSED + FAILED))"
printf '# %d passed, %d failed\n' "$PASSED" "$FAILED"
(( FAILED == 0 ))
