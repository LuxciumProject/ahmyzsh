#!/usr/bin/env bash

# Replace these variables with the appropriate values for your installation
PORTABLE_VSCODE_DIR="${HOME}/main-vscode"
DOWNLOAD_URL="https://code.visualstudio.com/sha/download?build=stable\&os=linux-x64"

mkdir -p "$PORTABLE_VSCODE_DIR"
cd "$PORTABLE_VSCODE_DIR" || exit 10

# If the -y flag is provided, automatically close any running instances of VS Code
if [[ $1 == "-y" ]]; then
    echo "Closing any running instances of VS Code..."
    pkill -f "Visual Studio Code" -15
    sleep 1

else
    # Ask for confirmation before proceeding
    pwd
    while true; do
        read -rp "Are you sure you want to update VS Code? [Y/n] " yn
        case $yn in
        [OoYy]* | "") # Acceptable affirmative answers in English or French
            echo "Closing any running instances of VS Code..."
            for i in {5..1}; do
                echo -n " $i"
                sleep 1
            done
            echo ""
            pkill -f "Visual Studio Code" -15
            sleep 1
            break
            ;;
        [Nn]*) # Any answer starting with N or n is not acceptable
            exit 0 ;;
        *) # Any other answer will prompt for a re-ask
            echo "Please answer Y or n." ;;
        esac
    done
fi

# Commit changes to git repository

if [[ -d .git ]]; then
    git add .
    git commit -am "Will Update VS Code on $(date +'%Y-%m-%d %H:%M:%S')"
fi

# Create backup folder and move contents
backup_folder=$(find "${PORTABLE_VSCODE_DIR}" -maxdepth 1 -type d -name "backup-*" 2>/dev/null | sort -r | head -n 1)
if [[ -z $backup_folder ]]; then
    backup_folder="$HOME/main-vscode/backup-001~"
else
    last_num=$(echo "$backup_folder" | sed -n 's/.*backup-\(.*\)~\/.*/\1/p')
    new_num=$(printf '%03d' $((10#$last_num + 1)))
    backup_folder=${backup_folder/~/$new_num}
fi

echo "Creating backup directory: $backup_folder"
mkdir -p "$backup_folder"
cp -r "${PORTABLE_VSCODE_DIR}"/!(.git) "$backup_folder"

# Move back necessary files from backup folder
cp -r "$backup_folder/data" "$PORTABLE_VSCODE_DIR"
cp "$backup_folder/code-outlined-logo.svg" "$PORTABLE_VSCODE_DIR"
cp "$backup_folder"/.directory "$PORTABLE_VSCODE_DIR"

# Remove content inside main folder's user-data folder except for User folder
rm -rf "${PORTABLE_VSCODE_DIR}"/data/user-data/!(User)

# download the latest version of VSCode
echo "Downloading latest version of VS Code..."
latest_url=$(curl -s "$DOWNLOAD_URL" | grep -Eo 'https://.*\.tar\.gz')
wget "$latest_url" -P "${PORTABLE_VSCODE_DIR}"

# extract the downloaded file
echo "Extracting VS Code files to temporary directory..."
tar -xzvf "${PORTABLE_VSCODE_DIR}/"*.tar.gz -C "${PORTABLE_VSCODE_DIR}/"

# move all the content from the extracted folder to the parent folder
echo "Moving files to portable installation directory..."
mv "${PORTABLE_VSCODE_DIR}/VSCode-linux-x64/"* "${PORTABLE_VSCODE_DIR}/"

# remove the extracted folder
echo "Cleaning up temporary files..."
rmdir "${PORTABLE_VSCODE_DIR}/VSCode-linux-x64"
rm -f code-stable-x64-*.tar.gz

if [[ -d .git ]]; then
    git add .
    git commit -am "Did Update VS Code to $(basename "$latest_url")"
fi
echo "Update complete."
