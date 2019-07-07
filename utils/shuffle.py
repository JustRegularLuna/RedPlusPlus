#!/usr/bin/env python
# -*- coding: utf-8 -*-

from __future__ import print_function

"""
Moves tiles around in tilesets, updating their metatiles.bin and attributes.bin files.
"""

tilesets = 'pallet_cinnabar viridian pewter cerulean vermilion celadon lavender cycling_road fuchsia saffron indigo forest new_bark_cherrygrove violet_mahogany azalea_blackthorn olivine_cianwood goldenrod ecruteak battle_tower_outside national_park shrines_ruins_outside'.split()

# {old (bank,tile): new (bank,tile), ...}
shuffles = {
(0,0x00):(0,0x00),
}

BANK1 = 1 << 3

def process_tileset(name):
	metatiles_path = 'data/tilesets/%s_metatiles.bin' % name
	attributes_path = 'data/tilesets/%s_attributes.bin' % name

	with open(metatiles_path, 'rb') as f:
		metatile_data = map(ord, f.read())
	with open(attributes_path, 'rb') as f:
		attribute_data = map(ord, f.read())

	for i, tid in enumerate(metatile_data):
		attr = attribute_data[i]
		bank = 1 if attr & BANK1 else 0
		key = (bank, tid)
		bank, tid = shuffles.get(key, key)
		if bank:
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
	for tileset_name in tilesets:
		print(tileset_name)
		process_tileset(tileset_name)

if __name__ == '__main__':
	main()
