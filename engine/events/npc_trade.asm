NPCTrade:: ; fcba8
	ld a, e
	ld [wJumptableIndex], a
	call Trade_GetDialog
	ld b, CHECK_FLAG
	call TradeFlagAction
	ld a, TRADE_AFTER
	jr nz, .done

	ld a, TRADE_INTRO
	call PrintTradeText

	call YesNoBox
	ld a, TRADE_CANCEL
	jr c, .done

; Select givemon from party
	ld b, 6
	farcall SelectTradeOrDaycareMon
	ld a, TRADE_CANCEL
	jr c, .done

	ld e, TRADE_GIVEMON
	call GetTradeAttribute
	ld a, [CurPartySpecies]
	cp [hl]
	ld a, TRADE_WRONG
	jr nz, .done

	ld b, SET_FLAG
	call TradeFlagAction

	ld hl, ConnectLinkCableText
	call PrintText

	call DoNPCTrade
	call .TradeAnimation
	call GetTradeMonNames

	ld hl, TradedForText
	call PrintText

	call RestartMapMusic

	ld a, TRADE_COMPLETE

.done
	jp PrintTradeText
; fcc07

.TradeAnimation: ; fcc07
	call DisableSpriteUpdates
	ld a, [wJumptableIndex]
	push af
	ld a, [wcf64]
	push af
	predef TradeAnimation
	pop af
	ld [wcf64], a
	pop af
	ld [wJumptableIndex], a
	jp ReturnToMapWithSpeechTextbox
; fcc23

TradeFlagAction: ; fcc4a
	ld hl, wTradeFlags
	ld a, [wJumptableIndex]
	ld c, a
	predef FlagPredef
	ld a, c
	and a
	ret
; fcc59

Trade_GetDialog: ; fcc59
	ld e, TRADE_DIALOG
	call GetTradeAttribute
	ld a, [hl]
	ld [wcf64], a
	ret
; fcc63

DoNPCTrade: ; fcc63
	ld e, TRADE_GIVEMON
	call GetTradeAttribute
	ld a, [hl]
	ld [wPlayerTrademonSpecies], a

	ld e, TRADE_GETMON
	call GetTradeAttribute
	ld a, [hl]
	ld [wOTTrademonSpecies], a

	ld a, [wPlayerTrademonSpecies]
	ld de, wPlayerTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonSpeciesName
	call GetTradeMonName
	call CopyTradeName

	ld hl, PartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonOTName
	call CopyTradeName

	ld hl, PlayerName
	ld de, wPlayerTrademonSenderName
	call CopyTradeName

	ld hl, PartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonID
	call Trade_CopyTwoBytes

	ld hl, PartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonDVs
	call Trade_CopyThreeBytes

	ld hl, PartyMon1Personality
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, wPlayerTrademonPersonality
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld b, h
	ld c, l
	farcall GetCaughtGender
	ld a, c
	ld [wPlayerTrademonCaughtData], a

	xor a
	ld [wOTTrademonCaughtData], a

	ld hl, PartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld a, [hl]
	ld [CurPartyLevel], a
	ld a, [wOTTrademonSpecies]
	ld [CurPartySpecies], a
	xor a
	ld [MonType], a
	ld [wPokemonWithdrawDepositParameter], a
	farcall RemoveMonFromPartyOrBox
	predef TryAddMonToParty

	ld e, TRADE_DIALOG
	call GetTradeAttribute
	ld a, [hl]
	cp 3
	ld b, MALE
	jr c, .male2
	ld b, FEMALE
