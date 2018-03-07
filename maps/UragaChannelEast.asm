UragaChannelEast_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 14, 11, URAGA_CHANNEL_WEST, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
