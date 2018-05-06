Route37_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	fruittree_event 13,  5, FRUITTREE_ROUTE_37_1, RED_APRICORN
	fruittree_event 16,  5, FRUITTREE_ROUTE_37_2, BLU_APRICORN
	fruittree_event 15,  7, FRUITTREE_ROUTE_37_3, BLK_APRICORN

	const_def 1 ; object constants
