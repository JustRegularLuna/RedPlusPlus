Route9_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 31,  4, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	cavebase_event 31,  3, SECRET_BASE_ROUTE_9, EVENT_SECRET_BASE_ROUTE_9
	cuttree_event  5, 10, -1

	const_def 1 ; object constants
