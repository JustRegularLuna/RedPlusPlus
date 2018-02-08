SeafoamIslandsB3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 10 ; warp events
	warp_event 37,  7, SEAFOAM_ISLANDS_B2F, 5
	warp_event 25,  9, SEAFOAM_ISLANDS_B2F, 6
	warp_event 35, 13, SEAFOAM_ISLANDS_B2F, 7
	warp_event  3, 13, SEAFOAM_ISLANDS_B2F, 8
	warp_event  3,  3, SEAFOAM_ISLANDS_B4F, 1
	warp_event  7, 13, SEAFOAM_ISLANDS_B4F, 2
	warp_event 21,  9, SEAFOAM_ISLANDS_B4F, 3
	warp_event 29,  3, SEAFOAM_ISLANDS_B4F, 4
	warp_event 31, 15, SEAFOAM_ISLANDS_B4F, 5
	warp_event 37, 15, SEAFOAM_ISLANDS_B4F, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
