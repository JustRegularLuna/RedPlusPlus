MountMoonB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event  5,  5, MOUNT_MOON_1F, 3
	warp_event 17, 11, MOUNT_MOON_B2F, 1
	warp_event 25,  9, MOUNT_MOON_1F, 4
	warp_event 25, 15, MOUNT_MOON_1F, 5
	warp_event 21, 17, MOUNT_MOON_B2F, 2
	warp_event 13, 27, MOUNT_MOON_B2F, 3
	warp_event 23,  3, MOUNT_MOON_B2F, 4
	warp_event 27,  3, ROUTE_4, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
