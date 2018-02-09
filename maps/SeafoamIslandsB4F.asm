SeafoamIslandsB4F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  3,  3, SEAFOAM_ISLANDS_B3F, 5
	warp_event  7, 11, SEAFOAM_ISLANDS_B3F, 6
	warp_event 25,  7, SEAFOAM_ISLANDS_B3F, 7
	warp_event 27,  2, SEAFOAM_ISLANDS_B3F, 8
	warp_event 31, 13, SEAFOAM_ISLANDS_B3F, 9
	warp_event 37, 13, SEAFOAM_ISLANDS_B3F, 10

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
