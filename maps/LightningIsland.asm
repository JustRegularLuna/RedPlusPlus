LightningIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  5, 29, SHAMOUTI_COAST, 3
	warp_event 19, 29, LIGHTNING_ISLAND_ROOF, 1
	warp_event  6,  3, LIGHTNING_ISLAND, 4
	warp_event 19,  3, LIGHTNING_ISLAND, 3
	warp_event 19, 26, LIGHTNING_ISLAND, 6
	warp_event  5, 27, LIGHTNING_ISLAND, 5 ; hole

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
