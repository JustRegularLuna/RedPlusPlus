BeachHouseObject:
	db $a ; border block

	db $2 ; warps
	db $7, $2, $3, $ff
	db $7, $3, $3, $ff

	db $0 ; signs

	db $4 ; objects
	object SPRITE_FISHER, $2, $4, STAY, RIGHT, $1 ; person
	object SPRITE_SURF_PIKACHU, $2, $3, STAY, RIGHT, $2 ; person
	object SPRITE_BRUNETTE_GIRL, $9, $5, STAY, UP, $3 ; person
	object SPRITE_LYING_OLD_MAN, $a, $7, STAY, NONE, $4 ; person

	; warp-to
	EVENT_DISP BEACH_HOUSE_WIDTH, $7, $2
	EVENT_DISP BEACH_HOUSE_WIDTH, $7, $3
