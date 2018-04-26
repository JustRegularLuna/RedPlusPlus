Route45_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  4,  5, DARK_CAVE_BLACKTHORN_ENTRANCE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 20, 80, FRUITTREE_ROUTE_45, ORAN_BERRY

	const_def 1 ; object constants
