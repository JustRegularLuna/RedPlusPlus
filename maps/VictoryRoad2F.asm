VictoryRoad2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 25,  9, ROUTE_23, 4
	warp_event  3, 11, VICTORY_ROAD_1F, 2
	warp_event  3,  4, VICTORY_ROAD_3F, 1
	warp_event 15,  7, VICTORY_ROAD_3F, 2
	warp_event 19,  9, VICTORY_ROAD_3F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
