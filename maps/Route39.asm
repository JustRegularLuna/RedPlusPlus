Route39_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  5,  7, ROUTE_39_BARN, 1
	warp_event  9,  7, ROUTE_39_FARMHOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 13,  7, FRUITTREE_ROUTE_39, ORAN_BERRY

	const_def 1 ; object constants
