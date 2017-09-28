Route18GateUpstairsScript:
	jp DisableAutoTextBoxDrawing

Route18GateUpstairsTextPointers:
	dw Route18GateUpstairsText1
	dw Route18GateUpstairsText2
	dw Route18GateUpstairsText3

Route18GateUpstairsText1:
	TX_ASM
	ld hl, Trader5Name
	call SetCustomName
	ld a, $5
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd
	
Trader5Name:
	db "Jake@"

Route18GateUpstairsText2:
	TX_ASM
	ld hl, Route18GateUpstairsText_49993
	jp GateUpstairsScript_PrintIfFacingUp

Route18GateUpstairsText_49993:
	TX_FAR _Route18GateUpstairsText_49993
	db "@"

Route18GateUpstairsText3:
	TX_ASM
	ld hl, Route18GateUpstairsText_4999f
	jp GateUpstairsScript_PrintIfFacingUp

Route18GateUpstairsText_4999f:
	TX_FAR _Route18GateUpstairsText_4999f
	db "@"
