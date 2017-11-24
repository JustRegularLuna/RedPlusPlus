Route18GateScript:
	ld hl, wd732
	res 5, [hl]
	call EnableAutoTextBoxDrawing
	ld a, [wRoute18GateCurScript]
	ld hl, Route18GateScriptPointers
	jp CallFunctionInTable

Route18GateScriptPointers:
	dw Route18GateScript0
	dw Route18GateScript1
	dw Route18GateScript2
	dw Route18GateScript3

Route18GateScript0:
	call Route16GateScript_49755
	ret nz
	ld hl, CoordsData_498cc
	call ArePlayerCoordsInArray
	ret nc
	ld a, $2
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	xor a
	ld [hJoyHeld], a
	ld a, [wCoordIndex]
	cp $1
	jr z, .asm_498c6
	ld a, [wCoordIndex]
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	ld b, 0
	ld c, a
	ld a, D_UP
	ld hl, wSimulatedJoypadStatesEnd
	call FillMemory
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wRoute18GateCurScript], a
	ret
.asm_498c6
	ld a, $2
	ld [wRoute18GateCurScript], a
	ret

CoordsData_498cc:
	db $03,$04
	db $04,$04
	db $05,$04
	db $06,$04
	db $FF

Route18GateScript1:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, $f0
	ld [wJoyIgnore], a

Route18GateScript2:
	ld a, $1
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_RIGHT
	ld [wSimulatedJoypadStatesEnd], a
	call StartSimulatingJoypadStates
	ld a, $3
	ld [wRoute18GateCurScript], a
	ret

Route18GateScript3:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld hl, wd730
	res 7, [hl]
	ld a, $0
	ld [wRoute18GateCurScript], a
	ret

Route18GateTextPointers:
	dw Route18GateText1
	dw Route18GateText2

Route18GateText1:
	TX_ASM
	call Route16GateScript_49755
	jr z, .asm_3c84d
	ld hl, Route18GateText_4992d
	call PrintText
	jr .asm_a8410
.asm_3c84d
	ld hl, Route18GateText_49928
	call PrintText
.asm_a8410
	jp TextScriptEnd

Route18GateText_49928:
	TX_FAR _Route18GateText_49928
	db "@"

Route18GateText_4992d:
	TX_FAR _Route18GateText_4992d
	db "@"

Route18GateText2:
	TX_FAR _Route18GateText_49932
	db "@"
