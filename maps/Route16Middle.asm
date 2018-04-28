Route16Middle_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, Route16Middle_AlwaysOnBike

	db 5 ; warp events
	warp_event 17, 10, ROUTE_16_17_GATE, 1
	warp_event 17, 11, ROUTE_16_17_GATE, 2
	warp_event 17,  2, ROUTE_16_GATE, 1
	warp_event 17,  3, ROUTE_16_GATE, 2
	warp_event  7,  3, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants

Route16Middle_AlwaysOnBike:
	checkcode VAR_YCOORD
	ifless 9, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	return

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	return
