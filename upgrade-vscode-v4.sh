#!/usr/bin/env bash

# Enable shell options for safety and robustness
set -euo pipefail
shopt -s extglob
# Constants and important variables

readonly VSCODE_DIR_NAME="main-vscode"
readonly PORTABLE_VSCODE_BASE="${HOME}"
readonly PORTABLE_VSCODE_DIR="${PORTABLE_VSCODE_BASE}/${VSCODE_DIR_NAME}"
readonly DOWNLOAD_URL="https://code.visualstudio.com/sha/download?build=stable\&os=linux-x64"
readonly BACKUP_FOLDER_PREFIX="backup-"

# Define constants
readonly CODE_PROCESS_NAME="code"
readonly WAIT_TIME_SECONDS=1

# Define functions
function close_running_instances {
    echo "Closing any running instances of VS Code..."
    set +e
    killall -s 15 "$CODE_PROCESS_NAME"
    sleep "$WAIT_TIME_SECONDS"
    set -e
}

# Function to backup the current installation
backup_vscode() {
    # Find the latest backup directory and create a new one
    local backup_folder
    local temp_dir
    local backup_temp_dir
    local base_tmp_folder
    local tmp_download_folder
    umask 077 # Set secure permissions for the temporary directory
    temp_dir=$(mktemp -d)

    tmp_download_folder="${temp_dir}"/new_vscode
    backup_folder=$(find "${PORTABLE_VSCODE_DIR}" -maxdepth 1 -type d -name "${BACKUP_FOLDER_PREFIX}*" 2>/dev/null | sort -r | head -n 1)
    if [[ -z "$backup_folder" ]]; then
        backup_folder="${PORTABLE_VSCODE_DIR}/${BACKUP_FOLDER_PREFIX}001~"
    else
        local last_num new_num
        last_num=$(echo "$backup_folder" | sed -n 's/.*'"${BACKUP_FOLDER_PREFIX}"'\([0-9]*\)~.*/\1/p')
        if ! [[ "$last_num" =~ ^[0-9]+$ ]]; then
            echo "Error: Invalid backup folder last_num: '${last_num}' name '${backup_folder}'"
            return 1
        fi
        new_num=$(printf '%03d' $((10#$last_num + 1)))
        backup_folder="${PORTABLE_VSCODE_DIR}/${BACKUP_FOLDER_PREFIX}${new_num}~"
    fi
    echo "Creating backup directory: $backup_folder"
    base_tmp_folder="${temp_dir}"/"${VSCODE_DIR_NAME}"
    backup_temp_dir="${base_tmp_folder}"/"$(basename "$backup_folder")"

    mkdir -p "${base_tmp_folder}"
    mkdir -p "${backup_temp_dir}"

    cp -r "${PORTABLE_VSCODE_DIR}/." "$backup_temp_dir"
    echo "${backup_temp_dir}"
    mv "${backup_temp_dir}"/.git "${base_tmp_folder}"
    cp "${backup_temp_dir}"/.directory "${base_tmp_folder}"
    cp "${backup_temp_dir}"/code-outlined-logo.svg "${base_tmp_folder}"
    cp -r "${backup_temp_dir}"/data/user-data/User "${backup_temp_dir}"
    cp -r "${backup_temp_dir}"/data "${base_tmp_folder}"
    rm -fr "${base_tmp_folder}"/data/user-data/
    mkdir "${base_tmp_folder}"/data/user-data/
    mv "${backup_temp_dir}"/User "${base_tmp_folder}"/data/user-data/

    mkdir -p "${tmp_download_folder}"

    echo "Downloading latest version of VS Code..."
    latest_url=$(curl -s "$DOWNLOAD_URL" | grep -Eo 'https://.*\.tar\.gz')
    wget "$latest_url" -P "${tmp_download_folder}"

    tar -xzvf "${tmp_download_folder}/"*.tar.gz -C "${tmp_download_folder}"
    echo "Moving files to portable installation directory..."
    rsync -av --progress "${tmp_download_folder}"/VSCode-linux-x64/ "${base_tmp_folder}/"
    rm -fr "${tmp_download_folder}"
    cd "${PORTABLE_VSCODE_BASE}" || exit 11
    rm -fr "${VSCODE_DIR_NAME}"
    rsync -av --progress "${base_tmp_folder}" "${PORTABLE_VSCODE_BASE}" || exit 13
    rm -fr "${temp_dir}" && return 0
}

confirm_update() {
    # If the -y flag is provided, automatically close any running instances of VS Code
    if [[ "${1:-}" == "-y" ]]; then
        if pgrep "$CODE_PROCESS_NAME" >/dev/null; then
            close_running_instances
        else
            echo "VS Code is not running. Will continue"
        fi
    else
        # Ask for confirmation before proceeding
        pwd
        while true; do
            read -rp "Are you sure you want to update VS Code? [Y/n] " yn
            case $yn in
            [OoYy]* | "") # Acceptable affirmative answers in English or French

                if pgrep "$CODE_PROCESS_NAME" >/dev/null; then
                    echo "Will close any running instances of VS Code..."
                    for i in {5..1}; do
                        echo -n " $i"
                        sleep 1
                    done
                    echo ""
                    close_running_instances
                else
                    echo "VS Code is not running. Will continue"
                fi
                break
                ;;
            [Nn]*) # Any answer starting with N or n is not acceptable
                echo -e 'Exit before doing any modifications \b'
                exit 0
                ;;
            *) # Any other answer will prompt for a re-ask
                echo "Please answer Y or n." ;;
            esac
        done
    fi
}

# Create the installation directory if it doesn't exist, then move into it
mkdir -p "$PORTABLE_VSCODE_DIR"
cd "$PORTABLE_VSCODE_DIR" || exit 10

# Commit changes to git repository
if [[ -d .git ]]; then
    git add .
    git commit -q -am "Will Update VS Code on $(date +'%Y-%m-%d %H:%M:%S')"
fi

confirm_update "${1:-}" || exit
# Create backup folder and move contents
# Download vscode and move contents
backup_vscode

# download_vscode

if [[ -d .git ]]; then
    git add .
    git commit -am "Did Update VS Code to $(basename "$latest_url")"
fi
echo "Portable installation of VS Code updated successfully!"
