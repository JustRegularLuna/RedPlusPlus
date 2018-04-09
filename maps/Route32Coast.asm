Route32Coast_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 57, UNION_CAVE_B1F_SOUTH, 4
	warp_event 17, 51, ROUTE_32_COAST_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 21, 51, FRUITTREE_ROUTE_32_COAST, ORAN_BERRY

	const_def 1 ; object constants
