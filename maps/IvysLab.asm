IvysLab_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 11, VALENCIA_ISLAND, 1
	warp_event  5, 11, VALENCIA_ISLAND, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
