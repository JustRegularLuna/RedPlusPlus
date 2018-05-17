SaffronPokeComCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  6, 15, SAFFRON_CITY, 4
	warp_event  7, 15, SAFFRON_CITY, 4
	warp_event  0, 15, SAFFRON_POKECOM_CENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
