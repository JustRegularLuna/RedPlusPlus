VermilionHouse3Script: ; 19c12 (6:5c12)
	jp EnableAutoTextBoxDrawing

VermilionHouse3TextPointers: ; 19c15 (6:5c15)
	dw VermilionHouse3Text1

VermilionHouse3Text1: ; 19c17 (6:5c17)
	db $08 ; asm
	ld hl, Trader4Name
	call SetCustomName
	ld a, $4
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

Trader4Name:
	db "Jenny@"
