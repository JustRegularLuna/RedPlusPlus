CeruleanTradeSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  4, SPRITE_OLD_MEDIUM_WOMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanHouse1Text1, -1
	object_event  1,  2, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, trade, TRADE_WITH_RALPH_FOR_JYNX, -1

CeruleanHouse1Text1:
	text "My husband likes"
	line "trading #mon."

	para "If you are a"
	line "collector, would"
	cont "you please trade"
	cont "with him?"
	done
