OlivinePort_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 11,  7, OLIVINE_PORT_PASSAGE, 5
	warp_event  7, 23, FAST_SHIP_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
