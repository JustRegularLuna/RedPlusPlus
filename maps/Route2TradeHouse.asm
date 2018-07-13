Route2TradeHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, ROUTE_2_NORTH, 1
	warp_event  3,  7, ROUTE_2_NORTH, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  2,  4, SPRITE_OAK_AIDE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Route2HouseText1, -1
	object_event  4,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, trade, TRADE_WITH_CALVIN_FOR_SNEASEL, -1

Route2HouseText1:
	text "A fainted #mon"
	line "can't fight. But, "
	cont "it can still use "
	cont "moves like Cut!"
	done
