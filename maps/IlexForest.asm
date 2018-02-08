IlexForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  3,  7, ROUTE_34_ILEX_FOREST_GATE, 3
	warp_event  5, 44, ILEX_FOREST_AZALEA_GATE, 1
	warp_event  5, 45, ILEX_FOREST_AZALEA_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
