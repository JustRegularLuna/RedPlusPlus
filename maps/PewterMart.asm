PewterMart_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, PEWTER_CITY, 3
	warp_event  3,  7, PEWTER_CITY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_PEWTER
	object_event  8,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterMartText2, -1
	object_event  5,  2, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterMartText3, -1


PewterMartText2:
	text "A shady old man"
	line "got me to buy"
	cont "this really weird"
	cont "fish #mon!"

	para "It's totally weak"
	line "and it cost ¥500!"
	done

PewterMartText3:
	text "Good things can"
	line "happen if you"
	cont "raise #mon"
	cont "diligently, even"
	cont "the weak ones!"
	done
