Route10North_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, RockTunnelFlyPoint

	db 6 ; warp events
	warp_event 15, 33, ROUTE_10_POKECENTER_1F, 1
	warp_event 10, 49, POWER_PLANT, 1
	warp_event  0,  0, ROCK_TUNNEL_2F, 1 ; TODO: remove
	warp_event 10, 31, ROCK_TUNNEL_1F, 1
	warp_event 10,  1, DIM_CAVE_5F, 1
	warp_event 16, 52, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	cavebase_event 16, 51, SECRET_BASE_ROUTE_10_NORTH, EVENT_SECRET_BASE_ROUTE_10_NORTH
	cuttree_event  9, 21, -1
	cuttree_event 11, 21, -1
	cuttree_event 13, 21, -1
	cuttree_event 15, 21, -1

	const_def 1 ; object constants

RockTunnelFlyPoint:
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	return
