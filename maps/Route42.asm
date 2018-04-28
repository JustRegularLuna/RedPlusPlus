Route42_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  0,  8, ROUTE_42_ECRUTEAK_GATE, 3
	warp_event  0,  9, ROUTE_42_ECRUTEAK_GATE, 4
	warp_event 10,  5, MOUNT_MORTAR_1F_OUTSIDE, 1
	warp_event 28,  9, MOUNT_MORTAR_1F_OUTSIDE, 2
	warp_event 46,  7, MOUNT_MORTAR_1F_OUTSIDE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	fruittree_event 27, 16, FRUITTREE_ROUTE_42_1, PNK_APRICORN
	fruittree_event 28, 16, FRUITTREE_ROUTE_42_1, GRN_APRICORN
	fruittree_event 29, 16, FRUITTREE_ROUTE_42_1, YLW_APRICORN
	cuttree_event 24, 13, -1

	const_def 1 ; object constants
