BeautifulBeach_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 11, 23, SEAGALLOP_FERRY_SHAMOUTI_GATE, 1
	warp_event 12, 23, SEAGALLOP_FERRY_SHAMOUTI_GATE, 1
	warp_event 27, 18, BEAUTIFUL_BEACH_VILLA, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
