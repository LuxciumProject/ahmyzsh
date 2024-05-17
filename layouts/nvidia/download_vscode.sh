#!/bin/bash

# Define constants for script configuration
DOWNLOAD_URL="https://code.visualstudio.com/sha/download?build=stable&os=linux-x64"
TEMP_DIR="/tmp/vscode_download"
FINAL_DIR="$HOME/VSCodePortable"
ARCHIVE_NAME="vscode.tar.gz"

# Define logging functions with color and icons
log_info() {
    echo -e "\033[0;36mℹ️ [INFO]: $1\033[0m"
}

log_success() {
    echo -e "\033[0;32m✅ [SUCCESS]: $1\033[0m"
}

log_warning() {
    echo -e "\033[0;33m⚠️ [WARNING]: $1\033[0m"
}

log_error() {
    echo -e "\033[0;31m❌ [ERROR]: $1\033[0m"
    exit 1
}

# Check for necessary tools
check_tools() {
    log_info "Checking required tools..."
    command -v wget >/dev/null 2>&1 || log_error "wget is required but not installed."
    command -v tar >/dev/null 2>&1 || log_error "tar is required but not installed."
}

# Download VS Code
download_vscode() {
    log_info "Downloading VS Code..."
    mkdir -p "${TEMP_DIR}" && cd "${TEMP_DIR}" || exit
    wget -O "${ARCHIVE_NAME}" "${DOWNLOAD_URL}" || log_error "Failed to download VS Code."
}

# Extract VS Code
extract_vscode() {
    log_info "Extracting VS Code..."
    tar -xzf "${ARCHIVE_NAME}" || log_error "Failed to extract VS Code."
}

# Make VS Code portable
make_portable() {
    log_info "Configuring VS Code for portable use..."
    mkdir -p "VSCode-linux-x64/data" && touch "VSCode-linux-x64/data/.vscode-portable"
}

# Move VS Code to the final directory
move_vscode() {
    if [ -d "${FINAL_DIR}" ]; then
        log_warning "VS Code directory already exists at the final location. Creating a backup."
        mv "${FINAL_DIR}" "${FINAL_DIR}_backup_$(date +%Y%m%d%H%M%S)" || log_error "Failed to backup existing VS Code directory."
    fi
    log_info "Moving VS Code to the final location..."
    mv "VSCode-linux-x64" "${FINAL_DIR}" || log_error "Failed to move VS Code to the final location."
}

# Main function to orchestrate the script
main() {
    check_tools
    download_vscode
    extract_vscode
    make_portable
    move_vscode
    log_success "VS Code has been successfully prepared for portable use at ${FINAL_DIR}."
}

# Execute the main function
main
