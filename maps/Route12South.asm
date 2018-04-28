Route12South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 16,  1, ROUTE_12_GATE, 3
	warp_event  2, 42, ROUTE_11_GATE, 3
	warp_event  2, 43, ROUTE_11_GATE, 4
	warp_event 15, 57, ROUTE_12_SUPER_ROD_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 15, 42, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	cuttree_event 13, 68, -1
	cuttree_event 15, 79, -1

	const_def 1 ; object constants
