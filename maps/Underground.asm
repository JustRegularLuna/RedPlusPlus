Underground_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  3,  2, ROUTE_5_UNDERGROUND_ENTRANCE, 3
	warp_event  3, 32, ROUTE_6_UNDERGROUND_ENTRANCE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
