Route16South_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, Route16South_AlwaysOnBike

	db 2 ; warp events
	warp_event 17, 10, ROUTE_16_17_GATE, 1
	warp_event 17, 11, ROUTE_16_17_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants

Route16South_AlwaysOnBike:
	setflag ENGINE_ALWAYS_ON_BIKE
	return
