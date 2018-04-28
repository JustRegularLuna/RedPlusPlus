WonderTrade::
	ld hl, .Text_WonderTradeQuestion
	call PrintText
	call YesNoBox
	ret c

	ld hl, .Text_WonderTradePrompt
	call PrintText

	ld b, 6
	farcall SelectTradeOrDaycareMon
	ret c

	ld a, [CurPartySpecies]
;	cp EGG
;	jr nz, .continue
;	ld hl, .Text_WonderTradeCantTradeEgg
;	jp PrintText

.continue
	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld de, StringBuffer1
	call CopyTradeName
	ld hl, .Text_WonderTradeConfirm
	call PrintText
	call YesNoBox
	ret c

	ld hl, .Text_WonderTradeSetup
	call PrintText

	call DoWonderTrade

	ld hl, .Text_WonderTradeReady
	call PrintText

	call DisableSpriteUpdates
	predef TradeAnimation
	call ReturnToMapWithSpeechTextbox

	ld hl, .Text_WonderTradeComplete
	call PrintText
	jp RestartMapMusic

.Text_WonderTradeQuestion:
	text_jump WonderTradeQuestionText
	db "@"

.Text_WonderTradePrompt:
	text_jump WonderTradePromptText
	db "@"

;.Text_WonderTradeCantTradeEgg:
;	text_jump WonderTradeCantTradeEggText
;	db "@"

.Text_WonderTradeConfirm:
	text_jump WonderTradeConfirmText
	db "@"

.Text_WonderTradeSetup:
	text_jump WonderTradeSetupText
	db "@"

.Text_WonderTradeReady:
	text_jump WonderTradeReadyText
	db "@"

.Text_WonderTradeComplete:
	text_jump WonderTradeCompleteText
	start_asm
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld hl, .trade_done
	ret

.trade_done
	text_jump WonderTradeDoneFanfare
	db "@"

DoWonderTrade:
	ld a, [CurPartySpecies]
	ld [wPlayerTrademonSpecies], a

.random_trademon
	ld a, NUM_POKEMON
	call RandomRange
	inc a
	ld [wOTTrademonSpecies], a
	call CheckValidLevel
	and a
	jr nz, .random_trademon
	ld a, [wPlayerTrademonSpecies]
	ld b, a
	ld a, [wOTTrademonSpecies]
	cp b
	jr z, .random_trademon

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

	ld a, [wOTTrademonSpecies]
	ld de, wOTTrademonNickname
	call GetTradeMonName
	call CopyTradeName

	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonNickname
	call CopyTradeName

	call Random
	ld [Buffer1], a
	call Random
	ld [Buffer1 + 1], a
	ld hl, Buffer1
	ld de, wOTTrademonID
	call Trade_CopyTwoBytes

	ld hl, PartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonID
	call Trade_CopyTwoBytes

	call GetWonderTradeOTName
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

	call GetWonderTradeOTGender
	ld b, a

	; Random Ball
	; 2/3 chance of Poké Ball, 1/3 chance of other
.random_ball
	ld a, PREMIER_BALL * 2 - 2
	call RandomRange
	cp PREMIER_BALL - 2
	jr nc, .poke_ball
	cp MASTER_BALL - 2
	jr z, .random_ball
	cp SAFARI_BALL - 2
	jr z, .random_ball
	inc a
	inc a
	jr .got_ball
.poke_ball
	ld a, POKE_BALL
.got_ball
	ld c, a

	farcall SetGiftPartyMonCaughtData

	; Random DVs
	call Random
	ld [Buffer1], a
	call Random
	ld [Buffer1 + 1], a
	call Random
	ld [Buffer1 + 2], a
	ld hl, Buffer1
	ld de, wOTTrademonDVs
	call Trade_CopyThreeBytes

	ld hl, PartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonDVs
	call Trade_CopyThreeBytes

	; Random nature
	ld a, NUM_NATURES
	call RandomRange
	ld b, a
	; Random ability
	ld a, 3
	call RandomRange
