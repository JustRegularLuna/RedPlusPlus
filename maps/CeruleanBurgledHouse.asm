CeruleanBurgledHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2
	warp_event  3,  0, CERULEAN_CITY, 13

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  4,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeruleanHouseTrashedText1, -1
	object_event  5,  6, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanHouseTrashedText2, -1

CeruleanHouseTrashedText1:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; TODO: EVENT_BEAT_CERULEAN_CITY_ROCKET
	iftrue_jumptextfaceplayer CeruleanTrashedText1_2
	faceplayer
	thistext

CeruleanTrashedText1_1:
	text "Those miserable"
	line "Rockets!"

	para "Look what they"
	line "did here!"

	para "They stole a TM"
	line "for teaching"
	cont "#mon how to"
	cont "Dig holes!"

	para "That cost me a"
	line "bundle, it did!"
	done

CeruleanTrashedText1_2:
	text "I figure what's"
	line "lost is lost!"

	para "I decided to teach"
	line "Diglett how to"
	cont "Dig without a TM!"
	done

CeruleanHouseTrashedText2:
	text "Team Rocket must"
	line "be trying to Dig"
	cont "their way into no"
	cont "good!"
	done
