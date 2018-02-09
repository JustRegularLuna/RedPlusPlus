VictoryRoad3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  5, VICTORY_ROAD_2F, 3
	warp_event 15, 11, VICTORY_ROAD_2F, 4
	warp_event 19, 13, VICTORY_ROAD_2F, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
