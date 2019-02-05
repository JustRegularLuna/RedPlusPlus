CeruleanPokeCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, CERULEAN_CITY, 4
	warp_event  6,  7, CERULEAN_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	pc_nurse_event  5,  1
	pc_chansey_event  6,  1
	object_event 10,  5, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanPokecenterText2, -1
	object_event  4,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanPokecenterText3, -1

CeruleanPokecenterText2:
	text "That Bill!"

	para "I heard that"
	line "he'll do whatever"
	cont "it takes to get"
	cont "rare #mon!"
	done

CeruleanPokecenterText3:
	text "Have you heard"
	line "about Bill?"

	para "Everyone calls him"
	line "a # Maniac!"

	para "I think people"
	line "are just jealous"
	cont "of Bill, though."

	para "Who wouldn't want"
	line "to boast about"
	cont "their #mon?"
	done