.male2
	ld e, TRADE_BALL
	call GetTradeAttribute
	ld a, [hl]
	ld c, a
	farcall SetGiftPartyMonCaughtData

	ld e, TRADE_NICK
	call GetTradeAttribute
	ld de, wOTTrademonNickname
	call CopyTradeName

	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonNickname
	call CopyTradeName

	ld e, TRADE_OT_NAME
	call GetTradeAttribute
	push hl
	ld de, wOTTrademonOTName
	call CopyTradeName
	pop hl
	ld de, wOTTrademonSenderName
	call CopyTradeName

	ld hl, PartyMonOT
	ld bc, NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonOTName
	call CopyTradeName

	ld e, TRADE_DVS
	call GetTradeAttribute
	ld de, wOTTrademonDVs
	call Trade_CopyThreeBytes

	ld hl, PartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonDVs
	call Trade_CopyThreeBytes

	ld e, TRADE_PERSONALITY
	call GetTradeAttribute
	ld de, wOTTrademonPersonality
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Personality
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonPersonality
	call Trade_CopyTwoBytes

	ld e, TRADE_OT_ID
	call GetTradeAttribute
	ld de, wOTTrademonID + 1
	call Trade_CopyTwoBytesReverseEndian

	ld hl, PartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonID
	call Trade_CopyTwoBytes

	ld e, TRADE_ITEM
	call GetTradeAttribute
	push hl
	ld hl, PartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	pop hl
	ld a, [hl]
	ld [de], a

	push af
	push bc
	push de
	push hl
	ld a, [CurPartyMon]
	push af
	ld a, [PartyCount]
	dec a
	ld [CurPartyMon], a
	farcall ComputeNPCTrademonStats
	pop af
	ld [CurPartyMon], a
	pop hl
	pop de
	pop bc
	pop af
	ret
; fcdc2


GetTradeAttribute: ; 0xfcdc2
	ld d, 0
	push de
	ld a, [wJumptableIndex]
	and $f
	swap a
	ld e, a
	ld d, 0
	ld hl, NPCTrades
	add hl, de
	add hl, de
	pop de
	add hl, de
	ret
; 0xfcdd7

Trade_GetAttributeOfCurrentPartymon: ; fcdd7
	ld a, [CurPartyMon]
	jp AddNTimes
; fcdde

Trade_GetAttributeOfLastPartymon: ; fcdde
	ld a, [PartyCount]
	dec a
	call AddNTimes
	ld e, l
	ld d, h
	ret
; fcde8

GetTradeMonName: ; fcde8
	push de
	ld [wd265], a
	call GetBasePokemonName
	ld hl, StringBuffer1
	pop de
	ret
; fcdf4

CopyTradeName: ; fcdf4
	ld bc, NAME_LENGTH
	jp CopyBytes
; fcdfb

Trade_CopyTwoBytes: ; fce0f
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ret
; fce15

Trade_CopyTwoBytesReverseEndian: ; fce15
	ld a, [hli]
	ld [de], a
	dec de
	ld a, [hl]
	ld [de], a
	ret
; fce1b

Trade_CopyThreeBytes:
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ret

GetTradeMonNames: ; fce1b
	ld e, TRADE_GETMON
	call GetTradeAttribute
	ld a, [hl]
	call GetTradeMonName

	ld de, StringBuffer2
	call CopyTradeName

	ld e, TRADE_GIVEMON
	call GetTradeAttribute
	ld a, [hl]
	call GetTradeMonName

	ld de, wMonOrItemNameBuffer
	call CopyTradeName

	ld hl, StringBuffer1
.loop
	ld a, [hli]
	cp "@"
	jr nz, .loop

	ld [hl], "@"
	ret
; fce58


INCLUDE "data/events/npc_trades.asm"


PrintTradeText: ; fcf38
	push af
	call GetTradeMonNames
	pop af
	ld bc, 2 * 4
	ld hl, TradeTexts
	call AddNTimes
	ld a, [wcf64]
	ld c, a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp PrintText
; fcf53

TradeTexts: ; fcf53
; intro
	dw TradeIntroText1
	dw TradeIntroText2
	dw TradeIntroText3
	dw TradeIntroText4

; cancel
	dw TradeCancelText1
	dw TradeCancelText2
	dw TradeCancelText3
	dw TradeCancelText4

; wrong mon
	dw TradeWrongText1
	dw TradeWrongText2
	dw TradeWrongText3
	dw TradeWrongText4

; completed
	dw TradeCompleteText1
	dw TradeCompleteText2
	dw TradeCompleteText3
	dw TradeCompleteText4

