ViridianForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 21, 51, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 22, 51, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 34,  8, FRUITTREE_VIRIDIAN_FOREST, ORAN_BERRY

	const_def 1 ; object constants
