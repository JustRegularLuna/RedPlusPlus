SeafoamIslandsB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 35, 15, SEAFOAM_ISLANDS_1F, 3
	warp_event  3,  3, SEAFOAM_ISLANDS_1F, 5
	warp_event 27, 15, SEAFOAM_ISLANDS_B2F, 1
	warp_event 18,  5, SEAFOAM_ISLANDS_B2F, 2
	warp_event 15, 11, SEAFOAM_ISLANDS_B2F, 3
	warp_event  7, 15, SEAFOAM_ISLANDS_B2F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
