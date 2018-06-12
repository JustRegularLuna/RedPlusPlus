	db  52,  90,  55,  60,  58,  62
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM ; item 1
	db STICK ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 6, 6 ; frontpic dimensions
	db KEEN_EYE ; ability 1
	db INNER_FOCUS ; ability 2
	db DEFIANT ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn AVIAN, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   1,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm CURSE, TOXIC, SUNNY_DAY, PROTECT, IRON_TAIL, RETURN, ROOST, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROCK_SMASH, FALSE_SWIPE, ENDURE, ACROBATICS, POISON_JAB, U_TURN, SWORDS_DANCE, CUT, FLY, BODY_SLAM, DOUBLE_EDGE, HEADBUTT, SLEEP_TALK, SWAGGER
	; end
