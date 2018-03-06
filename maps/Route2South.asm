Route2South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 16,  1, ROUTE_2_GATE, 3
	warp_event  3,  5, VIRIDIAN_FOREST_VIRIDIAN_GATE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5, 27, SIGNPOST_JUMPTEXT, Route2Text3

	db 5 ; object events
	itemball_event 14, 16, MOON_STONE, 1, -1
	itemball_event 13,  7, HP_UP, 1, -1
	cuttree_event 11, 14, -1
	cuttree_event 12, 22, -1
	cuttree_event 12, 30, -1

	const_def 1 ; object constants

Route2Text3:
	text "Route 2"
	line "Viridian City -"
	cont "Pewter City"
	done
