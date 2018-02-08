ScaryCave1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 33, 31, URAGA_CHANNEL_EAST, 1
	warp_event 11, 31, URAGA_CHANNEL_WEST, 1
	warp_event 20, 30, SCARY_CAVE_B1F, 1
	warp_event 34, 10, SCARY_CAVE_B1F, 2
	warp_event  9,  1, SCARY_CAVE_SHIPWRECK, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
