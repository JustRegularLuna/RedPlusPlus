MountMoon1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 11, 23, ROUTE_3_NORTH, 1
	warp_event 22, 12, MOUNT_MOON_B1F, 1
	warp_event 11,  9, MOUNT_MOON_B1F, 2
	warp_event  4,  4, MOUNT_MOON_B1F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
