#!/usr/bin/env bash

# File name: "konsole-purple-loader.sh"
# File location "${AHMYZSH}/layouts/kwin/konsole-purple-loader.sh"

# Using KDE kstart5 to launch konsole with specific settings

true
APP_PATH="/usr/bin/konsole"
ICON_FILE="/home/luxcium/.local/share/icons/vscode-material-icon-theme/console.svg"
WM_CLASS="Purple_Console"

kstart5 --qwindowicon "${ICON_FILE}" --qwindowtitle "${WM_CLASS}" --windowclass "${WM_CLASS}" --title "Purple Konsole" --window "${WM_CLASS}" --currentdesktop --activate "${APP_PATH}" -- --profile "Luxcium"
