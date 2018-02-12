Route10North_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 15, 33, ROUTE_10_POKECENTER_1F, 1
	warp_event 10, 49, POWER_PLANT, 1
	warp_event  0,  0, ROCK_TUNNEL_2F, 1 ; TODO: remove
	warp_event 10, 31, ROCK_TUNNEL_1F, 1
	warp_event 10,  1, DIM_CAVE_5F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
