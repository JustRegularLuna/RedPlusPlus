#!/bin/python
# coding: utf-8

"""
Recursively scan an asm file for dependencies.
"""

import sys
import argparse
import os.path

includes = set()

def scan_file(filename):
	for line in open(filename):
		if 'INC' not in line:
			continue
		line = line.split(';')[0]
		if 'INCLUDE' in line:
			include = line.split('"')[1]
			if os.path.exists("src/"):
				includes.add("src/" + include)
				scan_file("src/" + include)
			else:
				includes.add(include)
				scan_file(include)
		elif 'INCBIN' in line:
			include = line.split('"')[1]
			if 'baserom.gbc' not in line and os.path.exists("src/"):
				includes.add("src/" + include)
			else:
				includes.add(include)

def main():
	ap = argparse.ArgumentParser()
	ap.add_argument('filenames', nargs='*')
	args = ap.parse_args()
	for filename in set(args.filenames):
		scan_file(filename)
	sys.stdout.write(' '.join(includes))

if __name__ == '__main__':
	main()
