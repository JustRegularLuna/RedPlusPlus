FuchsiaMartObject: ; 0x1dd9b (size=38)
	db $0 ; border block

	db $2 ; warps
	db $7, $3, $0, $ff
	db $7, $4, $0, $ff

	db $0 ; signs

	db $3 ; objects
	object SPRITE_MART_GUY, $0, $5, NONE, RIGHT, $1 ; person
	object SPRITE_FAT_BALD_GUY, $4, $2, NONE, NONE, $2 ; person
	object SPRITE_LASS, $7, $6, WALK, $1, $3 ; person

	; warp-to
	EVENT_DISP FUCHSIA_MART_WIDTH, $7, $3
	EVENT_DISP FUCHSIA_MART_WIDTH, $7, $4