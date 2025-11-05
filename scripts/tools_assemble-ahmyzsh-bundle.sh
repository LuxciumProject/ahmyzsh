#!/usr/bin/env bash
# AI Context Extraction Tool: Create AI Agent Snapshot Bundle
# Purpose: Single file containing complete ahmyzsh codebase for AI agent analysis
#
# Usage:
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh [options]
#
# Common options:
#  --minimal | --mode minimal      Generate a compact bundle (recommended for AI)
#  --commit HASH                   Attach a commit identifier in the header
#  --list                          Print the list of files that would be included
#  --list-json                     Same as --list, but output JSON
#  -v, --verbose                   Increase verbosity (repeatable)
#  -q, --quiet                     Suppress non-essential output
#  -h, --help                      Show help and exit
#      --version                   Show version and exit
#
# Advanced options:
#  --mode full                     Generate a full bundle (default)
#  --output-dir DIR                Set output directory for timestamped bundles (default: snapshots/bundle)
#  --latest-path FILE              Set path for the LATEST file (default: snapshots/ahmyzsh-bundle-LATEST.sh)
#  --no-latest                     Do not copy the generated bundle to the LATEST file
#
# Notes:
#  - Location agnostic: run from anywhere in or outside the ahmyzsh tree
#  - Outputs timestamped file in: snapshots/bundle/ahmyzsh-bundle-YYYYMMDD-HHMMSS.sh
#  - Also writes/overwrites: snapshots/ahmyzsh-bundle-LATEST.sh (unless --no-latest)
#
# Examples:
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh --list --mode minimal
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh --commit abc123def
#  cd /some/other/dir && bash /projects/ahmyzsh/scripts/tools_assemble-ahmyzsh-bundle.sh

set -uo pipefail  # Don't use -e, handle errors manually

# ----------------------------------------------------------------------------
# CLI helpers, colors, logging
# ----------------------------------------------------------------------------

VERBOSE=1   # 0=errors only, 1=normal, 2=verbose, 3=debug
QUIET=0
COLOR="auto" # auto|always|never

bold=""; red=""; green=""; yellow=""; blue=""; dim=""; reset=""
setup_colors() {
  local use_color=0
  case "$COLOR" in
    always) use_color=1 ;;
    never) use_color=0 ;;
    auto)
      if [ -t 2 ] && command -v tput >/dev/null 2>&1 && [ "$(tput colors 2>/dev/null || echo 0)" -ge 8 ]; then
        use_color=1
      else
        use_color=0
      fi
      ;;
  esac
  if [ "$use_color" -eq 1 ]; then
    bold="\033[1m"; red="\033[31m"; green="\033[32m"; yellow="\033[33m"; blue="\033[34m"; dim="\033[2m"; reset="\033[0m"
  fi
}

log() { # level msg
  local level="$1"; shift
  local msg="$*"
  [ "$QUIET" -eq 1 ] && [ "$level" != "ERROR" ] && return 0
  case "$level" in
    ERROR) echo -e "${red}[ERROR]${reset} $msg" >&2 ;;
    WARN)  [ "$VERBOSE" -ge 1 ] && echo -e "${yellow}[WARN]${reset}  $msg" >&2 ;;
    INFO)  [ "$VERBOSE" -ge 1 ] && echo -e "${blue}[INFO]${reset}  $msg" >&2 ;;
    DEBUG) [ "$VERBOSE" -ge 3 ] && echo -e "${dim}[DEBUG]${reset} $msg" >&2 ;;
    *)     echo "$msg" >&2 ;;
  esac
}

die() { log ERROR "$*"; exit 1; }

print_version() {
  local ver="unknown"
  if [ -f "${AHMYZSH:-.}/VERSION" ]; then
    ver="$(cat "${AHMYZSH}/VERSION" 2>/dev/null | tr -d '\r' | head -n1)"
  fi
  echo "ahmyzsh-snapshot-tool ${ver}"
}

