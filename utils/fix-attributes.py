#!/usr/bin/env python
# -*- coding: utf-8 -*-

from __future__ import print_function

import sys

# ['tileset name', ...]
tileset_names = []
# {'tileset name': {old id: new id, ...}, ...}
tilesets_moved = {}
# {'tileset name': [tile id, ...], ...}
tilesets_xflipped = {}
# {'tileset name': [tile id, ...], ...}
tilesets_yflipped = {}

BANK1 = 1 << 3
XFLIP = 1 << 5
YFLIP = 1 << 6

def process_tileset(name):
	moved = tilesets_moved.get(name, {})
	xflipped = tilesets_xflipped.get(name, [])
	yflipped = tilesets_yflipped.get(name, [])

	metatiles_path = 'data/tilesets/%s_metatiles.bin' % name
	attributes_path = 'data/tilesets/%s_attributes.bin' % name

	with open(metatiles_path, 'rb') as f:
		metatile_data = map(ord, f.read())
	with open(attributes_path, 'rb') as f:
		attribute_data = map(ord, f.read())

	for i, tid in enumerate(metatile_data):
		attr = attribute_data[i]
		if tid in xflipped:
			attr |= XFLIP
		if tid in yflipped:
			attr |= YFLIP
		tid = moved.get(tid, tid)
		if tid >= 0x80:
			attr |= BANK1
		else:
			attr &= 0xff - BANK1
		metatile_data[i] = tid
		attribute_data[i] = attr

	with open(metatiles_path, 'wb') as f:
		for v in metatile_data:
			f.write(chr(v))
	with open(attributes_path, 'wb') as f:
		for v in attribute_data:
			f.write(chr(v))

def main():
	for tileset_name in sys.argv[1:]:
		print(tileset_name)
		process_tileset(tileset_name)

if __name__ == '__main__':
	main()
