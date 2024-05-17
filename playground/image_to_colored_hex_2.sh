#!/bin/bash

# Check if the input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_image>"
    exit 1
fi

input_image="$1"
tmp_bmp="/tmp/converted_image.bmp"

# Convert the input image to BMP format
convert "$input_image" "$tmp_bmp"

# Function to convert RGB to terminal 24-bit color escape sequence
rgb_to_escape() {
    printf "\033[38;2;%s;%s;%sm" "$1" "$2" "$3"
}

# Read the BMP file in binary mode
hex_data=$(xxd -p -c 1 -l -1 "$tmp_bmp" | tr -d '\n')

# Remove the BMP header (54 bytes)
hex_data="${hex_data:108}"

# Process the hex data and print it with appropriate colors
address=0
for ((i = 0; i < ${#hex_data}; i += 6)); do
    # Print address at the beginning of each line
    if ((i % 48 == 0)); then
        printf "\n%08x: " "$((address++))"
    fi

    hex_color="${hex_data:i:6}"

    # Extract and reverse the RGB values
    b="${hex_color:0:2}"
    g="${hex_color:2:2}"
    r="${hex_color:4:2}"

    # Convert hexadecimal to decimal
    r_dec=$((16#$r))
    g_dec=$((16#$g))
    b_dec=$((16#$b))

    # Set the text color based on the RGB values and print the hex_color
    color_escape=$(rgb_to_escape "$r_dec" "$g_dec" "$b_dec")
    printf "%s%s%s%s " "$color_escape" "$r" "$g" "$b"
    if ((i % 48 == 42)); then
        printf "\033[0m  |"
        for ((j = i - 42; j <= i; j += 6)); do
            hex_color="${hex_data:j:6}"
            b="${hex_color:0:2}"
            g="${hex_color:2:2}"
            r="${hex_color:4:2}"
            r_dec=$((16#$r))
            g_dec=$((16#$g))
            b_dec=$((16#$b))
            color_escape=$(rgb_to_escape "$r_dec" "$g_dec" "$b_dec")
            ascii_char="."
            if [[ $r_dec -ge 32 && $r_dec -le 126 ]]; then
                ascii_char=$(printf "\\$(printf '%03o' "$r_dec")")
            fi
            printf "%s%s" "$color_escape" "$ascii_char"
        done
        printf "\033[0m|"
    fi
done

# Reset terminal color and remove the temporary BMP file
printf "\033[0m\n"
rm "$tmp_bmp"
