VermilionGymObject: ; 0x5cbfe (size=58)
	db $3 ; border block

	db $2 ; warps
	db $11, $4, $3, $ff
	db $11, $5, $3, $ff

	db $0 ; signs

	db $5 ; objects
	object SPRITE_SURGE, $5, $1, NONE, DOWN, $1, LT__SURGE + $C8, $1
	object SPRITE_GENTLEMAN, $9, $6, NONE, LEFT, $2, GENTLEMAN + $C8, $3
	object SPRITE_BRUNETTE_GIRL, $3, $8, NONE, LEFT, $3, ROCKER + $C8, $1
	object SPRITE_SAILOR, $0, $a, NONE, RIGHT, $4, SAILOR + $C8, $8
	object SPRITE_GYM_HELPER, $4, $e, NONE, DOWN, $5 ; person

	; warp-to
	EVENT_DISP VERMILION_GYM_WIDTH, $11, $4
	EVENT_DISP VERMILION_GYM_WIDTH, $11, $5