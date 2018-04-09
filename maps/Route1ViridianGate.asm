Route1ViridianGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  0, VIRIDIAN_CITY, 6
	warp_event  5,  0, VIRIDIAN_CITY, 7
	warp_event  4,  7, ROUTE_1, 1
	warp_event  5,  7, ROUTE_1, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  4, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, Route1ViridianGateGuardText, -1

	const_def 1 ; object constants

Route1ViridianGateGuardText:
	text "Viridian City gets"
	line "visitors from all"
	cont "over!"

	para "I know most of"
	line "them are just"
	cont "passing through,"
	cont "but that's ok."
	done
