#!/usr/bin/env bash
set -euo pipefail

# Concatenate every alias script in this directory into a single file.
# Usage: ./concat_aliases.sh [output_path]
# When no output path is provided, the aggregated file is written next to this script.

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
default_output="${script_dir}/all-aliases.sh"
output_path="${1:-$default_output}"

if [[ -d "$output_path" ]]; then
  echo "Output path points to a directory: $output_path" >&2
  exit 1
fi

# Collect all .sh files, excluding compiled .zwc files and this script.
mapfile -d '' alias_files < <(
  find "$script_dir" -maxdepth 1 -type f -name '*.sh' ! -name '*.zwc' -print0 |
    sort -z
)

if [[ ${#alias_files[@]} -eq 0 ]]; then
  echo "No alias scripts found in ${script_dir}" >&2
  exit 1
fi

{
  printf '#!/usr/bin/env zsh\n'
  printf '# Auto-generated on %s by %s\n' "$(date -u +'%Y-%m-%dT%H:%M:%SZ')" "$(basename "$0")"
  printf '# Do not edit manually; rerun %s instead.\n\n' "$(basename "$0")"

  for alias_file in "${alias_files[@]}"; do
    if [[ "$alias_file" == "$script_path" ]]; then
      continue
    fi

    printf '# ---- %s ----\n' "$(basename "$alias_file")"
    cat "$alias_file"
    printf '\n'
  done
} >"$output_path"

chmod +x "$output_path"

echo "Wrote combined aliases to $output_path"
