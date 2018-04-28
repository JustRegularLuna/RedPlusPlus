VictoryRoad1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 11, 21, ROUTE_23, 3
	warp_event  3,  3, VICTORY_ROAD_2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
