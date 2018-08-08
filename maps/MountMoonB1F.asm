MountMoonB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 10 ; warp events
	warp_event  3,  3, MOUNT_MOON_1F, 3
	warp_event 23,  5, MOUNT_MOON_B2F, 1
	warp_event 33,  3, MOUNT_MOON_1F, 4
	warp_event 31, 13, MOUNT_MOON_1F, 5
	warp_event 19, 15, MOUNT_MOON_B2F, 2
	warp_event 19, 23, MOUNT_MOON_B2F, 3
	warp_event  5, 23, MOUNT_MOON_B2F, 4
	warp_event  9, 23, MOUNT_MOON_B1F, 9
	warp_event 13,  3, MOUNT_MOON_B1F, 8
	warp_event 13,  7, ROUTE_4, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
