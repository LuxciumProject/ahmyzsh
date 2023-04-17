#!/bin/bash

# Define the initial colors as ANSI color codes
# color_array=(196 160 124 88 52)

# color_array=(196 160 124 88 52 52)
# color_array=(202 196 124 88 52 52)
# color_array=(172 166 124 88 52 52)
# color_array=(88 124 196 166 172 214) 172

banner=("            █████╗ ██╗  ██╗  ███╗   ███╗██╗   ██╗  ███████╗███████╗██╗  ██╗        "
    "           ██╔══██╗██║  ██║  ████╗ ████║╚██╗ ██╔╝  ╚══███╔╝██╔════╝██║  ██║        "
    "           ███████║███████║  ██╔████╔██║ ╚████╔╝     ███╔╝ ███████╗███████║        "
    "           ██╔══██║██╔══██║  ██║╚██╔╝██║  ╚██╔╝     ███╔╝  ╚════██║██╔══██║        "
    "           ██║  ██║██║  ██║  ██║ ╚═╝ ██║   ██║     ███████╗███████║██║  ██║        "
    "           ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═╝     ╚═╝   ╚═╝     ╚══════╝╚══════╝╚═╝  ╚═╝        " "")

# Define a function to convert a hex color to RGB values
hex_to_rgb() {
    hex=$1
    r=$(echo "ibase=16; $(echo "$hex" | cut -c1-2)" | bc)
    g=$(echo "ibase=16; $(echo "$hex" | cut -c3-4)" | bc)
    b=$(echo "ibase=16; $(echo "$hex" | cut -c5-6)" | bc)
    echo "$r $g $b"
}

# Define a function to calculate the average RGB values of an array of hex colors
average_rgb() {
    colors=("$@")
    r=0
    g=0
    b=0
    for color in "${colors[@]}"; do
        # shellcheck disable=SC2207
        rgb=($(hex_to_rgb "$color"))
        r=$((r + rgb[1]))
        g=$((g + rgb[2]))
        b=$((b + rgb[3]))
    done
    r=$((r / ${#colors[@]}))
    g=$((g / ${#colors[@]}))
    b=$((b / ${#colors[@]}))
    echo "$r $g $b"
}

# Define a function to convert RGB values to ANSI color codes
rgb_to_ansi() {
    r=$1
    g=$2
    b=$3
    color=$((16 + (36 * (r / 51)) + (6 * (g / 51)) + (b / 51)))
    echo $color
}

# Calculate the 6th color by taking the average RGB values of the given hex colors
colors=("#E62525" "#801414" "#CD2121" "#B31D1D" "#9A1919" "#801414" "#801414")
# Disable SC2207 warning for the following line
# shellcheck disable=SC2207
avg_rgb=($(average_rgb "${colors[@]}"))
# shellcheck disable=SC2207
color_array+=($(rgb_to_ansi "${avg_rgb[1]}" "${avg_rgb[2]}" "${avg_rgb[3]}"))

# Define a function to print the banner with the updated colors
print_banner() {
    local line_count=${#banner[@]}
    for ((i = 0; i < line_count; i++)); do
        color=${color_array[i]}
        line=${banner[i]}
        printf "\033[38;5;%dm%s\033[0m\n" "$color" "$line"
        sleep "${1}"
    done
    # printf "\n"
}

# Call the function to print the banner with the updated colors
print_banner 0.017
