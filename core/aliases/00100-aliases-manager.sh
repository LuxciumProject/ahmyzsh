#!/bin/bash

# Aliases manager - provides utilities for managing aliases

# Generate the alias inventory
alias generate-alias-inventory='/projects/templates/ahmyzsh/tools/alias-inventory.sh'

# Open the alias inventory in the default editor
alias view-aliases='${EDITOR:-nano} /projects/templates/ahmyzsh/core/aliases/00000-alias-inventory.md'

# Search for a specific alias across all alias files
alias find-alias='function _find_alias() { grep -n "^alias $1" /projects/templates/ahmyzsh/core/aliases/*.sh; }; _find_alias'

# Count aliases in all files
alias count-aliases='grep -c "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | sort -t: -k2 -nr'

# Find potential alias duplicates
alias find-duplicate-aliases='grep "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | cut -d= -f1 | sort | uniq -d'

# Update the alias inventory file
generate-alias-inventory
