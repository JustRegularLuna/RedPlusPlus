PokemonMansion1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5, 27, CINNABAR_ISLAND, 3
	warp_event  6, 27, CINNABAR_ISLAND, 3
	warp_event 21, 23, POKEMON_MANSION_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
