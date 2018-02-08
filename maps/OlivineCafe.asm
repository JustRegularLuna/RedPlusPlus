OlivineCafe_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4,  7, OLIVINE_CITY, 6
	warp_event  5,  7, OLIVINE_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
