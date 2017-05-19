SilphCo7Object: ; 0x51ed7 (size=128)
	db $2e ; border block

	db $6 ; warps
	db $0, $10, $1, SILPH_CO_8F
	db $0, $16, $0, SILPH_CO_6F
	db $0, $12, $0, SILPH_CO_ELEVATOR
	db $7, $5, $3, SILPH_CO_11F
	db $3, $5, $8, SILPH_CO_3F
	db $f, $15, $3, SILPH_CO_5F

	db $0 ; signs

	db $b ; objects
	object SPRITE_LAPRAS_GIVER, $1, $5, NONE, NONE, $1 ; person
	object SPRITE_LAPRAS_GIVER, $d, $d, NONE, UP, $2 ; person
	object SPRITE_LAPRAS_GIVER, $7, $a, NONE, NONE, $3 ; person
	object SPRITE_FOULARD_WOMAN, $a, $8, NONE, NONE, $4 ; person
	object SPRITE_ROCKET, $d, $1, NONE, DOWN, $5, ROCKET + $C8, $20
	object SPRITE_OAK_AIDE, $2, $d, NONE, DOWN, $6, SCIENTIST + $C8, $8
	object SPRITE_ROCKET, $14, $2, NONE, LEFT, $7, ROCKET + $C8, $21
	object SPRITE_ROCKET_F, $13, $e, NONE, RIGHT, $8, ROCKET_F + $C8, $22
	object SPRITE_BLUE, $3, $7, NONE, UP, $9 ; person
	object SPRITE_BALL, $1, $9, NONE, NONE, $a, CALCIUM
	object SPRITE_BALL, $18, $b, NONE, NONE, $b, TM_03

	; warp-to
	EVENT_DISP SILPH_CO_7F_WIDTH, $0, $10 ; SILPH_CO_8F
	EVENT_DISP SILPH_CO_7F_WIDTH, $0, $16 ; SILPH_CO_6F
	EVENT_DISP SILPH_CO_7F_WIDTH, $0, $12 ; SILPH_CO_ELEVATOR
	EVENT_DISP SILPH_CO_7F_WIDTH, $7, $5 ; SILPH_CO_11F
	EVENT_DISP SILPH_CO_7F_WIDTH, $3, $5 ; SILPH_CO_3F
	EVENT_DISP SILPH_CO_7F_WIDTH, $f, $15 ; SILPH_CO_5F