Route18West_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, Route18West_AlwaysOnBike

	db 2 ; warp events
	warp_event 31, 10, ROUTE_18_GATE, 1
	warp_event 31, 11, ROUTE_18_GATE, 2

	db 1 ; coord events
	coord_event  9,  0, 0, Route18WestBikeCheckScript

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants

Route18West_AlwaysOnBike:
	setflag ENGINE_ALWAYS_ON_BIKE
	return

Route18WestBikeCheckScript:
	copybytetovar PlayerState
	ifequal PLAYER_BIKE, .done
	showtext Route18WestBikeWarningText
	applyonemovement PLAYER, step_down
.done
	end

Route18WestBikeWarningText:
	text "You have to be on"
	line "a Bicycle to go"
	cont "on Cycling Road!"
	done
