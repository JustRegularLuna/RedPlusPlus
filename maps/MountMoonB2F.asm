MountMoonB2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 25,  9, MOUNT_MOON_B1F, 2
	warp_event 21, 17, MOUNT_MOON_B1F, 5
	warp_event 15, 27, MOUNT_MOON_B1F, 6
	warp_event  5,  7, MOUNT_MOON_B1F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
