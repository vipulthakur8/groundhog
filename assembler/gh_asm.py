#!/usr/bin/python3
import sys

# Checking if the source file is given or not.
if (len(sys.argv) <= 1):
	# if the source file is not given, system exits with notification
	sys.exit("Source file is not given")

src_file_len = len(sys.argv[1]) # source file name length

# Check the extension of the source file
if sys.argv[1][src_file_len-4:src_file_len] != ".asm":
	# if the extension is not ".asm", system exits with notification
	sys.exit("Source file must end with .asm")




