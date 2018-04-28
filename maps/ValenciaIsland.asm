ValenciaIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 18, 19, IVYS_LAB, 1
	warp_event  5, 19, IVYS_HOUSE, 1
	warp_event  3, 11, VALENCIA_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
