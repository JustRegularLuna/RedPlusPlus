RockTunnel2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 25, 19, ROUTE_10_NORTH, 3
	warp_event  7, 15, ROCK_TUNNEL_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
