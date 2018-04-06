CeriseIslandEast_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 30, 21, CERISE_ISLAND_WEST, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	smashrock_event 32, 27
	smashrock_event 36, 25
	smashrock_event 39, 20
	smashrock_event 36, 17
	smashrock_event 37, 13

	const_def 1 ; object constants
