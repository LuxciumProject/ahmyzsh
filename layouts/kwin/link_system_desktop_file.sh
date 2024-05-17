#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Define the path to the applications folder
target_apps_dir="/usr/share/applications/"

# Get the path to the .desktop file as an argument
desktop_file_path="${1:-}"

if [[ -z "$desktop_file_path" ]]; then
  echo "Error: No file path specified."
  exit 1
fi

# Check if the path is valid
if [[ ! -f "$desktop_file_path" ]]; then
  echo "Error: The specified file does not exist."
  exit 1
fi

# Get the name of the .desktop file
desktop_file_name="$(basename "$desktop_file_path")"

# Check if the symlink already exists in the system-level applications folder
echo "Checking if symlink exists at: $target_apps_dir$desktop_file_name"
if [[ -L "$target_apps_dir$desktop_file_name" ]]; then
  echo -n "The symlink already exists. Do you want to override it? [y/N]: "
  read -r answer
  if [[ "$answer" == "y" ]]; then
    # Remove the existing symlink
    sudo rm "$target_apps_dir/$desktop_file_name"
  else
    exit 0
  fi
elif [[ -e "$target_apps_dir$desktop_file_name" ]]; then
  echo "Error: A file or directory with the name '$desktop_file_name' already exists in the system applications folder."
  exit 1
fi

# Create the symlink in the system-level applications folder
sudo ln -s "$desktop_file_path" "$target_apps_dir/$desktop_file_name"
