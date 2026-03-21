#!/usr/bin/env zsh
# lib/timer.sh — Portable timing utilities (0 forks when possible)
# Uses zsh/datetime module for $EPOCHREALTIME when available,
# falls back to date command on systems without it.

# Guard: prevent double-sourcing
[[ -n "${_AHMYZSH_TIMER_LOADED}" ]] && return 0
_AHMYZSH_TIMER_LOADED=1

# --- Timing backend ---

# Try to use zsh/datetime for zero-fork timing
if zmodload zsh/datetime 2>/dev/null; then
  # EPOCHREALTIME gives microsecond precision as a float (e.g., 1711042367.123456)
  _ahmyzsh_get_time_us() {
    # Convert EPOCHREALTIME (seconds.microseconds) to microseconds integer
    local secs="${EPOCHREALTIME%%.*}"
    local frac="${EPOCHREALTIME#*.}"
    # Pad or truncate fraction to 6 digits
    frac="${frac}000000"
    frac="${frac:0:6}"
    REPLY=$(( secs * 1000000 + ${frac#${frac%%[!0]*}} ))
  }
else
  # Fallback: use date command (1 fork per call)
  _ahmyzsh_get_time_us() {
    if /usr/bin/date +%s%N >/dev/null 2>&1; then
      # GNU date supports %N (nanoseconds) — convert to microseconds
      REPLY=$(( $(/usr/bin/date +%s%N) / 1000 ))
    else
      # macOS/BSD date — only seconds precision
      REPLY=$(( $(/usr/bin/date +%s) * 1000000 ))
    fi
  }
fi

# --- Public timing API ---

# Initialize the global boot timer (call once at very start)
ahmyzsh_timer_init() {
  _ahmyzsh_get_time_us
  export AHMYZSH_BOOT_START_US="${REPLY}"
  # Legacy compatibility
  export TIMER_ALL_THEN="${AHMYZSH_BOOT_START_US}"
}

# Get milliseconds elapsed since boot start
ahmyzsh_timer_since_boot_ms() {
  _ahmyzsh_get_time_us
  local now_us="${REPLY}"
  REPLY=$(( (now_us - AHMYZSH_BOOT_START_US) / 1000 ))
}

# Format elapsed time as "NNN.NNN" milliseconds string
ahmyzsh_timer_format_ms() {
  local ms="${1}"
  local whole=$(( ms / 1000 ))
  local frac=$(( ms % 1000 ))
  printf '%d.%03d' "${whole}" "${frac}"
}

# Get formatted time since boot (e.g., "123.456")
ahmyzsh_time_since_boot() {
  ahmyzsh_timer_since_boot_ms
  ahmyzsh_timer_format_ms "${REPLY}"
}

# Record a named checkpoint
ahmyzsh_timer_checkpoint() {
  local name="${1:?checkpoint name required}"
  _ahmyzsh_get_time_us
  eval "AHMYZSH_TIMER_${name}=${REPLY}"
}

# Get milliseconds since a named checkpoint
ahmyzsh_timer_since() {
  local name="${1:?checkpoint name required}"
  local start_var="AHMYZSH_TIMER_${name}"
  local start_us="${(P)start_var}"
  if [[ -z "${start_us}" ]]; then
    REPLY=0
    return 1
  fi
  _ahmyzsh_get_time_us
  REPLY=$(( (REPLY - start_us) / 1000 ))
}

# --- Legacy compatibility wrappers ---

timer_() {
  local MICROSEC=1000000
  _ahmyzsh_get_time_us
  local now_us="${REPLY}"
  local then_us="${1:-${now_us}}"
  local elapsed_ms=$(( (now_us - then_us) / 1000 ))
  printf '%s' "${elapsed_ms}"
}

timer_now() {
  timer_ "${TIMER_THEN}"
}

timer_from_then() {
  _ahmyzsh_get_time_us
  timer_ "${REPLY}"
}

timer_all() {
  timer_ "${TIMER_ALL_THEN}"
}
