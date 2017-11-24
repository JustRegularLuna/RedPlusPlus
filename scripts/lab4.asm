Lab4Script:
	jp EnableAutoTextBoxDrawing

Lab4TextPointers:
	dw Lab4Text1
	dw Lab4Text2

Lab4Script_GetFossilsInBag:
; construct a list of all fossils in the player's bag
	xor a
	ld [wFilteredBagItemsCount], a
	ld de, wFilteredBagItems
	ld hl, FossilsList
.loop
	ld a, [hli]
	and a
	jr z, .done
	push hl
	push de
	ld [wd11e], a
	ld b, a
	predef GetQuantityOfItemInBag
	pop de
	pop hl
	ld a, b
	and a
	jr z, .loop

	; A fossil's in the bag
	ld a, [wd11e]
	ld [de], a
	inc de
	push hl
	ld hl, wFilteredBagItemsCount
	inc [hl]
	pop hl
	jr .loop
.done
	ld a, $ff
	ld [de], a
	ret

FossilsList:
	db DOME_FOSSIL
	db HELIX_FOSSIL
	db OLD_AMBER
	db $00

Lab4Text1:
	TX_ASM
	CheckEvent EVENT_GAVE_FOSSIL_TO_LAB
	jr nz, .asm_75d96
	ld hl, Lab4Text_75dc6
	call PrintText
	call Lab4Script_GetFossilsInBag
	ld a, [wFilteredBagItemsCount]
	and a
	jr z, .asm_75d8d
	callba GiveFossilToCinnabarLab
	jr .asm_75d93
.asm_75d8d
	ld hl, Lab4Text_75dcb
	call PrintText
.asm_75d93
	jp TextScriptEnd
.asm_75d96
	CheckEventAfterBranchReuseA EVENT_LAB_STILL_REVIVING_FOSSIL, EVENT_GAVE_FOSSIL_TO_LAB
	jr z, .asm_75da2
	ld hl, Lab4Text_75dd0
	call PrintText
	jr .asm_75d93
.asm_75da2
	call LoadFossilItemAndMonNameBank1D
	ld hl, Lab4Text_75dd5
	call PrintText
	SetEvent EVENT_LAB_HANDING_OVER_FOSSIL_MON
	ld a, [wFossilMon]
	ld b, a
	ld c, 30
	call GivePokemon
	jr nc, .asm_75d93
	ResetEvents EVENT_GAVE_FOSSIL_TO_LAB, EVENT_LAB_STILL_REVIVING_FOSSIL, EVENT_LAB_HANDING_OVER_FOSSIL_MON
	jr .asm_75d93

Lab4Text_75dc6:
	TX_FAR _Lab4Text_75dc6
	db "@"

Lab4Text_75dcb:
	TX_FAR _Lab4Text_75dcb
	db "@"

Lab4Text_75dd0:
	TX_FAR _Lab4Text_75dd0
	db "@"

Lab4Text_75dd5:
	TX_FAR _Lab4Text_75dd5
	db "@"

Lab4Text2:
	TX_ASM
	ld hl, Trader9Name
	call SetCustomName
	ld a, $9
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd
	
Trader9Name:
	db "Ross@"

LoadFossilItemAndMonNameBank1D:
	jpba LoadFossilItemAndMonName