usage() {
  cat <<'USAGE'
ahmyzsh Snapshot Tool

Create a single-file snapshot of the ahmyzsh codebase for AI agent analysis.

Usage:
  tools_assemble-ahmyzsh-bundle.sh [options]

Options:
  --minimal, --mode minimal     Generate a compact bundle (recommended for AI)
  --mode full                   Generate a full bundle (default)
  --commit HASH                 Attach a commit identifier in the header
  --list                        Print the list of files that would be included (no file written)
  --list-json                   Same as --list but as JSON
  -v, --verbose                 Increase verbosity (repeatable)
  -q, --quiet                   Suppress non-essential output
  -h, --help                    Show this help and exit
      --version                 Show version and exit

Advanced:
  --output-dir DIR              Output directory for timestamped bundles (default: snapshots/bundle)
  --latest-path FILE            Path for the LATEST file (default: snapshots/ahmyzsh-bundle-LATEST.sh)
  --no-latest                   Do not copy the generated bundle to the LATEST path

Examples:
  bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal
  bash scripts/tools_assemble-ahmyzsh-bundle.sh --list --mode minimal
  bash scripts/tools_assemble-ahmyzsh-bundle.sh --commit "$(git rev-parse --short HEAD 2>/dev/null)"
USAGE
}

# ============================================================================
# Find project root (scripts/ is in PROJECT_ROOT/scripts/)
# ============================================================================
SCRIPT_PATH="${BASH_SOURCE[0]}"

