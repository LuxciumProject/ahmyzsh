#!/usr/bin/env bash
# AI Context Extraction Tool: Flattened bundle of all ahmyzsh files for AI agent analysis
# Usage: ./assemble-ahmyzsh-bundle.sh [/path/to/ahmyzsh] [/path/to/output/bundle.sh] [commit]
set -euo pipefail

AHMYZSH="${1:-/projects/ahmyzsh}"
OUTFILE="${2:-./ahmyzsh-bundle-$(date +%Y%m%d%H%M%S).sh}"
COMMIT="${3:-unknown}"

# Normalize path (remove trailing slash)
AHMYZSH="${AHMYZSH%/}"

echo "# =============================================================================" > "${OUTFILE}"
echo "# AHMYZSH FLATTENED BUNDLE - AI Agent Context Extraction" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo "# Source repo: ${AHMYZSH}" >> "${OUTFILE}"
echo "# Generated: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> "${OUTFILE}"
echo "# Commit: ${COMMIT}" >> "${OUTFILE}"
echo "#" >> "${OUTFILE}"
echo "# Purpose: Complete context dump for AI agents to understand ahmyzsh structure" >> "${OUTFILE}"
echo "# All code is commented out - this is documentation only, not executable" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo >> "${OUTFILE}"

# Counter for tracking
file_count=0

# Helper to append a file with header
append_file() {
  local fpath="$1"
  local order="${2:-}"

  if [ ! -f "$fpath" ]; then
    echo "# WARNING: File not found: $fpath" >> "${OUTFILE}"
    return 1
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
  sed 's/^/# /' "${fpath}" >> "${OUTFILE}"
  echo >> "${OUTFILE}"
  echo "# END FILE: ${rel_path}" >> "${OUTFILE}"
  echo "# =============================================================================" >> "${OUTFILE}"
  echo >> "${OUTFILE}"
}

# Set AHMYZSH_CORE directly (we know it's always ${AHMYZSH}/core)
AHMYZSH_CORE="${AHMYZSH}/core"

echo "# Boot Sequence Documentation" >> "${OUTFILE}"
echo "#" >> "${OUTFILE}"
echo "# 1. source-me-in-etc-zshenv.sh - Entry point (sourced from /etc/zshenv)" >> "${OUTFILE}"
echo "# 2. MAIN-FUNCTIONS.sh - Core utility functions" >> "${OUTFILE}"
echo "# 3. core/compute-path/path.sh - PATH computation" >> "${OUTFILE}"
echo "# 4. core/compute-path/conda-initialize.sh - Conda setup" >> "${OUTFILE}"
echo "# 5. MAIN.sh - Bootstrap (calls SCIENTIA_ES_LUX_PRINCIPIUM)" >> "${OUTFILE}"
echo "# 6. MAIN_SETTINGS.sh - Configuration and settings" >> "${OUTFILE}"
echo "# 7. Core directories loaded in order via load_all_config_and_settings_files():" >> "${OUTFILE}"
echo "#    - core/paths/*.sh" >> "${OUTFILE}"
echo "#    - core/layouts/*.sh" >> "${OUTFILE}"
echo "#    - core/compute-path/*.sh" >> "${OUTFILE}"
echo "#    - core/functions/*.sh" >> "${OUTFILE}"
echo "#    - core/aliases/*.sh" >> "${OUTFILE}"
echo "#    - core/env/*.sh" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo >> "${OUTFILE}"

# Core bootstrap files in actual load order
echo "Extracting core bootstrap files..."
append_file "${AHMYZSH}/source-me-in-etc-zshenv.sh" "1-ENTRY"
append_file "${AHMYZSH}/MAIN-FUNCTIONS.sh" "2-FUNCTIONS"
append_file "${AHMYZSH_CORE}/compute-path/path.sh" "3-PATH"
[ -f "${AHMYZSH_CORE}/compute-path/conda-initialize.sh" ] && append_file "${AHMYZSH_CORE}/compute-path/conda-initialize.sh" "4-CONDA"
append_file "${AHMYZSH}/MAIN.sh" "5-BOOTSTRAP"
[ -f "${AHMYZSH}/MAIN_SETTINGS.sh" ] && append_file "${AHMYZSH}/MAIN_SETTINGS.sh" "6-SETTINGS"

# Core directories in load order (from load_all_config_and_settings_files)
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

# Additional important directories
for d in options scripts sources complete.d; do
  dir="${AHMYZSH_CORE}/${d}"
  if [ -d "${dir}" ]; then
    echo "Extracting files from ${d}/..."
    for f in $(find "${dir}" -maxdepth 1 -name "*.sh" -type f 2>/dev/null | sort); do
      [ -f "${f}" ] && append_file "${f}" "EXTRA-${d^^}"
    done
  fi
done

# Summary
echo >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"
echo "# EXTRACTION COMPLETE" >> "${OUTFILE}"
echo "# Total files extracted: ${file_count}" >> "${OUTFILE}"
echo "# Generated: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> "${OUTFILE}"
echo "# =============================================================================" >> "${OUTFILE}"

echo "✓ Bundle written to ${OUTFILE}"
echo "✓ Extracted ${file_count} files"
