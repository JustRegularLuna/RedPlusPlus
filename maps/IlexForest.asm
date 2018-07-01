IlexForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  6,  9, ROUTE_34_ILEX_FOREST_GATE, 3
	warp_event  7, 46, ILEX_FOREST_AZALEA_GATE, 1
	warp_event  7, 47, ILEX_FOREST_AZALEA_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	cuttree_event 12, 31, -1

	const_def 1 ; object constants
