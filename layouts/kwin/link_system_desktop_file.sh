#!/usr/bin/env bash

# Get the path to the .desktop file as an argument
desktop_file_path="$1"

# Check if the path is valid
if [[ ! -f "$desktop_file_path" ]]; then
  echo "Error: The specified file does not exist."
  exit 1
fi

# Get the name of the .desktop file
desktop_file_name="$(basename "$desktop_file_path")"

# Define the path to the system-level applications folder
system_apps_dir="/usr/share/applications/"

# Check if the symlink already exists in the system-level applications folder
if [[ -f "$system_apps_dir/$desktop_file_name" ]]; then
  echo -n "The symlink already exists. Do you want to override it? [y/N]: "
  read -r answer
  if [[ "$answer" == "y" ]]; then
    # Remove the existing symlink
    sudo rm "$system_apps_dir/$desktop_file_name"
  else
    exit 0
  fi
fi

# Create the symlink in the system-level applications folder
sudo ln -s "$desktop_file_path" "$system_apps_dir/$desktop_file_name"
