#!/bin/bash

# Aliases manager - provides utilities for managing aliases

# Generate the alias inventory (enhanced version with change tracking)
alias generate-alias-inventory='/projects/templates/ahmyzsh/tools/alias-inventory-enhanced.sh'

# Open the alias inventory in the default editor
alias view-aliases='${EDITOR:-nano} /projects/templates/ahmyzsh/core/aliases/00000-alias-inventory.md'

# Search for a specific alias across all alias files
alias find-alias='function _find_alias() { grep -n "^alias $1" /projects/templates/ahmyzsh/core/aliases/*.sh; }; _find_alias'

# Count aliases in all files
alias count-aliases='grep -c "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | sort -t: -k2 -nr'

# Find potential alias duplicates
alias find-duplicate-aliases='grep "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | cut -d= -f1 | sort | uniq -d'

# Run the alias maintenance check
alias alias-maintenance='/projects/templates/ahmyzsh/tools/alias-maintenance.sh && ${EDITOR:-nano} /projects/templates/ahmyzsh/tools/alias-maintenance-report.md'

# View alias history
alias alias-history='ls -lt /projects/templates/ahmyzsh/tools/alias-history/ | head -10'
alias view-alias-history='function _view_history() { ${EDITOR:-nano} "/projects/templates/ahmyzsh/tools/alias-history/$1"; }; _view_history'

# Compare current aliases with a previous snapshot
alias compare-aliases='function _compare_aliases() { diff -u "/projects/templates/ahmyzsh/tools/alias-history/$1" /projects/templates/ahmyzsh/core/aliases/00000-alias-inventory.md; }; _compare_aliases'

# Run the scheduler manually (updates inventory and runs maintenance check)
alias update-aliases='/projects/templates/ahmyzsh/tools/alias-inventory-scheduler.sh'

# Add a new alias file (creates a template with header)
alias create-alias-file='function _create_alias_file() {
  if [[ -z "$1" ]]; then
    echo "Usage: create-alias-file filename.sh"
    return 1
  fi

  filepath="/projects/templates/ahmyzsh/core/aliases/$1"

  if [[ -f "$filepath" ]]; then
    echo "File already exists: $filepath"
    return 1
  fi

  echo "#!/bin/bash" > "$filepath"
  echo "# Aliases for: ${1%.sh}" >> "$filepath"
  echo "# Created on: $(date)" >> "$filepath"
  echo "" >> "$filepath"
  echo "# Example:" >> "$filepath"
  echo "# alias example-alias=\"command --with --options\"" >> "$filepath"
  echo "" >> "$filepath"

  chmod +x "$filepath"
  echo "Created new alias file: $filepath"
  ${EDITOR:-nano} "$filepath"
}; _create_alias_file'

# Update the alias inventory file when this script is sourced
generate-alias-inventory > /dev/null 2>&1
