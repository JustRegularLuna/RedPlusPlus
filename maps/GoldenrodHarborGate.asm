GoldenrodHarborGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  4, GOLDENROD_HARBOR, 1
	warp_event  0,  5, GOLDENROD_HARBOR, 2
	warp_event  9,  4, GOLDENROD_CITY, 16
	warp_event  9,  5, GOLDENROD_CITY, 17

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
