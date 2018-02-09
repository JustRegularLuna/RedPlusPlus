Route36RuinsofAlphGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  0, ROUTE_36, 3
	warp_event  5,  0, ROUTE_36, 4
	warp_event  4,  7, RUINS_OF_ALPH_OUTSIDE, 9
	warp_event  5,  7, RUINS_OF_ALPH_OUTSIDE, 9

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
