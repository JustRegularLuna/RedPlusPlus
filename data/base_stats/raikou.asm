	db RAIKOU ; 243

	db  90,  85,  75, 115, 115, 100
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC
	db 3 ; catch rate
	db 216 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 255 ; gender
	db 80 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db PRESSURE ; ability 1
	db PRESSURE ; ability 2
	db VOLT_ABSORB ; hidden ability
	db SLOW ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   2,   1,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, WILD_CHARGE, REST, SUBSTITUTE, BODY_SLAM, ENDURE, THUNDER_WAVE, CUT, STRENGTH, FLASH, ROCK_SMASH, DOUBLE_EDGE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end