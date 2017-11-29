; Note: after calling this, you may need to set W2_ForceBGPUpdate/ForceOBPUpdate to nonzero.
; d = palette to load (see constants/palette_constants.), e = palette index
LoadSGBPalette:
	ld a,[rSVBK]
	ld b,a
	ld a,2
	ld [rSVBK],a
	push bc

	ld a,e
	ld l,d
	ld h,0
	add hl
	add hl
	add hl
	ld de, SuperPalettes
	add hl,de

	ld de,W2_BgPaletteData
	jr startPaletteTransfer

LoadSGBPalette_Sprite:
	ld a,[rSVBK]
	ld b,a
	ld a,2
	ld [rSVBK],a
	push bc

	ld a,e
	ld l,d
	ld h,0
	add hl
	add hl
	add hl
	ld de, SuperPalettes
	add hl,de

	ld de,W2_BgPaletteData + $40
	;jr startPaletteTransfer

startPaletteTransfer:
	add a
	add a
	add a
	add e
	ld e,a
	ld b,8
	
.palLoop
	ld a,[hli]
	ld [de],a
	inc de
	dec b
	jr nz,.palLoop

	pop af
	ld [rSVBK],a
	ret

LoadPokemonPalette:
	ld hl, PokemonPaletteTable
	jr LoadPalette

LoadShinyPokemonPalette:
	ld hl, ShinyPokemonPaletteTable
	jr LoadPalette

LoadTrainerPalette:
	ld hl, TrainerPaletteTable
	;jr LoadPalette

LoadPalette:
	ld a,[rSVBK]
	ld b,a
	ld a,2
	ld [rSVBK],a
	push bc

	push hl
	ld a,e
	ld l,d
	ld h,0
	add hl
	add hl
	pop de
	add hl,de

	ld de,W2_BgPaletteData
	jr startHalfPaletteTransfer

LoadPokemonPalette_Sprite:
	ld hl, PokemonPaletteTable
	jr LoadPalette_Sprite

LoadShinyPokemonPalette_Sprite:
	ld hl, ShinyPokemonPaletteTable
	jr LoadPalette_Sprite

LoadTrainerPalette_Sprite:
	ld hl, TrainerPaletteTable
	;jr LoadPalette_Sprite

LoadPalette_Sprite:

	ld a,[rSVBK]
	ld b,a
	ld a,2
	ld [rSVBK],a
	push bc

	push hl
	ld a,e
	ld l,d
	ld h,0
	add hl
	add hl
	pop de
	add hl,de

	ld de,W2_BgPaletteData + $40
	;jr startHalfPaletteTransfer

startHalfPaletteTransfer:
	add a
	add a
	add a
	add e
	ld e,a
	ld b,4

	ld a, $ff
	ld [de], a
	inc de
	ld a, $7f
	ld [de], a
	inc de
.palLoop
	ld a,[hli]
	ld [de],a
	inc de
	dec b
	jr nz,.palLoop
	xor a
	ld [de], a
	inc de
	ld [de], a
	inc de

	pop af
	ld [rSVBK],a
	ret

INCLUDE "data/super_palettes.asm"
