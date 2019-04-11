CeruleanGymBadgeSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1
	warp_event  3,  0, CERULEAN_CITY, 15

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  3, SPRITE_FAT_BALD_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanHouse2Text1, -1

CeruleanHouse2Text1:
	text "Are you collecting"
	line "Gym Badges?"

	para "Several badges"
	line "grant additional"
	cont "perks."

	para "Pay attention to"
	line "what Leaders have"
	cont "to say when they"
	cont "hand out their"
	cont "badge!"
	done
