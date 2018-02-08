MountMoonB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 26,  4, MOUNT_MOON_1F, 2
	warp_event  5,  3, MOUNT_MOON_1F, 3
	warp_event  3, 11, MOUNT_MOON_1F, 4
	warp_event 15, 15, MOUNT_MOON_B2F, 1
	warp_event 13,  3, MOUNT_MOON_B2F, 2
	warp_event 16, 22, MOUNT_MOON_B2F, 3
	warp_event 27, 23, MOUNT_MOON_B2F, 4
	warp_event 27, 25, ROUTE_4, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
