MountMortar1FInside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 11, 47, MOUNT_MORTAR_1F_OUTSIDE, 5
	warp_event 29, 47, MOUNT_MORTAR_1F_OUTSIDE, 6
	warp_event  5, 39, MOUNT_MORTAR_1F_OUTSIDE, 8
	warp_event 33, 41, MOUNT_MORTAR_1F_OUTSIDE, 9
	warp_event  3, 19, MOUNT_MORTAR_B1F, 1
	warp_event  9,  9, MOUNT_MORTAR_2F_INSIDE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
