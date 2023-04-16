#!/usr/bin/env bash

# Reload system-level .desktop files
sudo update-desktop-database

# Reload user-level .desktop files
update-desktop-database ~/.local/share/applications/
