Route4_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4,  7, MOUNT_MOON_B1F, 8
	warp_event 19,  5, MOUNT_MOON_SQUARE, 1 ; TODO: Cable Car Building

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 37,  6, FRUITTREE_ROUTE_4, ORAN_BERRY

	const_def 1 ; object constants
