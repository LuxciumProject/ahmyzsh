#!/usr/bin/env bash
# AI Context Extraction Tool: Create AI Agent Snapshot Bundle
# Purpose: Single file containing complete ahmyzsh codebase for AI agent analysis
# Usage: bash scripts/tools_assemble-ahmyzsh-bundle.sh [--minimal] [--commit HASH]
#
# Features:
#  - Location agnostic: run from anywhere in the ahmyzsh tree
#  - Outputs to: snapshots/bundle/ahmyzsh-bundle-TIMESTAMP.sh
#  - Optional minimal mode: --minimal
#  - Optional commit: --commit HASH
#
# Examples:
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh --minimal
#  bash scripts/tools_assemble-ahmyzsh-bundle.sh --commit abc123def
#  cd /some/other/dir && bash /projects/ahmyzsh/scripts/tools_assemble-ahmyzsh-bundle.sh

set -uo pipefail  # Don't use -e, handle errors manually

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

# Create snapshot directories
SNAPSHOT_DIR="${AHMYZSH}/snapshots/bundle"
mkdir -p "${SNAPSHOT_DIR}"

# Parse arguments
COMMIT="unknown"
MINIMAL_MODE=""

while [[ $# -gt 0 ]]; do
  case $1 in
    --minimal)
      MINIMAL_MODE="--minimal"
      shift
      ;;
    --commit)
      COMMIT="$2"
      shift 2
      ;;
    *)
      shift
      ;;
  esac
done

# Generate output filenames
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
OUTFILE="${SNAPSHOT_DIR}/ahmyzsh-bundle-${TIMESTAMP}.sh"
LATEST_FILE="${AHMYZSH}/snapshots/ahmyzsh-bundle-LATEST.sh"

# Create output file with header
echo "# =============================================================================" > "${OUTFILE}"
echo "# AHMYZSH SNAPSHOT - AI AGENT CONTEXT BUNDLE" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo "# Project Root: ${AHMYZSH}" >> "${OUTFILE}"
echo "# Generated: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> "${OUTFILE}"
echo "# Commit: ${COMMIT}" >> "${OUTFILE}"
echo "# Mode: $([ -n "$MINIMAL_MODE" ] && echo 'minimal' || echo 'full')" >> "${OUTFILE}"
echo "#" >> "${OUTFILE}"
echo "# Purpose:" >> "${OUTFILE}"
echo "#  - Complete context snapshot for AI agent analysis" >> "${OUTFILE}"
echo "#  - Single-file reference of ahmyzsh architecture and boot sequence" >> "${OUTFILE}"
echo "#  - Facilitates code understanding and troubleshooting by AI systems" >> "${OUTFILE}"
echo "#" >> "${OUTFILE}"
echo "# Location: ${OUTFILE}" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo >> "${OUTFILE}"

# Counter for tracking
file_count=0

# Helper to append a file with header
append_file() {
  local fpath="$1"
  local order="${2:-}"

  if [ ! -f "$fpath" ]; then
    echo "# WARNING: File not found: $fpath" >> "${OUTFILE}" 2>/dev/null || true
    echo "  ✗ Missing: $fpath" >&2
    return 0
  fi

  file_count=$((file_count + 1))
  local rel_path="${fpath#${AHMYZSH}/}"

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

# Core bootstrap files in actual load order
echo "Extracting core bootstrap files..."
append_file "${AHMYZSH}/source-me-in-etc-zshenv.sh" "1-ENTRY" || true
append_file "${AHMYZSH}/MAIN-FUNCTIONS.sh" "2-FUNCTIONS" || true
append_file "${AHMYZSH_CORE}/compute-path/path.sh" "3-PATH" || true
[ -f "${AHMYZSH_CORE}/compute-path/conda-initialize.sh" ] && append_file "${AHMYZSH_CORE}/compute-path/conda-initialize.sh" "4-CONDA" || true
append_file "${AHMYZSH}/MAIN.sh" "5-BOOTSTRAP" || true
[ -f "${AHMYZSH}/MAIN_SETTINGS.sh" ] && append_file "${AHMYZSH}/MAIN_SETTINGS.sh" "6-SETTINGS" || true

# Core directories in load order (from load_all_config_and_settings_files)
if [ "$MINIMAL_MODE" = "--minimal" ]; then
  echo "Minimal mode: Extracting only core bootstrap and key utility files..."

  # Just the essential directories with file count limits
  order=7
  for d in paths layouts; do
    dir="${AHMYZSH_CORE}/${d}"
    if [ -d "${dir}" ]; then
      echo "Extracting key files from ${d}/..."
      for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f | sort | head -5); do
        [ -f "${f}" ] && append_file "${f}" "${order}-${d^^}"
      done
      order=$((order + 1))
    fi
  done

  # Sample of functions/aliases (not all 50+)
  echo "Extracting sample functions..."
  for f in $(find "${AHMYZSH_CORE}/functions" -maxdepth 1 -name "*.sh" -type f | sort | head -10); do
    [ -f "${f}" ] && append_file "${f}" "9-FUNCTIONS-SAMPLE"
  done

else
  echo "Full mode: Extracting all files (use --minimal for compact version)..."
  order=7
  for d in paths layouts compute-path functions aliases env; do
    dir="${AHMYZSH_CORE}/${d}"
    if [ -d "${dir}" ]; then
      echo "Extracting files from ${d}/..."
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
      echo "Extracting files from ${d}/..."
      for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f 2>/dev/null | sort); do
        [ -f "${f}" ] && append_file "${f}" "EXTRA-${d^^}"
      done
    fi
  done
fi

# Summary and completion message
echo >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo "# EXTRACTION COMPLETE" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo "# Total files: ${file_count}" >> "${OUTFILE}"
echo "# Mode: $([ -n "$MINIMAL_MODE" ] && echo 'MINIMAL' || echo 'FULL')" >> "${OUTFILE}"
echo "# Generated: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> "${OUTFILE}"
echo "# Snapshot: ${OUTFILE}" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"

# Copy/output to LATEST file (versioned, not symlinked)
# Remove old LATEST (whether symlink or file) first
rm -f "${LATEST_FILE}"
cp "${OUTFILE}" "${LATEST_FILE}"

# Output summary
echo ""
echo "✓ Bundle snapshot created successfully"
echo "  Files: ${file_count}"
echo "  Mode: $([ -n "$MINIMAL_MODE" ] && echo 'MINIMAL' || echo 'FULL')"
echo "  Output (timestamped): ${OUTFILE}"
echo "  Output (latest):      ${LATEST_FILE}"
echo ""
