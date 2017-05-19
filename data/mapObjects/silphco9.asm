SilphCo9Object: ; 0x5d93f (size=74)
	db $2e ; border block

	db $5 ; warps
	db $0, $e, $0, SILPH_CO_10F
	db $0, $10, $0, SILPH_CO_8F
	db $0, $12, $0, SILPH_CO_ELEVATOR
	db $3, $9, $7, SILPH_CO_3F
	db $f, $11, $4, SILPH_CO_5F

	db $0 ; signs

	db $4 ; objects
	object SPRITE_NURSE, $3, $e, NONE, DOWN, $1 ; person
	object SPRITE_ROCKET_F, $2, $4, NONE, UP, $2, ROCKET_F + $C8, $25
	object SPRITE_OAK_AIDE, $15, $d, NONE, DOWN, $3, SCIENTIST + $C8, $a
	object SPRITE_ROCKET_F, $d, $10, NONE, UP, $4, ROCKET_F + $C8, $26

	; warp-to
	EVENT_DISP SILPH_CO_9F_WIDTH, $0, $e ; SILPH_CO_10F
	EVENT_DISP SILPH_CO_9F_WIDTH, $0, $10 ; SILPH_CO_8F
	EVENT_DISP SILPH_CO_9F_WIDTH, $0, $12 ; SILPH_CO_ELEVATOR
	EVENT_DISP SILPH_CO_9F_WIDTH, $3, $9 ; SILPH_CO_3F
	EVENT_DISP SILPH_CO_9F_WIDTH, $f, $11 ; SILPH_CO_5F