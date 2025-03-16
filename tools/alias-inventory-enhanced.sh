#!/bin/bash
# Enhanced script to create an inventory of all aliases with change tracking

ALIASES_DIR="/projects/templates/ahmyzsh/core/aliases"
OUTPUT_FILE="${ALIASES_DIR}/00000-alias-inventory.md"
HISTORY_DIR="/projects/templates/ahmyzsh/tools/alias-history"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create history directory if it doesn't exist
mkdir -p "$HISTORY_DIR"

# Save previous inventory for change comparison if it exists
if [ -f "$OUTPUT_FILE" ]; then
  cp "$OUTPUT_FILE" "$HISTORY_DIR/inventory_previous.md"
fi

# Header for the inventory file
echo "# Complete Alias Inventory" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Generated on: $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "## Summary of Alias Files" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "| Filename | Lines | Size (bytes) | Aliases Count |" >> "$OUTPUT_FILE"
echo "|----------|-------|-------------|---------------|" >> "$OUTPUT_FILE"

# Process all alias files
total_aliases=0
total_lines=0
total_size=0

# Store data for change tracking
declare -A previous_counts
declare -A current_counts

for file in "${ALIASES_DIR}"/*.sh; do
  if [ -f "$file" ]; then
    filename=$(basename "$file")
    lines=$(wc -l < "$file")
    size=$(wc -c < "$file")
    alias_count=$(grep -c "^alias " "$file")

    echo "| $filename | $lines | $size | $alias_count |" >> "$OUTPUT_FILE"

    total_aliases=$((total_aliases + alias_count))
    total_lines=$((total_lines + lines))
    total_size=$((total_size + size))

    # Store current counts for change tracking
    current_counts["$filename"]="$alias_count"
  fi
done

# Add totals
echo "| **TOTAL** | **$total_lines** | **$total_size** | **$total_aliases** |" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Load previous counts if available
if [ -f "$HISTORY_DIR/alias_counts.txt" ]; then
  while IFS='|' read -r filename count; do
    previous_counts["$filename"]="$count"
  done < "$HISTORY_DIR/alias_counts.txt"

  # Add change tracking section
  echo "## Changes Since Last Update" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  echo "| Filename | Previous Count | Current Count | Difference |" >> "$OUTPUT_FILE"
  echo "|----------|---------------|--------------|------------|" >> "$OUTPUT_FILE"

  changes_found=false

  for filename in "${!current_counts[@]}"; do
    prev=${previous_counts["$filename"]:-0}
    curr=${current_counts["$filename"]}
    diff=$((curr - prev))

    if [ "$diff" -ne 0 ]; then
      changes_found=true
      if [ "$diff" -gt 0 ]; then
        echo "| $filename | $prev | $curr | +$diff |" >> "$OUTPUT_FILE"
      else
        echo "| $filename | $prev | $curr | $diff |" >> "$OUTPUT_FILE"
      fi
    fi
  done

  # Check for removed files
  for filename in "${!previous_counts[@]}"; do
    if [ -z "${current_counts[$filename]}" ]; then
      changes_found=true
      echo "| $filename | ${previous_counts[$filename]} | 0 | File Removed |" >> "$OUTPUT_FILE"
    fi
  done

  if [ "$changes_found" = false ]; then
    echo "No changes detected since last update." >> "$OUTPUT_FILE"
  fi

  echo "" >> "$OUTPUT_FILE"
fi

# Save current counts for future comparison
for filename in "${!current_counts[@]}"; do
  echo "$filename|${current_counts[$filename]}" >> "$HISTORY_DIR/alias_counts.txt.new"
done

# Replace the old counts file
mv "$HISTORY_DIR/alias_counts.txt.new" "$HISTORY_DIR/alias_counts.txt"

# Create a historical snapshot
cp "$OUTPUT_FILE" "$HISTORY_DIR/inventory_$TIMESTAMP.md"

# Now create detailed section for each file
echo "## Detailed Alias Listing" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for file in "${ALIASES_DIR}"/*.sh; do
  if [ -f "$file" ]; then
    filename=$(basename "$file")
    echo "### $filename" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "Lines: $(wc -l < "$file") | Size: $(wc -c < "$file") bytes" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "| Alias | Command |" >> "$OUTPUT_FILE"
    echo "|-------|---------|" >> "$OUTPUT_FILE"

    # Extract aliases and their commands
    grep "^alias " "$file" | while read -r alias_line; do
      # Extract the alias name and command
      if [[ $alias_line =~ ^alias\ ([^=]+)=[\'\"](.+)[\'\"] ]]; then
        alias_name="${BASH_REMATCH[1]}"
        alias_command="${BASH_REMATCH[2]}"
        echo "| \`$alias_name\` | \`$alias_command\` |" >> "$OUTPUT_FILE"
      fi
    done

    echo "" >> "$OUTPUT_FILE"
  fi
done

# Make the inventory file more readable by adding a navigation section
echo "## Navigation" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Quick links to sections:" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for file in "${ALIASES_DIR}"/*.sh; do
  if [ -f "$file" ]; then
    filename=$(basename "$file")
    # Create anchor links that work in Markdown
    anchor=$(echo "$filename" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g')
    echo "- [$filename](#$anchor)" >> "$OUTPUT_FILE"
  fi
done

echo "" >> "$OUTPUT_FILE"
echo "## Maintenance" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "The alias inventory is automatically updated. You can:" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "- Run \`generate-alias-inventory\` to update this file manually" >> "$OUTPUT_FILE"
echo "- View historical snapshots in \`/projects/templates/ahmyzsh/tools/alias-history/\`" >> "$OUTPUT_FILE"
echo "- Use \`find-alias [name]\` to search for a specific alias" >> "$OUTPUT_FILE"
echo "- Run \`alias-maintenance\` to check for potential issues" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "---" >> "$OUTPUT_FILE"
echo "Generated by alias-inventory-enhanced.sh script" >> "$OUTPUT_FILE"

chmod +x "$0"

echo "Enhanced alias inventory has been created at $OUTPUT_FILE"
echo "Historical snapshot saved to $HISTORY_DIR/inventory_$TIMESTAMP.md"
