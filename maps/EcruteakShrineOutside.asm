EcruteakShrineOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  5,  3, ECRUTEAK_SHRINE_INSIDE, 1
	warp_event  4, 12, ECRUTEAK_CITY, 4
	warp_event  5, 12, ECRUTEAK_CITY, 4
	warp_event  6, 12, ECRUTEAK_CITY, 5
	warp_event  7, 12, ECRUTEAK_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
