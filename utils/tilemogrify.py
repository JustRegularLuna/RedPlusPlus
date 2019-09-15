#!/usr/bin/env python2
# -*- coding: utf-8 -*-

from __future__ import print_function, division

import sys
import os.path
import time
from PIL import Image

IMAGES = [
	('notes/map stitches/Red++Kanto.png', 'Kanto.png'),
	('notes/map stitches/Red++Johto.png', 'Johto.png'),
	#('notes/map stitches/Red++KantoNight.png', 'KantoNight.png'),
	#('notes/map stitches/Red++JohtoNight.png', 'JohtoNight.png'),
]

REPLACEMENTS = [
	# The road metatile has to come first, since it uses the dirt tile
	('old-road.png', 'new-road.png'),
	('old-dirt.png', 'new-dirt.png'),
	('old-dark-dirt.png', 'new-dark-dirt.png'),
	#('old-road-nite.png', 'new-road-nite.png'),
	#('old-dirt-nite.png', 'new-dirt-nite.png'),
	#('old-dark-dirt-nite.png', 'new-dark-dirt-nite.png'),
]

class TiledImage(object):

	def __init__(self, filename):
		self._image = Image.open(filename)
		self._palette = {}
		if self._image.mode == 'P':
			for i in range(len(self._image.palette.palette) // 3):
				rgb = self.get_palette_rgb(i)
				self._palette[rgb] = i

	def get_palette_rgb(self, i):
		rgb = self._image.palette.palette[i*3:i*3+3]
		if type(rgb) == str:
			rgb = map(ord, rgb)
		return tuple(rgb)

	def get_pixel_rgb(self, x, y):
		px = self._image.getpixel((x, y))
		if self._palette:
			px = self.get_palette_rgb(px)
		return px

	def set_pixel_rgb(self, x, y, rgb):
		if self._palette:
			rgb = self._palette[rgb]
		self._image.putpixel((x, y), rgb)

	def get_tile(self, x, y, size):
		return tuple(tuple(
			self.get_pixel_rgb(x*size+dx, y*size+dy) for dx in range(size)
		) for dy in range(size))

	def save_as(self, filename):
		self._image.save(filename, 'PNG')

	def as_tile(self):
		return self.get_tile(0, 0, self._image.size[0])

	def replace_tile(self, old, new):
		old_tile = old.as_tile()
		new_tile = new.as_tile()
		size = old.width()
		for ty in range(self._image.size[1] // size):
			for tx in range(self._image.size[0] // size):
				tile = self.get_tile(tx, ty, size)
				if tile == old_tile:
					self._set_tile(tx * size, ty * size, new_tile)

	def _set_tile(self, x, y, tile):
		for dy, row in enumerate(tile):
			for dx, rgb in enumerate(row):
				self.set_pixel_rgb(x + dx, y + dy, rgb)

def format_time(s):
	m = int(s) // 60
	s -= m * 60
	return '%dm %.2fs' % (m, s)

def main():
	print('Transmogrifying', len(IMAGES), 'images')
	start_all = time.time()

	tiles = {}
	for (old, new) in REPLACEMENTS:
		tiles[old], tiles[new] = TiledImage(old), TiledImage(new)

	for (old_name, new_name) in IMAGES:
		print('Transmogrify', old_name, '...')
		start = time.time()
		image = TiledImage(old_name)
		for (old, new) in REPLACEMENTS:
			old_tile, new_tile = tiles[old], tiles[new]
			image.replace_tile(old_tile, new_tile)
		image.save_as(new_name)
		end = time.time()
		print('Saved', new_name, 'after', format_time(end - start))

	end_all = time.time()
	print('Finished', new_name, 'after', format_time(end_all - start_all))

if __name__ == '__main__':
	main()