; after
	dw TradeAfterText1
	dw TradeAfterText2
	dw TradeAfterText3
	dw TradeAfterText4
; fcf7b


ConnectLinkCableText: ; 0xfcf7b
	; OK, connect the Game Link Cable.
	text_jump UnknownText_0x1bd407
	db "@"
; 0xfcf80


TradedForText: ; 0xfcf80
	; traded givemon for getmon
	text_jump UnknownText_0x1bd429
	start_asm
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld hl, .done
	ret

.done
	; sound_dex_fanfare_80_109
	; interpret_data
	text_jump UnknownText_0x1bd445
	db "@"
; 0xfcf97


TradeIntroText1: ; 0xfcf97
	; I collect #MON. Do you have @ ? Want to trade it for my @ ?
	text_jump UnknownText_0x1bd449
	db "@"
; 0xfcf9c

TradeCancelText1: ; 0xfcf9c
	; You don't want to trade? Aww…
	text_jump UnknownText_0x1bd48c
	db "@"
; 0xfcfa1

TradeWrongText1: ; 0xfcfa1
	; Huh? That's not @ .  What a letdown…
	text_jump UnknownText_0x1bd4aa
	db "@"
; 0xfcfa6

TradeCompleteText1: ; 0xfcfa6
	; Yay! I got myself @ ! Thanks!
	text_jump UnknownText_0x1bd4d2
	db "@"
; 0xfcfab

TradeAfterText1: ; 0xfcfab
	; Hi, how's my old @  doing?
	text_jump UnknownText_0x1bd4f4
	db "@"
; 0xfcfb0


TradeIntroText2:
TradeIntroText3: ; 0xfcfb0
	; Hi, I'm looking for this #MON. If you have @ , would you trade it for my @ ?
	text_jump UnknownText_0x1bd512
	db "@"
; 0xfcfb5

TradeCancelText2:
TradeCancelText3: ; 0xfcfb5
	; You don't have one either? Gee, that's really disappointing…
	text_jump UnknownText_0x1bd565
	db "@"
; 0xfcfba

TradeWrongText2:
TradeWrongText3: ; 0xfcfba
	; You don't have @ ? That's too bad, then.
	text_jump UnknownText_0x1bd5a1
	db "@"
; 0xfcfbf

TradeCompleteText2: ; 0xfcfbf
	; Great! Thank you! I finally got @ .
	text_jump UnknownText_0x1bd5cc
	db "@"
; 0xfcfc4

TradeAfterText2: ; 0xfcfc4
	; Hi! The @ you traded me is doing great!
	text_jump UnknownText_0x1bd5f4
	db "@"
; 0xfcfc9


TradeIntroText4: ; 0xfcfc9
	; 's cute, but I don't have it. Do you have @ ? Want to trade it for my @ ?
	text_jump UnknownText_0x1bd621
	db "@"
; 0xfcfce

TradeCancelText4: ; 0xfcfce
	; You don't want to trade? Oh, darn…
	text_jump UnknownText_0x1bd673
	db "@"
; 0xfcfd3

TradeWrongText4: ; 0xfcfd3
	; That's not @ . Please trade with me if you get one.
	text_jump UnknownText_0x1bd696
	db "@"
; 0xfcfd8

TradeCompleteText4: ; 0xfcfd8
	; Wow! Thank you! I always wanted @ !
	text_jump UnknownText_0x1bd6cd
	db "@"
; 0xfcfdd

TradeAfterText4: ; 0xfcfdd
	; How is that @  I traded you doing? Your @ 's so cute!
	text_jump UnknownText_0x1bd6f5
	db "@"
; 0xfcfe2


TradeCompleteText3: ; 0xfcfe2
	; Uh? What happened?
	text_jump UnknownText_0x1bd731
	db "@"
; 0xfcfe7

TradeAfterText3: ; 0xfcfe7
	; Trading is so odd… I still have a lot to learn about it.
	text_jump UnknownText_0x1bd745
	db "@"
; 0xfcfec
