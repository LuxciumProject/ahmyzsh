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

# Define the path to the user-level applications folder
user_apps_dir="$HOME/.local/share/applications/"

# Check if the symlink already exists in the user-level applications folder
if [[ -f "$user_apps_dir/$desktop_file_name" ]]; then
  echo "The symlink already exists. Do you want to override it? [y/n]"
  read -r answer
  if [[ "$answer" == "y" ]]; then
    # Remove the existing symlink
    rm "$user_apps_dir/$desktop_file_name"
  else
    exit 0
  fi
fi

# Create the symlink in the user-level applications folder
ln -s "$desktop_file_path" "$user_apps_dir/$desktop_file_name"
