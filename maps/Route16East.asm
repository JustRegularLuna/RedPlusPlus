Route16East_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4, 10, ROUTE_16_17_GATE, 3
	warp_event  4, 11, ROUTE_16_17_GATE, 4
	warp_event  4,  2, ROUTE_16_GATE, 3
	warp_event  4,  3, ROUTE_16_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  8, 10, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	cuttree_event 14,  9, -1

	const_def 1 ; object constants
