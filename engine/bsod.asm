BSOD: ; 4ea82
	ld a, [hCGB]
	and a
	ret nz

	ld de, MUSIC_NONE
	call PlayMusic

	call ClearTileMap

	ld a, [rSVBK]
	push af
	ld a, 5
	ld [rSVBK], a
	ld hl, .Palette
	ld de, BGPals
	ld bc, 1 palettes
	call CopyBytes
	pop af
	ld [rSVBK], a

	ld a, 1
	ld [hCGBPalUpdate], a

	xor a
	ld [hBGMapThird], a
	call DelayFrame

	ld de, FontNormal
	ld hl, VTiles1
	lb bc, BANK(FontNormal), 111
	call Get1bpp

	ld de, .Message
	hlcoord 1, 1
	call PlaceString

	call WaitBGMap

.infiniteloop
	call DelayFrame
	jr .infiniteloop
; 4eac5

.Palette:
if DEF(NOIR)
	GRAYSCALE 04
	GRAYSCALE 04
	GRAYSCALE 31
	GRAYSCALE 31
elif DEF(MONOCHROME)
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
else
	RGB 00, 00, 31
	RGB 00, 00, 31
	RGB 31, 31, 31
	RGB 31, 31, 31
endc

.Message: ; 4eb38
	db   "  Pokémon Red++"
	next "   Version 3.0"
	next "      ERROR"
	next "------------------"
	next "Please report this"
	next "crash to the deve-"
	next "loper, Mateo, at"
	next "tinyurl.com/rppv3.@"
; 4eb76
