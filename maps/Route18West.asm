Route18West_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, Route18West_AlwaysOnBike

	db 2 ; warp events
	warp_event 31,  8, ROUTE_18_GATE, 1
	warp_event 31,  9, ROUTE_18_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants

Route18West_AlwaysOnBike:
	setflag ENGINE_ALWAYS_ON_BIKE
	return
