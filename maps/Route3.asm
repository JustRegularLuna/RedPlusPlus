Route3_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 68,  1, MOUNT_MOON_1F, 1
	warp_event 61,  3, ROUTE_3_POKECENTER_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
