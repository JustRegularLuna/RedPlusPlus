Route14_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	cuttree_event  4,  7, -1
	cuttree_event 11, 14, -1
	cuttree_event  3, 24, -1

	const_def 1 ; object constants
