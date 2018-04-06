Route27East_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  6,  5, TOHJO_FALLS, 2
	warp_event  3,  7, ROUTE_27_REST_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 28, 13, FRUITTREE_ROUTE_27, LUM_BERRY

	const_def 1 ; object constants
