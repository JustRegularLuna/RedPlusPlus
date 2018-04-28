MountMoonB2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 10, 24, MOUNT_MOON_B1F, 4
	warp_event 21,  7, MOUNT_MOON_B1F, 5
	warp_event 17, 15, MOUNT_MOON_B1F, 6
	warp_event  3,  9, MOUNT_MOON_B1F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
