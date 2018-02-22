Route12_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 14,  1, ROUTE_12_GATE, 3
	warp_event  2, 56, ROUTE_11_GATE, 3
	warp_event  2, 57, ROUTE_11_GATE, 4
	warp_event 15, 71, ROUTE_12_SUPER_ROD_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 15, 56, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	cuttree_event 13, 82, -1
	cuttree_event 15, 93, -1

	const_def 1 ; object constants
