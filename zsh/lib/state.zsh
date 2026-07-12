# zsh/lib/state.zsh
# Shared boot state. This file has no external dependencies.

typeset -ga AHMYZSH_LOADED_MODULES=()
typeset -ga AHMYZSH_SKIPPED_MODULES=()
typeset -ga AHMYZSH_FAILED_MODULES=()
typeset -gA AHMYZSH_MODULE_NOTES=()
typeset -ga AHMYZSH_TIMING_ORDER=()
typeset -gA AHMYZSH_TIMINGS_MS=()
typeset -gF AHMYZSH_BOOT_FINISHED_AT=0
typeset -gF AHMYZSH_BOOT_TOTAL_MS=0
