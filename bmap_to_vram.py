#!/usr/bin/env python3

# This file converts a bitmap file (160x120x32) to a file ready for VLOAD

import sys

assert len(sys.argv) > 1

input_file_name = sys.argv[1]
input_file_handle = open(input_file_name, 'rb')  # Open file for reading

# Read file header
data = input_file_handle.read(83254)   # 160x130x4 bytes

# Verify integrity of file header
assert data[0] == 0x42 #B
assert data[1] == 0x4D #M

# Verify file size
assert int.from_bytes(data[2:6], byteorder='little') == 0x014536

# Get offset of bitmap
assert int.from_bytes(data[10:14], byteorder='little') == 0x36

# Verify length of DIB header
assert int.from_bytes(data[14:18], byteorder='little') == 0x28

# Verify image size
assert int.from_bytes(data[18:22], byteorder='little') == 160
assert int.from_bytes(data[22:26], byteorder='little') == 130

# Verify number of colour planes
assert int.from_bytes(data[26:28], byteorder='little') == 1

# Verify colour depth
assert int.from_bytes(data[28:30], byteorder='little') == 32

# Verify no compression
assert int.from_bytes(data[30:34], byteorder='little') == 0

# Verify image size
assert int.from_bytes(data[34:38], byteorder='little') == 0x014500

output_file_name = 'VRAM'+input_file_name[5:10]+'.BIN'
output_file_handle = open(output_file_name, 'wb')  # Open file for writing

for row in reversed(range(120)):
    for col in range(160):
        offset = 54 + (row*160 + col)*4
        (r,g,b,a) = data[offset:offset+4]
        # Convert 32-bit RGB to 8-bit colour palette
        val = (r//32)*32 + (g//32)*4 + (b//64)
        output_file_handle.write(bytes([val]))
    for col in range(640-160):
        output_file_handle.write(bytes([0]))

output_file_handle.close()

