OlivineLighthouse1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 10, 17, OLIVINE_CITY, 8
	warp_event 11, 17, OLIVINE_CITY, 8
	warp_event  3, 11, OLIVINE_LIGHTHOUSE_2F, 1
	warp_event 16, 13, OLIVINE_LIGHTHOUSE_2F, 3
	warp_event 17, 13, OLIVINE_LIGHTHOUSE_2F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