# Handle both absolute and relative paths
if [[ ! "$SCRIPT_PATH" = /* ]]; then
  SCRIPT_PATH="$(cd "$(dirname "$SCRIPT_PATH")" && pwd)/$(basename "$SCRIPT_PATH")"
fi

# SCRIPT_PATH: /projects/ahmyzsh/scripts/tools_assemble-ahmyzsh-bundle.sh
# dirname -> /projects/ahmyzsh/scripts
# dirname -> /projects/ahmyzsh (this is PROJECT_ROOT)
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
AHMYZSH="${PROJECT_ROOT}"

# Normalize path (remove trailing slash)
AHMYZSH="${AHMYZSH%/}"

# Defaults (can be overridden by CLI)
MODE="full"            # minimal|full
COMMIT="unknown"
LIST_MODE=""           # empty|plain|json
OUTPUT_DIR="${AHMYZSH}/snapshots/bundle"
LATEST_FILE="${AHMYZSH}/snapshots/ahmyzsh-bundle-LATEST.sh"
NO_LATEST=0

setup_colors

# Parse arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    --minimal) MODE="minimal"; shift ;;
    --mode)
      [ $# -lt 2 ] && die "--mode requires an argument (minimal|full)"
      case "$2" in
        minimal|full) MODE="$2" ;;
        *) die "Invalid mode: $2 (expected minimal|full)" ;;
      esac
      shift 2 ;;
    --commit)
      [ $# -lt 2 ] && die "--commit requires a HASH argument"
      COMMIT="$2"; shift 2 ;;
    --list|-n) LIST_MODE="plain"; shift ;;
    --list-json) LIST_MODE="json"; shift ;;
    -v|--verbose) VERBOSE=$((VERBOSE+1)); shift ;;
    -q|--quiet) QUIET=1; shift ;;
    --output-dir)
      [ $# -lt 2 ] && die "--output-dir requires DIR"
      OUTPUT_DIR="$2"; shift 2 ;;
    --latest-path)
      [ $# -lt 2 ] && die "--latest-path requires FILE"
      LATEST_FILE="$2"; shift 2 ;;
    --no-latest) NO_LATEST=1; shift ;;
    --version) print_version; exit 0 ;;
    -h|--help) usage; exit 0 ;;
    --color)
      [ $# -lt 2 ] && die "--color requires VALUE (auto|always|never)"
      COLOR="$2"; setup_colors; shift 2 ;;
    *) log WARN "Ignoring unknown option: $1"; shift ;;
  esac
done

# Create snapshot directories (may be a custom path)
SNAPSHOT_DIR="${OUTPUT_DIR}"
mkdir -p "${SNAPSHOT_DIR}" 2>/dev/null || true

# Generate output filenames
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
OUTFILE="${SNAPSHOT_DIR}/ahmyzsh-bundle-${TIMESTAMP}.sh"

# Helper: add listing entries
_LIST_JSON_ITEMS=()
_json_escape() { echo -n "$1" | sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' ; }
_list_add_plain() { # order path exists
  local order="$1"; local fpath="$2"; local exists="$3"; local rel_path="${fpath#${AHMYZSH}/}"
  printf "%s\t%s\t%s\n" "$order" "$rel_path" "$([ "$exists" = 1 ] && echo OK || echo MISSING)"
}
_list_add_json() { # order path exists
  local order="$1"; local fpath="$2"; local exists="$3"; local rel_path="${fpath#${AHMYZSH}/}"
  _LIST_JSON_ITEMS+=( "{\"order\":\"$(_json_escape "$order")\",\"relative\":\"$(_json_escape "$rel_path")\",\"full\":\"$(_json_escape "$fpath")\",\"exists\":$([ "$exists" = 1 ] && echo true || echo false)}" )
}

# Create output file with header (only when not listing)
if [ -z "$LIST_MODE" ]; then
  echo "# =============================================================================" > "${OUTFILE}"
  echo "# AHMYZSH SNAPSHOT - AI AGENT CONTEXT BUNDLE" >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  echo "# Project Root: ${AHMYZSH}" >> "${OUTFILE}"
  echo "# Generated: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> "${OUTFILE}"
  echo "# Commit: ${COMMIT}" >> "${OUTFILE}"
  echo "# Mode: ${MODE}" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# Purpose:" >> "${OUTFILE}"
  echo "#  - Complete context snapshot for AI agent analysis" >> "${OUTFILE}"
  echo "#  - Single-file reference of ahmyzsh architecture and boot sequence" >> "${OUTFILE}"
  echo "#  - Facilitates code understanding and troubleshooting by AI systems" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# Location: ${OUTFILE}" >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  echo >> "${OUTFILE}"
fi

# Counter for tracking
file_count=0

# Helper to append a file with header
append_file() {
  local fpath="$1"
  local order="${2:-}"

  if [ ! -f "$fpath" ]; then
    [ -z "$LIST_MODE" ] && { echo "# WARNING: File not found: $fpath" >> "${OUTFILE}" 2>/dev/null || true; }
    log WARN "Missing: $fpath"
    return 0
  fi

  file_count=$((file_count + 1))
  local rel_path="${fpath#${AHMYZSH}/}"

  [ -z "$LIST_MODE" ] || return 0
  echo >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  if [ -n "$order" ]; then
    echo "# LOAD ORDER: ${order}" >> "${OUTFILE}"
  fi
  echo "# FILE: ${rel_path}" >> "${OUTFILE}"
  echo "# FULL PATH: ${fpath}" >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  cat "${fpath}" >> "${OUTFILE}"
  echo >> "${OUTFILE}"
  echo "# END FILE: ${rel_path}" >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  echo >> "${OUTFILE}"
}

# Set AHMYZSH_CORE directly (we know it's always ${AHMYZSH}/core)
AHMYZSH_CORE="${AHMYZSH}/core"

if [ -z "$LIST_MODE" ]; then
  echo "# =============================================================================" >> "${OUTFILE}"
  echo "# BOOT SEQUENCE" >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# 1. source-me-in-etc-zshenv.sh" >> "${OUTFILE}"
  echo "#    └─ Entry point (typically sourced from /etc/zshenv)" >> "${OUTFILE}"
  echo "#    └─ Sets up AHMYZSH paths and environment variables" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# 2. MAIN-FUNCTIONS.sh" >> "${OUTFILE}"
  echo "#    └─ Core utility functions (load_, source_, call_, etc.)" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# 3. core/compute-path/path.sh" >> "${OUTFILE}"
  echo "#    └─ PATH computation and caching" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# 4. core/compute-path/conda-initialize.sh" >> "${OUTFILE}"
  echo "#    └─ Conda environment initialization" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# 5. MAIN.sh" >> "${OUTFILE}"
  echo "#    └─ Bootstrap: calls SCIENTIA_ES_LUX_PRINCIPIUM" >> "${OUTFILE}"
  echo "#    └─ Orchestrates entire initialization" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# 6. MAIN_SETTINGS.sh" >> "${OUTFILE}"
  echo "#    └─ Configuration and settings initialization" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# 7. load_all_config_and_settings_files() loads in order:" >> "${OUTFILE}"
  echo "#    ├─ core/paths/*.sh" >> "${OUTFILE}"
  echo "#    ├─ core/layouts/*.sh" >> "${OUTFILE}"
  echo "#    ├─ core/compute-path/*.sh" >> "${OUTFILE}"
  echo "#    ├─ core/functions/*.sh" >> "${OUTFILE}"
  echo "#    ├─ core/aliases/*.sh" >> "${OUTFILE}"
  echo "#    └─ core/env/*.sh" >> "${OUTFILE}"
  echo "#" >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  echo >> "${OUTFILE}"
fi

# Core bootstrap files in actual load order
echo "Extracting core bootstrap files..." | sed 's/^/ /' >&2
append_file "${AHMYZSH}/source-me-in-etc-zshenv.sh" "1-ENTRY" || true
append_file "${AHMYZSH}/MAIN-FUNCTIONS.sh" "2-FUNCTIONS" || true
append_file "${AHMYZSH_CORE}/compute-path/path.sh" "3-PATH" || true
[ -f "${AHMYZSH_CORE}/compute-path/conda-initialize.sh" ] && append_file "${AHMYZSH_CORE}/compute-path/conda-initialize.sh" "4-CONDA" || true
append_file "${AHMYZSH}/MAIN.sh" "5-BOOTSTRAP" || true
[ -f "${AHMYZSH}/MAIN_SETTINGS.sh" ] && append_file "${AHMYZSH}/MAIN_SETTINGS.sh" "6-SETTINGS" || true

# Core directories in load order (from load_all_config_and_settings_files)
if [ "$MODE" = "minimal" ]; then
  log INFO "Minimal mode: Extracting only core bootstrap and key utility files..."

  # Just the essential directories with file count limits
  order=7
  for d in paths layouts; do
    dir="${AHMYZSH_CORE}/${d}"
    if [ -d "${dir}" ]; then
      log INFO "Extracting key files from ${d}/..."
      for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f | sort | head -5); do
        [ -f "${f}" ] && append_file "${f}" "${order}-${d^^}"
      done
      order=$((order + 1))
    fi
  done

  # Sample of functions/aliases (not all 50+)
  log INFO "Extracting sample functions..."
  for f in $(find "${AHMYZSH_CORE}/functions" -maxdepth 1 -name "*.sh" -type f | sort | head -10); do
    [ -f "${f}" ] && append_file "${f}" "9-FUNCTIONS-SAMPLE"
  done

else
  log INFO "Full mode: Extracting all files (use --minimal for compact version)..."
  order=7
  for d in paths layouts compute-path functions aliases env; do
    dir="${AHMYZSH_CORE}/${d}"
    if [ -d "${dir}" ]; then
      log INFO "Extracting files from ${d}/..."
      # Sort files to maintain deterministic order
      for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f | sort); do
        [ -f "${f}" ] && append_file "${f}" "${order}-${d^^}"
      done
      order=$((order + 1))
    fi
  done

  # Additional important directories (skip options - 200+ tiny files)
  for d in scripts sources complete.d; do
    dir="${AHMYZSH_CORE}/${d}"
    if [ -d "${dir}" ]; then
      log INFO "Extracting files from ${d}/..."
      for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f 2>/dev/null | sort); do
        [ -f "${f}" ] && append_file "${f}" "EXTRA-${d^^}"
      done
    fi
  done
fi

# If listing mode was requested, output selection and exit
if [ -n "$LIST_MODE" ]; then
  if [ "$LIST_MODE" = "json" ]; then
    # Build JSON by re-walking the selection logic but only listing
    _LIST_JSON_ITEMS=()
    add_json() { local o="$1"; local p="$2"; [ -f "$p" ] && ex=1 || ex=0; _list_add_json "$o" "$p" "$ex"; }

    add_json "1-ENTRY" "${AHMYZSH}/source-me-in-etc-zshenv.sh"
    add_json "2-FUNCTIONS" "${AHMYZSH}/MAIN-FUNCTIONS.sh"
    add_json "3-PATH" "${AHMYZSH_CORE}/compute-path/path.sh"
    add_json "4-CONDA" "${AHMYZSH_CORE}/compute-path/conda-initialize.sh"
    add_json "5-BOOTSTRAP" "${AHMYZSH}/MAIN.sh"
    add_json "6-SETTINGS" "${AHMYZSH}/MAIN_SETTINGS.sh"

    if [ "$MODE" = "minimal" ]; then
      order=7
      for d in paths layouts; do
        dir="${AHMYZSH_CORE}/${d}"
        if [ -d "${dir}" ]; then
          for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f | sort | head -5); do
            add_json "${order}-${d^^}" "$f"
          done
          order=$((order + 1))
        fi
      done
      for f in $(find "${AHMYZSH_CORE}/functions" -maxdepth 1 -name "*.sh" -type f | sort | head -10); do
        add_json "9-FUNCTIONS-SAMPLE" "$f"
      done
    else
      order=7
      for d in paths layouts compute-path functions aliases env; do
        dir="${AHMYZSH_CORE}/${d}"
        if [ -d "${dir}" ]; then
          for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f | sort); do
            add_json "${order}-${d^^}" "$f"
          done
          order=$((order + 1))
        fi
      done
      for d in scripts sources complete.d; do
        dir="${AHMYZSH_CORE}/${d}"
        if [ -d "${dir}" ]; then
          for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f 2>/dev/null | sort); do
            add_json "EXTRA-${d^^}" "$f"
          done
        fi
      done
    fi

    printf '{"mode":"%s","projectRoot":"%s","generated":"%s","files":[\n' "$MODE" "$AHMYZSH" "$(date -u +'%Y-%m-%dT%H:%M:%SZ')"
    last_index=$(( ${#_LIST_JSON_ITEMS[@]} - 1 ))
    for i in "${!_LIST_JSON_ITEMS[@]}"; do
      if [ "$i" -lt "$last_index" ]; then
        printf "  %s,\n" "${_LIST_JSON_ITEMS[$i]}"
      else
        printf "  %s\n" "${_LIST_JSON_ITEMS[$i]}"
      fi
    done
    printf ']}\n'

  else
    echo "# Files to include (mode: $MODE)"
    list_plain() { local o="$1"; local p="$2"; [ -f "$p" ] && ex=1 || ex=0; _list_add_plain "$o" "$p" "$ex"; }
    list_plain "1-ENTRY" "${AHMYZSH}/source-me-in-etc-zshenv.sh"
    list_plain "2-FUNCTIONS" "${AHMYZSH}/MAIN-FUNCTIONS.sh"
    list_plain "3-PATH" "${AHMYZSH_CORE}/compute-path/path.sh"
    list_plain "4-CONDA" "${AHMYZSH_CORE}/compute-path/conda-initialize.sh"
    list_plain "5-BOOTSTRAP" "${AHMYZSH}/MAIN.sh"
    list_plain "6-SETTINGS" "${AHMYZSH}/MAIN_SETTINGS.sh"

    if [ "$MODE" = "minimal" ]; then
      order=7
      for d in paths layouts; do
        dir="${AHMYZSH_CORE}/${d}"
        if [ -d "${dir}" ]; then
          for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f | sort | head -5); do
            list_plain "${order}-${d^^}" "$f"
          done
          order=$((order + 1))
        fi
      done
      for f in $(find "${AHMYZSH_CORE}/functions" -maxdepth 1 -name "*.sh" -type f | sort | head -10); do
        list_plain "9-FUNCTIONS-SAMPLE" "$f"
      done
    else
      order=7
      for d in paths layouts compute-path functions aliases env; do
        dir="${AHMYZSH_CORE}/${d}"
        if [ -d "${dir}" ]; then
          for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f | sort); do
            list_plain "${order}-${d^^}" "$f"
          done
          order=$((order + 1))
        fi
      done
      for d in scripts sources complete.d; do
        dir="${AHMYZSH_CORE}/${d}"
        if [ -d "${dir}" ]; then
          for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f 2>/dev/null | sort); do
            list_plain "EXTRA-${d^^}" "$f"
          done
        fi
      done
    fi
  fi
  exit 0
fi
# Summary and completion message
echo >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo "# EXTRACTION COMPLETE" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo "# Total files: ${file_count}" >> "${OUTFILE}"
echo "# Mode: ${MODE^^}" >> "${OUTFILE}"
echo "# Generated: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> "${OUTFILE}"
echo "# Snapshot: ${OUTFILE}" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"

# Copy/output to LATEST file (versioned, not symlinked)
if [ "$NO_LATEST" -ne 1 ]; then
  # Remove old LATEST (whether symlink or file) first
  rm -f "${LATEST_FILE}" 2>/dev/null || true
  cp "${OUTFILE}" "${LATEST_FILE}" 2>/dev/null || log WARN "Failed to copy to LATEST: ${LATEST_FILE}"
fi

# Output summary
echo ""
echo "✓ Bundle snapshot created successfully"
echo "  Files: ${file_count}"
echo "  Mode: ${MODE^^}"
echo "  Output (timestamped): ${OUTFILE}"
if [ "$NO_LATEST" -ne 1 ]; then
  echo "  Output (latest):      ${LATEST_FILE}"
fi
echo ""
