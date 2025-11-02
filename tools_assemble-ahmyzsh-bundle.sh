#!/usr/bin/env bash
# Simple assembler: produce a single flattened document of all files sourced at boot.
# Usage: ./assemble-ahmyzsh-bundle.sh /path/to/ahmyzsh /path/to/output/bundle.sh
set -euo pipefail

AHMYZSH="${1:-./}"
OUTFILE="${2:-./ahmyzsh-bundle-$(date +%Y%m%d%H%M%S).sh}"
COMMIT="${3:-unknown}"

echo "# AHMYZSH flattened bundle" > "${OUTFILE}"
echo "# Source repo: ${AHMYZSH}" >> "${OUTFILE}"
echo "# Generated: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> "${OUTFILE}"
echo "# Commit: ${COMMIT}" >> "${OUTFILE}"
echo >> "${OUTFILE}"

# helper to append a file with header
append_file() {
  local fpath="$1"
  if [ ! -f "$fpath" ]; then
    echo "# WARNING: missing file: $fpath" >> "${OUTFILE}"
    return
  fi
  echo >> "${OUTFILE}"
  echo "### BEGIN FILE: ${fpath}" >> "${OUTFILE}"
  echo "### ----------------------------------------------------------------" >> "${OUTFILE}"
  sed 's/^/# /' "${fpath}" >> "${OUTFILE}"
  echo "### END FILE: ${fpath}" >> "${OUTFILE}"
  echo >> "${OUTFILE}"
}

# Core known files (from source-me-in-etc-zshenv.sh)
append_file "${AHMYZSH}/source-me-in-etc-zshenv.sh" || true
append_file "${AHMYZSH}/MAIN-FUNCTIONS.sh" || true
append_file "${AHMYZSH}/core/compute-path/path.sh" || true
append_file "${AHMYZSH}/core/compute-path/conda-initialize.sh" || true
append_file "${AHMYZSH}/MAIN.sh" || true

# If AHMYZSH_CORE is defined in MAIN.sh or paths, try to extract it.
# Search for a likely AHMYZSH_CORE declaration in repo files:
AHMYZSH_CORE="$(grep -Eo 'AHMYZSH_CORE=\"?[^\"]+' -R "${AHMYZSH}" || true)"
# Fallback default
if [ -z "${AHMYZSH_CORE}" ]; then
  # common guess:
  AHMYZSH_CORE="${AHMYZSH}/core"
fi

# Normalize: if grep returned something, try to extract path part
if [[ "${AHMYZSH_CORE}" =~ ^.*AHMYZSH_CORE=\"?(.+)$ ]]; then
  AHMYZSH_CORE="${BASH_REMATCH[1]}"
fi

# Append directory files if present
for d in paths layouts compute-path functions aliases env; do
  dir="${AHMYZSH_CORE}/${d}"
  if [ -d "${dir}" ]; then
    echo "# Adding files in ${dir}" >> "${OUTFILE}"
    # sort to keep determinism
    for f in "${dir}"/*.sh; do
      [ -f "${f}" ] || continue
      append_file "${f}"
    done
  else
    echo "# Note: ${dir} not found, skipping" >> "${OUTFILE}"
  fi
done

echo "# Bundle written to ${OUTFILE}"