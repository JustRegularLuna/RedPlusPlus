
_Diploma: ; 1dd702
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	call DisableLCD
	ld hl, DiplomaGFX
	ld de, vTiles2
	call Decompress
	ld hl, DiplomaTilemap
	decoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	rst CopyBytes
	ld de, .PlayerString
	hlcoord 2, 5
	call PlaceString
	ld de, wPlayerName
	hlcoord 9, 5
	call PlaceString
	ld de, .DiplomaString
	hlcoord 2, 8
	call PlaceString
	call EnableLCD
	call ApplyTilemapInVBlank
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	call SetPalettes
	call DelayFrame
	jp WaitPressAorB_BlinkCursor
; 1dd760

.PlayerString:
	db "Player@"

.DiplomaString:
	db   "This certifies"
	next "that you have"
	next "completed the"
	next "new #dex."
	next "Congratulations!"
	db   "@"
; 1dd7ae

DiplomaGFX: ; 1dd805
INCBIN "gfx/diploma/diploma.2bpp.lz"

DiplomaTilemap: ; 1ddc4b
INCBIN "gfx/diploma/diploma.tilemap"
