RockTunnelB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  3,  3, ROCK_TUNNEL_1F, 3
	warp_event 17,  9, ROCK_TUNNEL_1F, 4
	warp_event 23,  3, ROCK_TUNNEL_1F, 5
	warp_event 27, 19, ROCK_TUNNEL_1F, 6
	warp_event  3, 13, ROCK_TUNNEL_1F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
