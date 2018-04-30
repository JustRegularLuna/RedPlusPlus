Route47_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, Route47TileScript

	db 6 ; warp events
	warp_event 67, 21, CLIFF_EDGE_GATE, 2
	warp_event 53, 21, CLIFF_CAVE, 1
	warp_event 52, 17, CLIFF_CAVE, 2
	warp_event 53, 29, CLIFF_CAVE, 3
	warp_event 11, 23, QUIET_CAVE_1F, 1
	warp_event  8, 23, EMBEDDED_TOWER, 1

	db 32 ; coord events
	coord_event 42, 24, 1, Route47Bridge1OverheadTrigger
	coord_event 42, 25, 1, Route47Bridge1OverheadTrigger
	coord_event 51, 24, 1, Route47Bridge1OverheadTrigger
	coord_event 51, 25, 1, Route47Bridge1OverheadTrigger
	coord_event 43, 24, 0, Route47Bridge1UnderfootTrigger
	coord_event 43, 25, 0, Route47Bridge1UnderfootTrigger
	coord_event 50, 24, 0, Route47Bridge1UnderfootTrigger
	coord_event 50, 25, 0, Route47Bridge1UnderfootTrigger
	coord_event 42, 18, 1, Route47Bridge2OverheadTrigger
	coord_event 42, 19, 1, Route47Bridge2OverheadTrigger
	coord_event 51, 18, 1, Route47Bridge2OverheadTrigger
	coord_event 51, 19, 1, Route47Bridge2OverheadTrigger
	coord_event 43, 18, 0, Route47Bridge2UnderfootTrigger
	coord_event 43, 19, 0, Route47Bridge2UnderfootTrigger
	coord_event 50, 18, 0, Route47Bridge2UnderfootTrigger
	coord_event 50, 19, 0, Route47Bridge2UnderfootTrigger
	coord_event 18, 24, 1, Route47Bridge3OverheadTrigger
	coord_event 18, 25, 1, Route47Bridge3OverheadTrigger
	coord_event 27, 24, 1, Route47Bridge3OverheadTrigger
	coord_event 27, 25, 1, Route47Bridge3OverheadTrigger
	coord_event 19, 24, 0, Route47Bridge3UnderfootTrigger
	coord_event 19, 25, 0, Route47Bridge3UnderfootTrigger
	coord_event 26, 24, 0, Route47Bridge3UnderfootTrigger
	coord_event 26, 25, 0, Route47Bridge3UnderfootTrigger
	coord_event 18, 16, 1, Route47Bridge4OverheadTrigger
	coord_event 18, 17, 1, Route47Bridge4OverheadTrigger
	coord_event 27, 16, 1, Route47Bridge4OverheadTrigger
	coord_event 27, 17, 1, Route47Bridge4OverheadTrigger
	coord_event 19, 16, 0, Route47Bridge4UnderfootTrigger
	coord_event 19, 17, 0, Route47Bridge4UnderfootTrigger
	coord_event 26, 16, 0, Route47Bridge4UnderfootTrigger
	coord_event 26, 17, 0, Route47Bridge4UnderfootTrigger

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants

Route47TileScript:
	checkscene
	iftrue .underfoot
	callasm .overhead_asm
	return

.underfoot:
	callasm .underfoot_asm
	return

