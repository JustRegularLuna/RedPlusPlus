SwapTextboxPalettes:: ; 4c000
	hlcoord 0, 0
	decoord 0, 0, AttrMap
	ld b, SCREEN_HEIGHT
.loop
	push bc
	ld c, SCREEN_WIDTH
	call GetBGMapTilePalettes
	pop bc
	dec b
	jr nz, .loop
	ret

ScrollBGMapPalettes:: ; 4c03f
	ld hl, BGMapBuffer
	ld de, BGMapPalBuffer
	; fallthrough
GetBGMapTilePalettes::
; hl = tile buffer
; de = palette buffer
; c = tile count
.loop
	ld a, [hl]
	push hl
	ld hl, TilesetPalettes
	add [hl]
	ld l, a
	ld a, [TilesetPalettes + 1]
	adc $0
	ld h, a
	ld a, [hl]
	pop hl
	ld [de], a
	res 7, [hl]
	inc hl
	inc de
	dec c
	jr nz, .loop
	ret

INCLUDE "gfx/tilesets/palette_maps.asm"

INCLUDE "data/collision_permissions.asm"
