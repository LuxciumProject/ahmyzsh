#!/usr/bin/env bash

# Layer 1 Idempotent Initializer
# Validates foundation files, sets permissions, initializes git if needed, prints status.

set -euo pipefail

echo "Layer 1 Bootstrap - $(date)"

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_ROOT"

# Validate foundation files
FOUNDATION_FILES=(
    ".editorconfig"
    ".gitattributes"
    ".gitignore"
    "LICENSE"
    "README.md"
    "VERSION"
    "scripts/README.md"
    "scripts/init.sh"
)

echo "Validating foundation files..."
for file in "${FOUNDATION_FILES[@]}"; do
    if [[ -f "$file" ]]; then
        echo "✓ $file"
    else
        echo "✗ Missing: $file"
        exit 1
    fi
done

# Set executable permissions on scripts
echo "Setting script permissions..."
chmod +x scripts/*.sh

# Initialize git if not present
if [[ ! -d ".git" ]]; then
    echo "Initializing git repository..."
    git init
    git add .
    git commit -m "Scientia est lux principium✨"
else
    echo "Git repository already exists."
fi

# Print project info
echo "Project: $(basename "$PROJECT_ROOT")"
echo "Version: $(cat VERSION)"
echo "Status: Foundation verified"

echo "Bootstrap complete - $(date)"
