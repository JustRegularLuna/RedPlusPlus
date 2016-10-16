	db PERSIAN ; 053

if DEF(FAITHFUL)
	db  65,  70,  60, 115,  65,  65
	;   hp  atk  def  spd  sat  sdf
else
	db  65,  90,  60, 115,  65,  65
	;   hp  atk  def  spd  sat  sdf
endc

if DEF(FAITHFUL)
	db NORMAL, NORMAL
else
	db DARK, DARK
endc
	db 90 ; catch rate
	db 148 ; base exp
	db NO_ITEM ; item 1
	db QUICK_CLAW ; item 2
	db 127 ; gender
	db 20 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db LIMBER ; ability 1
	db TECHNICIAN ; ability 2
	db UNNERVE ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   2,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWIFT, AERIAL_ACE, REST, ATTRACT, THIEF, SUBSTITUTE, BODY_SLAM, FALSE_SWIPE, DARK_PULSE, ENDURE, SHADOW_CLAW, CUT, FLASH, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, HEADBUTT, HYPER_VOICE, ICY_WIND, SEED_BOMB, SLEEP_TALK, SWAGGER, WATER_PULSE, ZAP_CANNON
	; end