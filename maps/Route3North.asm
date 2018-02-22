Route3North_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 18,  5, MOUNT_MOON_1F, 1
	warp_event 11,  5, ROUTE_3_POKECENTER_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event  6,  5, FRUITTREE_ROUTE_3, ORAN_BERRY

	const_def 1 ; object constants
