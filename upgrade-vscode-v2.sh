#!/usr/bin/env bash
set -euo pipefail

# Constants and important variables
readonly PORTABLE_VSCODE_DIR="${HOME}/main-vscode"
readonly DOWNLOAD_URL="https://code.visualstudio.com/sha/download?build=stable\&os=linux-x64"
readonly BACKUP_FOLDER_PREFIX="backup-"

mkdir -p "$PORTABLE_VSCODE_DIR"
cd "$PORTABLE_VSCODE_DIR" || exit 10

# Functions
backup_vscode() {
    local backup_folder
    backup_folder=$(find "${PORTABLE_VSCODE_DIR}" -maxdepth 1 -type d -name "${BACKUP_FOLDER_PREFIX}*" 2>/dev/null | sort -r | head -n 1)
    if [[ -z $backup_folder ]]; then
        backup_folder="${PORTABLE_VSCODE_DIR}/${BACKUP_FOLDER_PREFIX}001~"
    else
        local last_num new_num
        last_num=$(echo "$backup_folder" | sed -n 's/.*backup-\(.*\)~\/.*/\1/p')
        new_num=$(printf '%03d' $((10#$last_num + 1)))
        backup_folder=${backup_folder/~/$new_num}
    fi

    echo "Creating backup directory: $backup_folder"
    mkdir -p "$backup_folder"
    cp -r "${PORTABLE_VSCODE_DIR}"/!(.git) "$backup_folder"

    echo "Moving files back from backup folder..."
    cp -r "$backup_folder/data" "$PORTABLE_VSCODE_DIR"
    cp "$backup_folder/code-outlined-logo.svg" "$PORTABLE_VSCODE_DIR"
    cp "$backup_folder"/.directory "$PORTABLE_VSCODE_DIR"
    rm -rf "${PORTABLE_VSCODE_DIR}"/data/user-data/!(User)
}

download_vscode() {
    echo "Downloading latest version of VS Code..."

    # Download the latest version of VSCode
    latest_url=$(curl -s "$DOWNLOAD_URL" | grep -Eo 'https://.*\.tar\.gz')
    wget "$latest_url" -P "${PORTABLE_VSCODE_DIR}"

    # Extract the downloaded file
    echo "Extracting VS Code files to temporary directory..."
    temp_dir=$(mktemp -d)
    tar -xzvf "${PORTABLE_VSCODE_DIR}/"*.tar.gz -C "$temp_dir"

    # Move all the content from the extracted folder to the parent folder
    echo "Moving files to portable installation directory..."
    rsync -av --progress "$temp_dir"/VSCode-linux-x64/ "${PORTABLE_VSCODE_DIR}/"

    # Remove the extracted folder and downloaded file
    echo "Cleaning up temporary files..."
    rm -rf "$temp_dir"
    rm -f "${PORTABLE_VSCODE_DIR}/"*.tar.gz
}

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
backup_vscode

# Download vscode and move contents
download_vscode

if [[ -d .git ]]; then
    git add .
    git commit -am "Did Update VS Code to $(basename "$latest_url")"
fi
echo "Portable installation of VS Code updated successfully!"
