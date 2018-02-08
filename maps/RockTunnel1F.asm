RockTunnel1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 15,  3, ROUTE_10_NORTH, 4
	warp_event 11, 25, ROUTE_10_SOUTH, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 1
	warp_event 15,  9, ROCK_TUNNEL_B1F, 2
	warp_event 25,  3, ROCK_TUNNEL_B1F, 3
	warp_event 27, 13, ROCK_TUNNEL_B1F, 4
	warp_event  4, 13, ROCK_TUNNEL_B1F, 5
	warp_event  6, 15, ROCK_TUNNEL_2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
