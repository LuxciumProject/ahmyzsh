#!/usr/bin/env zsh
# scripts/benchmark.zsh
# Repeated isolated startup benchmark; reports distributions without changing config.

emulate -L zsh
setopt err_return pipe_fail

typeset -gr SCRIPT_DIR=${${(%):-%N}:A:h}
typeset -gr REPO_DIR=${SCRIPT_DIR:h}
integer runs=${1:-20}
(( runs > 0 )) || {
  print -u2 -- 'usage: scripts/benchmark.zsh [POSITIVE_RUN_COUNT]'
  exit 2
}

zmodload zsh/datetime
typeset -a base_results full_results
integer i
float started elapsed

for (( i = 1; i <= runs; ++i )); do
  started=$EPOCHREALTIME
  AHMYZSH_ROOT=$REPO_DIR AHMYZSH_USE_OMZ=0 AHMYZSH_PROMPT=basic \
    zsh -dfic "source ${(q)REPO_DIR}/zsh/env.zsh; source ${(q)REPO_DIR}/zsh/boot.zsh; exit" \
    >/dev/null 2>&1
  elapsed=$(( (EPOCHREALTIME - started) * 1000.0 ))
  base_results+=($elapsed)

  started=$EPOCHREALTIME
  AHMYZSH_ROOT=$REPO_DIR AHMYZSH_PROMPT=basic \
    zsh -dfic "source ${(q)REPO_DIR}/zsh/env.zsh; source ${(q)REPO_DIR}/zsh/boot.zsh; exit" \
    >/dev/null 2>&1
  elapsed=$(( (EPOCHREALTIME - started) * 1000.0 ))
  full_results+=($elapsed)
done

print -- "runs: $runs"
printf 'base median: %8.3f ms\n' ${${(n)base_results}[$(( (runs + 1) / 2 ))]}
printf 'full median: %8.3f ms\n' ${${(n)full_results}[$(( (runs + 1) / 2 ))]}
print -- 'base excludes OMZ and uses the native prompt; full includes OMZ with native prompt.'
