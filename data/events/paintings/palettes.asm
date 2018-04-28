PaintingPalettes:

if DEF(NOIR)
	GRAYSCALE 31, 28, 19, 07 ; ho-oh painting
	GRAYSCALE 31, 24, 16, 07 ; lugia painting
	GRAYSCALE 31, 25, 18, 08 ; bell tower painting
	GRAYSCALE 31, 20, 14, 07 ; kabuto puzzle
	GRAYSCALE 31, 20, 14, 07 ; omanyte puzzle
	GRAYSCALE 31, 20, 14, 07 ; aerodactyl puzzle
	GRAYSCALE 31, 20, 14, 07 ; ho-oh puzzle
elif DEF(MONOCHROME)
rept NUM_PAINTINGS
	MONOCHROME_RGB_FOUR
endr
else
INCLUDE "gfx/paintings/ho_oh_painting.pal"
INCLUDE "gfx/paintings/lugia_painting.pal"
INCLUDE "gfx/paintings/bell_tower_painting.pal"
INCLUDE "gfx/paintings/kabuto_puzzle.pal"
INCLUDE "gfx/paintings/omanyte_puzzle.pal"
INCLUDE "gfx/paintings/aerodactyl_puzzle.pal"
INCLUDE "gfx/paintings/ho_oh_puzzle.pal"
endc
