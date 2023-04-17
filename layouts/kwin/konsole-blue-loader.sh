#!/usr/bin/env bash

# File name: "konsole-blue-loader.sh"
# File location "${AHMYZSH}/layouts/kwin/konsole-blue-loader.sh"

# Using KDE kstart5 to launch Visual Studio Code with a specific project

true
APP_PATH="/usr/bin/konsole"
ICON_FILE="/home/luxcium/.local/share/icons/vscode-material-icon-theme/console.svg"
WM_CLASS="°Blue Console°"

kstart5 --qwindowicon "${ICON_FILE}" --qwindowtitle "${WM_CLASS}" --windowclass "${WM_CLASS}" --window "${WM_CLASS}" --currentdesktop --activate "${APP_PATH}" -- --profile "Dolphin"
