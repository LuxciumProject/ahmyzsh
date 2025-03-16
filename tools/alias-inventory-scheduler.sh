#!/bin/bash
# Scheduler script for automatic alias inventory updates

# Path to the log file
LOG_FILE="/projects/templates/ahmyzsh/tools/alias-inventory-scheduler.log"

# Record start time
echo "Starting alias inventory update at $(date)" >> "$LOG_FILE"

# Run the inventory script
/projects/templates/ahmyzsh/tools/alias-inventory-enhanced.sh >> "$LOG_FILE" 2>&1

# Run the maintenance script
/projects/templates/ahmyzsh/tools/alias-maintenance.sh >> "$LOG_FILE" 2>&1

# Record completion time
echo "Alias inventory update completed at $(date)" >> "$LOG_FILE"
echo "---------------------------------------------" >> "$LOG_FILE"

# This script can be added to crontab with:
# 0 0 * * * /projects/templates/ahmyzsh/tools/alias-inventory-scheduler.sh
