#!/usr/bin/env python3

import sys
import os
import tempfile
from PIL import Image
from io import BytesIO
import argparse

def rgb_to_escape(r, g, b):
    return f"\033[38;2;{r};{g};{b}m"

def hex_dump(hex_data, hex_only=False):
    address = 0
    for i in range(0, len(hex_data), 48):
        line_data = hex_data[i:i + 48]

        if not hex_only:
            print(f"{address:08x}: ", end="")

        address += 1

        for j in range(0, len(line_data), 6):
            hex_color = line_data[j:j + 6]
            b, g, r = [int(hex_color[k:k + 2], 16) for k in (0, 2, 4)]
            color_escape = rgb_to_escape(r, g, b)
            print(f"{color_escape}{r:02x}{g:02x}{b:02x}", end=" ")

        if not hex_only:
            print("\033[0m  |", end="")
            for j in range(0, len(line_data), 6):
                r = int(line_data[j + 4:j + 6], 16)
                color_escape = rgb_to_escape(r, g, b)
                ascii_char = chr(r) if 32 <= r <= 126 else "."
                print(f"{color_escape}{ascii_char}", end="")
            print("\033[0m|", end="")

        print()

def main():
    parser = argparse.ArgumentParser(description="Convert an image to colored hex.")
    parser.add_argument("input_image", help="The input image file.")
    parser.add_argument("--hex-only", action="store_true", help="Display hex values only.")
    args = parser.parse_args()

    input_image = args.input_image
    hex_only = args.hex_only

    with Image.open(input_image) as img:
        with tempfile.NamedTemporaryFile(suffix=".bmp", delete=False) as tmp_bmp:
            img.save(tmp_bmp.name, "BMP")

    with open(tmp_bmp.name, "rb") as f:
        bmp_data = f.read()

    os.unlink(tmp_bmp.name)

    hex_data = bmp_data[54:].hex()
    hex_dump(hex_data, hex_only=hex_only)

if __name__ == "__main__":
    main()