rept 5
	sla a
endr
	add b
	ld b, a
	; Random shininess (1 in 1,024)
	call Random
	and a
	jr nz, .not_shiny
	call Random
	cp $40
	jr nc, .not_shiny
	ld a, b
	or SHINY_MASK
	ld b, a
.not_shiny
	ld a, b
	ld [Buffer1], a
	; Random gender (50-50)
	call Random
	and GENDER_MASK
	ld b, a
	; Form
	ld a, [wOTTrademonSpecies]
	cp EKANS
	jr z, .ekans_arbok
	cp ARBOK
	jr z, .ekans_arbok
	cp MAGIKARP
	jr z, .magikarp
	ld a, 1
	jr .got_form_count
.ekans_arbok
	ld a, 2
	jr .got_form_count
.magikarp
	ld a, NUM_MAGIKARP
.got_form_count
	push bc
	call RandomRange
	inc a
	ld b, a
	ld a, [wOTTrademonSpecies]
	cp MAGIKARP
	jr nz, .not_first_magikarp
	ld a, [wFirstMagikarpSeen]
	and a
	jr nz, .not_first_magikarp
	ld a, b
	ld [wFirstMagikarpSeen], a
.not_first_magikarp
	ld a, b
	pop bc
	add b
	ld [Buffer1 + 1], a
	ld hl, Buffer1
	ld de, wOTTrademonPersonality
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Personality
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	ld hl, wOTTrademonPersonality
	call Trade_CopyTwoBytes

	ld hl, PartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfLastPartymon
	call GetWonderTradeHeldItem
	ld [de], a

.compute_trademon_stats
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
	farcall GivePokerusToWonderTradeMon
	pop af
	ld [CurPartyMon], a
	pop hl
	pop de
	pop bc
	pop af
	ret


GetWonderTradeOTName:
; pick from WonderTradeOTNames1 if [wOTTrademonID] is even,
; WonderTradeOTNames2 if odd, using [wOTTrademonID+1] as the index.
	ld hl, wOTTrademonID
	ld a, [hli]
	and 1
	ld a, [hl]
	ld hl, WonderTradeOTNames1
	jr z, .ok
	ld hl, WonderTradeOTNames2
.ok
	lb bc, 0, PLAYER_NAME_LENGTH
	jp AddNTimes

INCLUDE "data/events/wonder_trade/ot_names.asm"

GetWonderTradeOTGender:
; pick from .WonderTradeOTGenders1 if [wOTTrademonID] is even,
; WonderTradeOTGenders2 if odd, using [wOTTrademonID+1] as the index.
	ld hl, wOTTrademonID
	ld a, [hli]
	and 1
	ld a, [hl]
	ld hl, WonderTradeOTGenders1
	jr z, .ok
	ld hl, WonderTradeOTGenders2
.ok
	ld c, a
;	ld b, CHECK_FLAG
;	predef FlagPredef
;	ld a, c
;	and a
;	ret z ; MALE
;	ld a, FEMALE
	ld b, 0
	add hl, bc
	ld a, [hl]
	ret

INCLUDE "data/events/wonder_trade/ot_genders.asm"

GetWonderTradeHeldItem:
	ld hl, WonderTradeHeldItems
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	jr .loop
.ok
	ld a, [hli]
	cp -1
	ld a, NO_ITEM
	ret z
	ld a, [hli]
	ret

INCLUDE "data/events/wonder_trade/held_items.asm"

CheckValidLevel:
; Don't receive Pokémon outside a valid level range.
; Legendaries and other banned Pokémon have a "valid" range of 255 to 255.
	ld hl, PartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
	call Trade_GetAttributeOfCurrentPartymon
	ld a, [hl]
	ld d, a

	ld a, [wOTTrademonSpecies]
	ld hl, ValidPokemonLevels
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc

	ld a, [hli]
	dec a
	cp d
	ret nc

	ld a, [hl]
	cp d
	ret c

	xor a
	ret

INCLUDE "data/pokemon/valid_levels.asm"
