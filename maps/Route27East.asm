Route27East_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  6,  9, TOHJO_FALLS, 2
	warp_event  3, 11, ROUTE_27_REST_HOUSE, 1
	warp_event 52,  4, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	fruittree_event 28, 17, FRUITTREE_ROUTE_27, LUM_BERRY
	cavebase_event 52,  3, SECRET_BASE_ROUTE_27, EVENT_SECRET_BASE_ROUTE_27

	const_def 1 ; object constants
