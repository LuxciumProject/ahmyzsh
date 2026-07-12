#!/usr/bin/env zsh
# scripts/benchmark.zsh
# Repeated isolated startup benchmark; reports distributions without changing config.

emulate -L zsh
setopt err_return pipe_fail

typeset -gr SCRIPT_DIR=${${(%):-%N}:A:h}
typeset -gr REPO_DIR=${SCRIPT_DIR:h}
typeset -gr BENCH_ROOT=$(mktemp -d ${TMPDIR:-/tmp}/ahmyzsh-benchmark.XXXXXX)
typeset -gr BASE_HOME=$BENCH_ROOT/base-home
typeset -gr FULL_HOME=$BENCH_ROOT/full-home
if [[ ${1:-} == -h || ${1:-} == --help ]]; then
  print -- 'usage: scripts/benchmark.zsh [POSITIVE_RUN_COUNT]'
  exit 0
fi

integer runs=${1:-20}
(( runs > 0 )) || {
  print -u2 -- 'usage: scripts/benchmark.zsh [POSITIVE_RUN_COUNT]'
  exit 2
}

cleanup() {
  rm -rf -- $BENCH_ROOT
}
trap cleanup EXIT

mkdir -p -- $BASE_HOME $FULL_HOME
zmodload zsh/datetime
typeset -a base_results full_results
integer i
float started elapsed base_cold full_cold

run_isolated() {
  local home=$1
  shift
  command env \
    HOME=$home \
    ZDOTDIR=$home \
    XDG_CONFIG_HOME=$home/.config \
    XDG_CACHE_HOME=$home/.cache \
    XDG_DATA_HOME=$home/.local/share \
    XDG_STATE_HOME=$home/.local/state \
    AHMYZSH_ROOT=$REPO_DIR \
    AHMYZSH_NO_INSTANT_PROMPT=1 \
    "$@"
}

started=$EPOCHREALTIME
run_isolated $BASE_HOME AHMYZSH_USE_OMZ=0 AHMYZSH_PROMPT=basic \
  zsh -dfic "source ${(q)REPO_DIR}/zsh/env.zsh; source ${(q)REPO_DIR}/zsh/boot.zsh; exit" \
  >/dev/null 2>&1
base_cold=$(( (EPOCHREALTIME - started) * 1000.0 ))

started=$EPOCHREALTIME
run_isolated $FULL_HOME AHMYZSH_PROMPT=basic \
  zsh -dfic "source ${(q)REPO_DIR}/zsh/env.zsh; source ${(q)REPO_DIR}/zsh/boot.zsh; exit" \
  >/dev/null 2>&1
full_cold=$(( (EPOCHREALTIME - started) * 1000.0 ))

for (( i = 1; i <= runs; ++i )); do
  started=$EPOCHREALTIME
  run_isolated $BASE_HOME AHMYZSH_USE_OMZ=0 AHMYZSH_PROMPT=basic \
    zsh -dfic "source ${(q)REPO_DIR}/zsh/env.zsh; source ${(q)REPO_DIR}/zsh/boot.zsh; exit" \
    >/dev/null 2>&1
  elapsed=$(( (EPOCHREALTIME - started) * 1000.0 ))
  base_results+=($elapsed)

  started=$EPOCHREALTIME
  run_isolated $FULL_HOME AHMYZSH_PROMPT=basic \
    zsh -dfic "source ${(q)REPO_DIR}/zsh/env.zsh; source ${(q)REPO_DIR}/zsh/boot.zsh; exit" \
    >/dev/null 2>&1
  elapsed=$(( (EPOCHREALTIME - started) * 1000.0 ))
  full_results+=($elapsed)
done

print -- "runs: $runs"
printf 'base cold:        %8.3f ms\n' $base_cold
printf 'base warm median: %8.3f ms\n' ${${(n)base_results}[$(( (runs + 1) / 2 ))]}
printf 'OMZ cold:         %8.3f ms\n' $full_cold
printf 'OMZ warm median:  %8.3f ms\n' ${${(n)full_results}[$(( (runs + 1) / 2 ))]}
print -- 'All runs use temporary homes and the native prompt; no real user state is read or written.'
