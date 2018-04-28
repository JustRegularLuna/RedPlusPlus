EcruteakShrineOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  3, ECRUTEAK_SHRINE_INSIDE, 1
	warp_event  5, 13, ECRUTEAK_CITY, 4
	warp_event  6, 13, ECRUTEAK_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
