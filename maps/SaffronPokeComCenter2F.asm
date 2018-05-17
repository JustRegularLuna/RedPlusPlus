SaffronPokeComCenter2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  0,  7, SAFFRON_POKECOM_CENTER_1F, 3
	warp_event  5,  0, TRADE_CENTER, 1
	warp_event  9,  0, COLOSSEUM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
