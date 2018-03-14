UragaChannelEast_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 14, 11, URAGA_CHANNEL_WEST, 1
	warp_event 18, 10, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	cavebase_event 18,  9, SECRET_BASE_URAGA_CHANNEL, EVENT_SECRET_BASE_URAGA_CHANNEL

	const_def 1 ; object constants
