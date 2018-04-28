UragaChannelEast_MapScriptHeader:
UragaChannelWest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 10,  9, URAGA_CHANNEL_EAST, 2
	warp_event 16, 11, URAGA_CHANNEL_WEST, 1
	warp_event 20, 10, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	cavebase_event 20,  9, SECRET_BASE_URAGA_CHANNEL, EVENT_SECRET_BASE_URAGA_CHANNEL

	const_def 1 ; object constants
