#!/usr/bin/env bash

# Function to create the config file
create_config() {
    local config_dir="$1"
    local emoji_subset="$2"

    # Verify if the given directory exists, if not create it
    mkdir -p "$config_dir"

    # Use a heredoc for cleaner output redirection
    cat >"$config_dir/emojirc" <<-EOM
[Emoji Theme]
EmojiFont=$emoji_subset
EmojiFontMap=
EOM

    # Add EmojiFontMap based on the selected emoji subset
    case "$emoji_subset" in
    apple)
        echo "AppleEmoji;apple" >>"$config_dir/emojirc"
        ;;
    windows)
        echo "Segoe UI Emoji;windows" >>"$config_dir/emojirc"
        ;;
    twitter)
        echo "Twitter Color Emoji;twitter" >>"$config_dir/emojirc"
        ;;
    *)
        echo "EmojiOne Color" >>"$config_dir/emojirc"
        ;;
    esac
}

# Function to download necessary font files
download_fonts() {
    local font_dir="$1"
    local emoji_subset="$2"

    # Verify if the given directory exists, if not create it
    mkdir -p "$font_dir"

    # Download the font files based on the selected emoji subset
    case "$emoji_subset" in
    apple)
        url_prefix="https://github.com/googlefonts/noto-emoji/raw/main/fonts/"
        curl -L -o "$font_dir/AppleColorEmoji.ttf" "${url_prefix}NotoColorEmoji.ttf"
        curl -L -o "$font_dir/AppleColorEmoji-SB.ttf" "${url_prefix}NotoColorEmoji-SB.ttf"
        ;;
    windows)
        # Use an appropriate URL for the Segoe UI Emoji font
        url="https://example.com/SegoeUIEmoji.ttf"
        curl -L -o "$font_dir/SegoeUIEmoji.ttf" "$url"
        ;;
    twitter)
        url="https://github.com/eosrei/twemoji-color-font/releases/download/v13.0.1/TwitterColorEmoji-SVGinOT.ttf"
        curl -L -o "$font_dir/TwitterColorEmoji.ttf" "$url"
        ;;
    *)
        echo "No font files need to be downloaded"
        ;;
    esac
}

# Function to validate if necessary font files are present
validate_fonts() {
    local font_dir="$1"
    local emoji_subset="$2"

    # Validate the font files based on the selected emoji subset
    case "$emoji_subset" in
    apple)
        if [ ! -f "$font_dir/AppleColorEmoji.ttf" ] || [ ! -f "$font_dir/AppleColorEmoji-SB.ttf" ]; then
            echo "ERROR: Apple font files are missing"
            exit 1
        fi
        ;;
    windows)
        if [ ! -f "$font_dir/SegoeUIEmoji.ttf" ]; then
            echo "ERROR: Segoe UI font file is missing"
            exit 1
        fi
        ;;
    twitter)
        if [ ! -f "$font_dir/TwitterColorEmoji.ttf" ]; then
            echo "ERROR: Twitter font file is missing"
            exit 1
        fi
        ;;
    *)
        echo "No font files need to be validated"
        ;;
    esac
}

# Check if the required number of arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <config_directory> <font_directory> <emoji_subset>"
    exit 1
fi

# Get the directory path where the config file and font files will be stored
config_dir="$1"
font_dir="$2"

# Get the subset of emojis to be used
emoji_subset="$3"

# Create the config file
create_config "$config_dir" "$emoji_subset"

# Download necessary font files
download_fonts "$font_dir" "$emoji_subset"

# Validate if necessary font files are present
validate_fonts "$font_dir" "$emoji_subset"
