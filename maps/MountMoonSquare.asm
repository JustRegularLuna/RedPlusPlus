MountMoonSquare_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 21, 11, ROUTE_4, 2
	warp_event 13,  7, MOUNT_MOON_GIFT_SHOP, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
