PewterSnoozeSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, PEWTER_CITY, 5
	warp_event  3,  7, PEWTER_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  2,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterHouse2Text1, -1
	object_event  4,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterHouse2Text2, -1

PewterHouse2Text1:
	text "#mon learn new"
	line "techniques as"
	cont "they grow!"

	para "But, some moves"
	line "must be taught by"
	cont "the trainer!"
	done

PewterHouse2Text2:
	text "#mon become"
	line "easier to catch"
	cont "when they are"
	cont "hurt or asleep!"

	para "But, it's not a"
	line "sure thing!"
	done
