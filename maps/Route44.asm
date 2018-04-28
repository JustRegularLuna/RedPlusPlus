Route44_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 56,  9, ICE_PATH_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event  9,  7, FRUITTREE_ROUTE_44, ORAN_BERRY

	const_def 1 ; object constants
