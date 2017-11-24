Lab2Script:
	jp EnableAutoTextBoxDrawing

Lab2TextPointers:
	dw Lab2Text1
	dw Lab2Text2
	dw Lab2Text3

Lab2Text1:
	TX_ASM
	
	; check if you have already received the ticket
	ld a, [wExtraFlags]
	bit 4, a
	jr nz, .alreadyGiven
	
	; if not already given, talk about legendary birds
	ld hl, TalkAboutBirds
	call PrintText
	
	; check if you have seen all 3 legendary birds
	; exit the script if one is missing
	ld a, ARTICUNO
	call CheckBirdSeen
	jr z, .done
	ld a, ZAPDOS
	call CheckBirdSeen
	jr z, .done
	ld a, MOLTRES
	call CheckBirdSeen
	jr z, .done
	
	; if all are seen, talk about that and try to give ticket
	ld hl, SeenAllBirdsText
	call PrintText
	ld b, MYSTIC_TICKET
	ld c, 1
	call GiveItem
	jr nc, .bagFull
	
	; if the item was given successfully, say so...
	ld hl, ReceivedMysticTicketText
	call PrintText
	
	; ...mark the item as given...
	ld hl, wExtraFlags
	set 4, [hl]
	
	; ...and talk about the item
.alreadyGiven
	ld hl, TalkAboutNavelRockText
	call PrintText
	jp TextScriptEnd
	
	; if you haven't seen all of them
.done
	ld hl, MysticTooBadText
	call PrintText
	jp TextScriptEnd
	
	; if there is no room in the pack, say so
.bagFull
	ld hl, NoRoomForMysticText
	call PrintText
	jp TextScriptEnd


; Checks to see if the Pokémon has been seen
; [input]: a = Pokémon ID
; [output]: z if not seen, nz if seen
CheckBirdSeen:
	dec a
	ld c,a
	ld b, FLAG_TEST
	ld hl, wPokedexSeen
	predef FlagActionPredef
	ld a,c
	and a
	ret

TalkAboutBirds:
	TX_FAR _TalkAboutBirds
	db "@"
	
MysticTooBadText:
	TX_FAR _MysticTooBadText
	db "@"
	
SeenAllBirdsText:
	TX_FAR _SeenAllBirdsText
	db "@"
	
ReceivedMysticTicketText:
	TX_FAR _ReceivedMysticTicketText
	db $0B
	db "@"
	
TalkAboutNavelRockText:
	TX_FAR _TalkAboutNavelRockText
	db "@"
	
NoRoomForMysticText:
	TX_FAR _NoMoreRoomForMysticText
	db "@"

Lab2Text2:
	TX_ASM
	ld hl, Trader7Name ; the old man
	call SetCustomName
	ld a, $7
	ld [wWhichTrade], a
	jr Lab2DoTrade

Lab2Text3:
	TX_ASM
	ld hl, Trader8Name ; the girl
	call SetCustomName
	ld a, $8
	ld [wWhichTrade], a
Lab2DoTrade:
	predef DoInGameTradeDialogue
	jp TextScriptEnd

Trader7Name:
	db "Dwayne@"
	
Trader8Name:
	db "Christy@"
