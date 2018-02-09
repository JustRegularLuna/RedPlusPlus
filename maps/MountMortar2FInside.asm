MountMortar2FInside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 17, 33, MOUNT_MORTAR_1F_OUTSIDE, 4
	warp_event  3,  5, MOUNT_MORTAR_1F_INSIDE, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