.overhead_asm:
	; bridge 1
	changebridgeblock 42, 24, $bc, ROUTE_47
	changebridgeblock 44, 24, $bd, ROUTE_47
	changebridgeblock 46, 24, $bd, ROUTE_47
	changebridgeblock 48, 24, $bd, ROUTE_47
	changebridgeblock 50, 24, $be, ROUTE_47
	; bridge 2
	changebridgeblock 44, 18, $c1, ROUTE_47
	changebridgeblock 46, 18, $c1, ROUTE_47
	changebridgeblock 48, 18, $c1, ROUTE_47
	; bridge 3
	changebridgeblock 20, 24, $c1, ROUTE_47
	changebridgeblock 22, 24, $c1, ROUTE_47
	changebridgeblock 24, 24, $c1, ROUTE_47
	; bridge 4
	changebridgeblock 18, 16, $bc, ROUTE_47
	changebridgeblock 20, 16, $bd, ROUTE_47
	changebridgeblock 22, 16, $bd, ROUTE_47
	changebridgeblock 24, 16, $bd, ROUTE_47
	changebridgeblock 26, 16, $c2, ROUTE_47
	jp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 42, 24, $9c, ROUTE_47
	changebridgeblock 44, 24, $9b, ROUTE_47
	changebridgeblock 46, 24, $9b, ROUTE_47
	changebridgeblock 48, 24, $9b, ROUTE_47
	changebridgeblock 50, 24, $9d, ROUTE_47
	; bridge 2
	changebridgeblock 44, 18, $9b, ROUTE_47
	changebridgeblock 46, 18, $9b, ROUTE_47
	changebridgeblock 48, 18, $9b, ROUTE_47
	; bridge 3
	changebridgeblock 20, 24, $9b, ROUTE_47
	changebridgeblock 22, 24, $9b, ROUTE_47
	changebridgeblock 24, 24, $9b, ROUTE_47
	; bridge 4
	changebridgeblock 18, 16, $9c, ROUTE_47
	changebridgeblock 20, 16, $9b, ROUTE_47
	changebridgeblock 22, 16, $9b, ROUTE_47
	changebridgeblock 24, 16, $9b, ROUTE_47
	changebridgeblock 26, 16, $9f, ROUTE_47
	jp BufferScreen

Route47_FinishOverheadBridge:
	xor a
	jr Route47_FinishBridge

Route47_FinishUnderfootBridge:
	ld a, $1
Route47_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute47Trigger], a ; setscene a
	jp RefreshScreen_BridgeUpdate ; refreshscreen (optimized)

Route47Bridge1OverheadTrigger:
	thisasm
	changebridgeblock 42, 24, $bc, ROUTE_47
	changebridgeblock 44, 24, $bd, ROUTE_47
	changebridgeblock 46, 24, $bd, ROUTE_47
	changebridgeblock 48, 24, $bd, ROUTE_47
	changebridgeblock 50, 24, $be, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge1UnderfootTrigger:
	thisasm
	changebridgeblock 42, 24, $9c, ROUTE_47
	changebridgeblock 44, 24, $9b, ROUTE_47
	changebridgeblock 46, 24, $9b, ROUTE_47
	changebridgeblock 48, 24, $9b, ROUTE_47
	changebridgeblock 50, 24, $9d, ROUTE_47
	jp Route47_FinishUnderfootBridge

Route47Bridge2OverheadTrigger:
	thisasm
	changebridgeblock 44, 18, $bd, ROUTE_47
	changebridgeblock 46, 18, $bd, ROUTE_47
	changebridgeblock 48, 18, $bd, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge2UnderfootTrigger:
	thisasm
	changebridgeblock 44, 18, $9b, ROUTE_47
	changebridgeblock 46, 18, $9b, ROUTE_47
	changebridgeblock 48, 18, $9b, ROUTE_47
	jp Route47_FinishUnderfootBridge

Route47Bridge3OverheadTrigger:
	thisasm
	changebridgeblock 20, 24, $c1, ROUTE_47
	changebridgeblock 22, 24, $c1, ROUTE_47
	changebridgeblock 24, 24, $c1, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge3UnderfootTrigger:
	thisasm
	changebridgeblock 20, 24, $9b, ROUTE_47
	changebridgeblock 22, 24, $9b, ROUTE_47
	changebridgeblock 24, 24, $9b, ROUTE_47
	jp Route47_FinishUnderfootBridge

Route47Bridge4OverheadTrigger:
	thisasm
	changebridgeblock 18, 16, $bc, ROUTE_47
	changebridgeblock 20, 16, $bd, ROUTE_47
	changebridgeblock 22, 16, $bd, ROUTE_47
	changebridgeblock 24, 16, $bd, ROUTE_47
	changebridgeblock 26, 16, $c2, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge4UnderfootTrigger:
	thisasm
	changebridgeblock 18, 16, $9c, ROUTE_47
	changebridgeblock 20, 16, $9b, ROUTE_47
	changebridgeblock 22, 16, $9b, ROUTE_47
	changebridgeblock 24, 16, $9b, ROUTE_47
	changebridgeblock 26, 16, $9f, ROUTE_47
	jp Route47_FinishUnderfootBridge
