#!/usr/bin/env python3

import sys
import os
import tempfile
from PIL import Image
import argparse
import shutil

# ASCII_CHARS = "@%#*+=-:. "
# ASCII_CHARS = " .`^,:;Il!i><~+LQ0OZmwqpdbkhao*WMB8&%$#@"
ASCII_CHARS = " .`^\",:;Il!i><~+_-?][}{1░)(|\\/tfjrxnuvcz▒XYUJCLQ0OZmwqpdbkh▓ao*WMB8&%$#@█"
ASCII_CHARS = "`.░,░I░i░^░l░~░_░?░[░{░<▒+▒-▒]▒}▒1▒t▒j▒x▒u▒c▒/▓f▓r▓n▓v▓z▓Y▓J▓L▓0▓Z▓X█U█C█Q█O█m█o█W█8█%█#█%$#@"
ASCII_CHARS = ".`░^,░:;░Il░|!i>▒<~▒_-▒][▒{1▓/tfj▓xnuv▓xnuhao█*WB█8&%█$#@MB8&%$#@"
ASCII_CHARS= ".:-=+*#@"
# ASCII_CHARS= "@$#*+=-:."
ASCII_CHARS = " .`^\",:;Il!i><~+_-?][}{1)(|\\/tfjrxnuvczXYUJCLQ0OZmwqpdbkhao*WMB8&%$#@"
ASCII_CHARS = " .`^:´,<~>;+_-?][}{1)(|/XYUJCLQ0OZmwqpdbkhao*WMB8&%$#@"

#
# .`^,:;Il!i>.`░^,░:;░Il░|!i>▒<~▒_-▒][▒{1▓/tfj▓xnuv▓xnuhao█*WB█8&%█$#@
# ao*WB8&%$#@ // <~+LQ0OZmwqpdbkhao*WMB8&%$#@"
#
CHAR_ASPECT_RATIO = 2.25
def rgb_to_escape(r, g, b):
    return f"\033[38;2;{r};{g};{b}m"

def hex_dump(hex_data, mode):
    address = 0
    for i in range(0, len(hex_data), 48):
        line_data = hex_data[i:i + 48]

        if mode == "dump":
            print(f"{address:08x}: ", end="")

        address += 1

        for j in range(0, len(line_data), 6):
            hex_color = line_data[j:j + 6]
            b, g, r = [int(hex_color[k:k + 2], 16) for k in (0, 2, 4)]
            color_escape = rgb_to_escape(r, g, b)
            print(f"{color_escape}{r:02x}{g:02x}{b:02x}", end=" ")

        if mode == "dump":
            print("\033[0m  |", end="")
            for j in range(0, len(line_data), 6):
                r = int(line_data[j + 4:j + 6], 16)
                color_escape = rgb_to_escape(r, g, b)
                ascii_char = chr(r) if 32 <= r <= 126 else "."
                print(f"{color_escape}{ascii_char}", end="")
            print("\033[0m|", end="")

        print()

def ascii_art(image):
    columns, rows = shutil.get_terminal_size()
    aspect_ratio = image.width / image.height
    char_aspect_ratio = CHAR_ASPECT_RATIO
    new_width = columns
    new_height = int(new_width / (aspect_ratio * char_aspect_ratio))
    resized_image = image.resize((new_width, new_height))

    for y in range(resized_image.height):
        for x in range(resized_image.width):
            r, g, b = resized_image.getpixel((x, y))
            grayscale_value = int(0.2989 * r + 0.5870 * g + 0.1140 * b)
            ascii_char = ASCII_CHARS[int(grayscale_value / 256 * len(ASCII_CHARS))]
            color_escape = rgb_to_escape(r, g, b)
            print(f"{color_escape}{ascii_char}", end="")
        print("\033[0m")

def main():
    parser = argparse.ArgumentParser(description="Convert an image to colored hex or ASCII art.")
    parser.add_argument("input_image", help="The input image file.")
    parser.add_argument("--mode", choices=["hex", "dump", "ascii"], default="dump", help="Output mode: 'hex' (hex only), 'dump' (hex dump), 'ascii' (ASCII art).")
    args = parser.parse_args()

    input_image = args.input_image
    mode = args.mode

    with Image.open(input_image) as img:
        if mode != "ascii":
            with tempfile.NamedTemporaryFile(suffix=".bmp", delete=False) as tmp_bmp:
                img.save(tmp_bmp.name, "BMP")

            with open(tmp_bmp.name, "rb") as f:
                bmp_data = f.read()

            os.unlink(tmp_bmp.name)

            hex_data = bmp_data[54:].hex()
            hex_dump(hex_data, mode=mode)
        else:
            ascii_art(img)

if __name__ == "__main__":
    main()
