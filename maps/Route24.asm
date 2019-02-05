Route24_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, Route24TileScript

	db 1 ; warp events
	warp_event 18,  6, HIDDEN_CAVE_GROTTO, 1

	db 8 ; coord events
	coord_event 20, 16, 1, Route24BridgeOverheadTrigger
	coord_event 21, 16, 1, Route24BridgeOverheadTrigger
	coord_event 20, 39, 1, Route24BridgeOverheadTrigger
	coord_event 21, 39, 1, Route24BridgeOverheadTrigger
	coord_event 20, 17, 0, Route24BridgeUnderfootTrigger
	coord_event 21, 17, 0, Route24BridgeUnderfootTrigger
	coord_event 20, 38, 0, Route24BridgeUnderfootTrigger
	coord_event 21, 38, 0, Route24BridgeUnderfootTrigger

	db 0 ; bg events

	db 1 ; object events
	cavebase_event 18,  5, SECRET_BASE_ROUTE_24, EVENT_SECRET_BASE_ROUTE_24

	const_def 1 ; object constants

Route24TileScript:
	checkscene
	iftrue .underfoot
	callasm Route24_OverheadBridgeAsm
	return

.underfoot:
	callasm Route24_UnderfootBridgeAsm
	return

Route24_OverheadBridgeAsm:
	changebridgeblock 20, 18, $e0, ROUTE_24
	changebridgeblock 20, 20, $de, ROUTE_24
	changebridgeblock 20, 22, $de, ROUTE_24
	changebridgeblock 20, 24, $de, ROUTE_24
	changebridgeblock 20, 26, $de, ROUTE_24
	changebridgeblock 20, 28, $de, ROUTE_24
	changebridgeblock 20, 30, $de, ROUTE_24
	changebridgeblock 20, 32, $de, ROUTE_24
	changebridgeblock 20, 34, $de, ROUTE_24
	changebridgeblock 20, 36, $de, ROUTE_24
	changebridgeblock 20, 38, $e2, ROUTE_24
	jp BufferScreen

Route24_UnderfootBridgeAsm:
	changebridgeblock 20, 18, $da, ROUTE_24
	changebridgeblock 20, 20, $da, ROUTE_24
	changebridgeblock 20, 22, $da, ROUTE_24
	changebridgeblock 20, 24, $da, ROUTE_24
	changebridgeblock 20, 26, $da, ROUTE_24
	changebridgeblock 20, 28, $da, ROUTE_24
	changebridgeblock 20, 30, $da, ROUTE_24
	changebridgeblock 20, 32, $da, ROUTE_24
	changebridgeblock 20, 34, $da, ROUTE_24
	changebridgeblock 20, 36, $da, ROUTE_24
	changebridgeblock 20, 38, $d1, ROUTE_24
	jp BufferScreen

Route24BridgeOverheadTrigger:
	callasm Route24_OverheadBridgeAsm
	thisasm
	xor a
	jr Route24_FinishBridge

Route24BridgeUnderfootTrigger:
	callasm Route24_UnderfootBridgeAsm
	thisasm
	ld a, 1
Route24_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute24Trigger], a ; setscene a
	jp RefreshScreen_BridgeUpdate ; refreshscreen (optimized)
