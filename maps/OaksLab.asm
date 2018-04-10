OaksLab_MapScriptHeader:
	db 5 ; scene scripts
	scene_script OaksLabTrigger0
	scene_script OaksLabTrigger1
	scene_script OaksLabTrigger2
	scene_script OaksLabTrigger3
	scene_script OaksLabTrigger4

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 10 ; object events
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OaksLabBlueScript, EVENT_HIDE_OAKSLAB_BLUE
	object_event  6,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, PAL_NPC_BROWN, ObjectEvent, EVENT_HIDE_OAKSLAB_OAK
	object_event  2,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  9, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2, 10, SPRITE_OAK_AIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8, 10, SPRITE_OAK_AIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1

	const_def 1 ; object constants
	const OAKSLAB_BLUE
	const OAKSLAB_STARTER_1
	const OAKSLAB_STARTER_2
	const OAKSLAB_STARTER_3
	const OAKSLAB_OAK
	const OAKSLAB_POKEDEX_1
	const OAKSLAB_POKEDEX_2
	const OAKSLAB_GIRL
	const OAKSLAB_AIDE_1
	const OAKSLAB_AIDE_2

OaksLabTrigger0:
OaksLabTrigger1:
OaksLabTrigger2:
OaksLabTrigger3:
OaksLabTrigger4:
	end

OaksLabBlueScript:
	faceplayer
	opentext
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumpopenedtext GrampsIsntAroundText
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext MyPokemonLooksStrongerText
	thisopenedtext
;HehIDontNeedToBeGreedyText
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

GrampsIsntAroundText:
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
	done

MyPokemonLooksStrongerText:
	text "<RIVAL>: My"
	line "#mon looks a"
	cont "lot stronger."
	done
