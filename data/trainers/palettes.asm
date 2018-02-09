TrainerPalettes:

if !DEF(MONOCHROME)
	INCLUDE "gfx/trainers/red.pal"      ; TRAINER_NONE
RedPalette:
	INCLUDE "gfx/trainers/red.pal"      ; RED
LeafPalette:
	INCLUDE "gfx/trainers/leaf.pal"     ; LEAF
	INCLUDE "gfx/trainers/oak.pal"      ; PROF_OAK
else
RedPalette:
LeafPalette:
rept NUM_TRAINER_CLASSES
	MONOCHROME_RGB_TWO
endr
endc

OldManPalette:
if !DEF(MONOCHROME)
	RGB 24, 17, 07
	RGB 18, 13, 04
else
	MONOCHROME_RGB_TWO
endc
