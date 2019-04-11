CeruleanWaterShowSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 11
	warp_event  3,  7, CERULEAN_CITY, 11

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  4, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanWaterShowSpeechHouseCooltrainerMText, -1

CeruleanWaterShowSpeechHouseCooltrainerMText:
	text "Misty sometimes"
	line "performs in water"
	cont "shows at her Gym."

	para "They're a sight to"
	line "behold!"
	done
