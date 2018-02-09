SelectMonFromParty: ; 50000
	call DisableSpriteUpdates
	xor a
	ld [PartyMenuActionText], a
	call ClearBGPalettes
	call InitPartyMenuLayout
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	call PartyMenuSelect
	jp ReturnToMapWithSpeechTextbox
; 5001d


SelectTradeOrDaycareMon: ; 5001d
	ld a, b
	ld [PartyMenuActionText], a
	call DisableSpriteUpdates
	call ClearBGPalettes
	call InitPartyMenuLayout
	call WaitBGMap
	ld b, CGB_PARTY_MENU
	call GetCGBLayout
	call SetPalettes
	call DelayFrame
	call PartyMenuSelect
	jp ReturnToMapWithSpeechTextbox
; 5003f

InitPartyMenuLayout: ; 5003f
	call LoadPartyMenuGFX
	call InitPartyMenuWithCancel
	call InitPartyMenuGFX
	call WritePartyMenuTilemap
	jp PrintPartyMenuText
; 5004f

LoadPartyMenuGFX: ; 5004f
	call LoadFontsBattleExtra
	farcall InitPartyMenuPalettes ; engine/color.asm
	farjp ClearSpriteAnims2
; 5005f


WritePartyMenuTilemap: ; 0x5005f
	ld hl, Options1
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl] ; Disable text delay
	xor a
	ld [hBGMapMode], a
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	call ByteFill ; blank the tilemap
	call GetPartyMenuTilemapPointers ; This reads from a pointer table???
.loop
	ld a, [hli]
	cp $ff
	jr z, .end ; 0x5007a $8
	push hl
	ld hl, .Jumptable
	rst JumpTable
	pop hl
	jr .loop ; 0x50082 $f3
.end
	pop af
	ld [Options1], a
	ret
; 0x50089

.Jumptable: ; 50089
	dw PlacePartyNicknames
	dw PlacePartyHPBar
	dw PlacePartyMenuHPDigits
	dw PlacePartyMonLevel
	dw PlacePartyMonStatus
	dw PlacePartyMonTMHMCompatibility
	dw PlacePartyMonEvoStoneCompatibility
	dw PlacePartyMonGender
; 5009b

PlacePartyNicknames: ; 5009b
	hlcoord 3, 1
	ld a, [PartyCount]
	and a
	jr z, .end
	ld c, a
	ld b, $0
.loop
	push bc
	push hl
	push hl
	ld hl, PartyMonNicknames
	ld a, b
	call GetNick
	pop hl
	call PlaceString
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop

.end
	dec hl
	dec hl
	ld de, .CANCEL
	jp PlaceString
; 500c8

.CANCEL: ; 500c8
	db "Cancel@"
; 500cf


PlacePartyHPBar: ; 500cf
	xor a
	ld [wHPPalIndex], a
	ld a, [PartyCount]
	and a
	ret z
	ld c, a
	ld b, $0
	hlcoord 11, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .skip
	push hl
	call PlacePartymonHPBar
	pop hl
	ld d, $6
	call DrawBattleHPBar
	ld hl, wHPPals
	ld a, [wHPPalIndex]
	ld c, a
	ld b, $0
	add hl, bc
	call SetHPPal
	ld b, CGB_PARTY_MENU_HP_PALS
	call GetCGBLayout
.skip
	ld hl, wHPPalIndex
	inc [hl]
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret
; 50117

PlacePartymonHPBar: ; 50117
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, PartyMon1HP
	call AddNTimes
	ld a, [hli]
	or [hl]
	jr nz, .not_fainted
	xor a
	ld e, a
	ld c, a
	ret

.not_fainted
	dec hl
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	predef ComputeHPBarPixels
	ret
; 50138

PlacePartyMenuHPDigits: ; 50138
	ld a, [PartyCount]
	and a
	ret z
	ld c, a
	ld b, $0
	hlcoord 13, 1
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, PartyMon1HP
	call AddNTimes
	ld e, l
	ld d, h
	pop hl
	push de
	lb bc, 2, 3
	call PrintNum
	pop de
	ld a, "/"
	ld [hli], a
	inc de
	inc de
	lb bc, 2, 3
	call PrintNum

.next
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret
; 50176

PlacePartyMonLevel: ; 50176
	ld a, [PartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 7, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, PartyMon1Level
	call AddNTimes
	ld e, l
	ld d, h
	pop hl
	ld a, [de]
	cp 100 ; This is distinct from MAX_LEVEL.
	jr nc, .ThreeDigits
	ld a, "<LV>"
	ld [hli], a
	lb bc, PRINTNUM_RIGHTALIGN | 1, 2
	; jr .okay
.ThreeDigits:
	lb bc, PRINTNUM_RIGHTALIGN | 1, 3
; .okay
	call PrintNum

.next
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret
; 501b2

PlacePartyMonStatus: ; 501b2
	ld a, [PartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 4, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, PartyMon1Status
	call AddNTimes
	ld e, l
	ld d, h
	pop hl
	call PlaceStatusString

.next
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret
; 501e0

PlacePartyMonTMHMCompatibility: ; 501e0
	ld a, [PartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 12, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld hl, PartySpecies
	ld e, b
	ld d, 0
	add hl, de
	ld a, [hl]
	ld [CurPartySpecies], a
	predef CanLearnTMHMMove
	pop hl
	call .PlaceAbleNotAble
	call PlaceString

.next
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret
; 50215

.PlaceAbleNotAble: ; 50215
	ld a, c
	and a
	jr nz, .able
	ld de, .string_not_able
	ret

.able
	ld de, .string_able
	ret
; 50221

.string_able ; 50221
	db "Able@"
; 50226

.string_not_able ; 50226
	db "Not able@"
; 5022f


PlacePartyMonEvoStoneCompatibility: ; 5022f
	ld a, [PartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 12, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	push hl
	ld a, b
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, PartyMon1Species
	call AddNTimes
	ld a, [hl]
	dec a
	ld e, a
	ld d, 0
	ld hl, EvosAttacksPointers
	add hl, de
	add hl, de
	call .DetermineCompatibility
	pop hl
	call PlaceString

.next
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop
	ret
; 50268

.DetermineCompatibility: ; 50268
	ld de, StringBuffer1
	ld a, BANK(EvosAttacksPointers)
	ld bc, 2
	call FarCopyBytes
	ld hl, StringBuffer1
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, StringBuffer1
; Only reads first 4 evolution entries
; https://hax.iimarck.us/topic/4567/
	ld a, BANK(EvosAttacks)
	ld bc, $10
	call FarCopyBytes
	ld hl, StringBuffer1
.loop2
	ld a, [hli]
	and a
	jr z, .nope
	inc hl
	inc hl
	cp EVOLVE_ITEM
	jr nz, .loop2
	dec hl
	dec hl
	ld a, [CurItem]
	cp [hl]
	inc hl
	inc hl
	jr nz, .loop2
	ld de, .string_able
	ret

.nope
	ld de, .string_not_able
	ret
; 502a3

.string_able ; 502a3
	db "Able@"
; 502a8
.string_not_able ; 502a8
	db "Not able@"
; 502b1


PlacePartyMonGender: ; 502b1
	ld a, [PartyCount]
	and a
	ret z
	ld c, a
	ld b, 0
	hlcoord 10, 2
.loop
	push bc
	push hl
	call PartyMenuCheckEgg
	jr z, .next
	ld [CurPartySpecies], a
	ld a, [CurPartyMon]
	push af
	ld a, b
	ld [CurPartyMon], a
	push hl
	xor a
	ld [MonType], a
	call GetGender
	ld a, " "
	jr c, .got_gender
	ld a, "<MALE>"
	jr nz, .got_gender
	ld a, "<FEMALE>"

.got_gender
	pop hl
	ld [hli], a
	pop af
	ld [CurPartyMon], a

.next
	pop hl
	ld de, 2 * SCREEN_WIDTH
	add hl, de
	pop bc
	inc b
	dec c
	jr nz, .loop

	ld b, CGB_PARTY_MENU
	jp GetCGBLayout
; 502ee


PartyMenuCheckEgg: ; 50389
	ld a, PartySpecies % $100
	add b
	ld e, a
	ld a, PartySpecies / $100
	adc 0
	ld d, a
	ld a, [de]
	cp EGG
	ret
; 50396

GetPartyMenuTilemapPointers: ; 50396
	ld a, [PartyMenuActionText]
	and $f0
	jr nz, .skip
	ld a, [PartyMenuActionText]
	and $f
	ld e, a
	ld d, 0
	ld hl, PartyMenuQualityPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

.skip
	ld hl, PartyMenuQualityPointers.Default
	ret
; 503b2

INCLUDE "data/party_menu_qualities.asm"


InitPartyMenuGFX: ; 503e0
	ld hl, PartyCount
	ld a, [hli]
	and a
	ret z
	ld c, a
	xor a
	ld [hObjectStructIndexBuffer], a
.loop
	push bc
	push hl
	farcall LoadPartyMenuMonIcon
	ld a, [hObjectStructIndexBuffer]
	inc a
	ld [hObjectStructIndexBuffer], a
	pop hl
	pop bc
	dec c
	jr nz, .loop
	farjp PlaySpriteAnimations
; 50405

InitPartyMenuWithCancel: ; 50405
; with cancel
	xor a
	ld [wSwitchMon], a
	ld de, PartyMenuAttributes
	call SetMenuAttributes
	ld a, [PartyCount]
	inc a
	ld [w2DMenuNumRows], a ; list length
	dec a
	ld b, a
	ld a, [wPartyMenuCursor]
	and a
	jr z, .skip
	inc b
	cp b
	jr c, .done

.skip
	ld a, 1

.done
	ld [wMenuCursorY], a
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuJoypadFilter], a
	ret
; 5042d

InitPartyMenuNoCancel: ; 0x5042d
; no cancel
	ld de, PartyMenuAttributes
	call SetMenuAttributes
	ld a, [PartyCount]
	ld [w2DMenuNumRows], a ; list length
	ld b, a
	ld a, [wPartyMenuCursor]
	and a
	jr z, .skip
	inc b
	cp b
	jr c, .done
.skip
	ld a, 1
.done
	ld [wMenuCursorY], a
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuJoypadFilter], a
	ret
; 5044f (14:444f)

PartyMenuAttributes: ; 5044f
; cursor y
; cursor x
; num rows
; num cols
; bit 6: animate sprites  bit 5: wrap around
; ?
; distance between items (hi: y, lo: x)
; allowed buttons (mask)
	db 1, 0
	db 0, 1
	db $60, $00
	dn 2, 0
	db 0
; 50457

PartyMenuSelect: ; 0x50457
; sets carry if exitted menu.
	call StaticMenuJoypad
	call PlaceHollowCursor
	ld a, [PartyCount]
	inc a
	ld b, a
	ld a, [wMenuCursorY] ; menu selection?
	cp b
	jr z, .exitmenu ; CANCEL
	ld [wPartyMenuCursor], a
	ld a, [hJoyLast]
	ld b, a
	bit B_BUTTON_F, b
	jr nz, .exitmenu ; B button
	ld a, [wMenuCursorY]
	dec a
	ld [CurPartyMon], a
	ld c, a
	ld b, $0
	ld hl, PartySpecies
	add hl, bc
	ld a, [hl]
	ld [CurPartySpecies], a

	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	and a
	ret

.exitmenu
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	scf
	ret
; 0x5049a


PrintPartyMenuText: ; 5049a
	hlcoord 0, 14
	lb bc, 2, 18
	call TextBox
	ld a, [PartyCount]
	and a
	jr nz, .haspokemon
	ld de, YouHaveNoPKMNString
	jr .gotstring
.haspokemon ; 504ae
	ld a, [PartyMenuActionText]
	and $f ; drop high nibble
	ld hl, PartyMenuStrings
	ld e, a
	ld d, $0
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
.gotstring ; 504be
	ld a, [Options1]
	push af
	set NO_TEXT_SCROLL, a ; disable text delay
	ld [Options1], a
	hlcoord 1, 16 ; Coord
	call PlaceString
	pop af
	ld [Options1], a
	ret
; 0x504d2

PartyMenuStrings: ; 0x504d2
	dw ChooseAMonString
	dw UseOnWhichPKMNString
	dw WhichPKMNString
	dw TeachWhichPKMNString
	dw MoveToWhereString
	dw UseOnWhichPKMNString
	dw ChooseAMonString ; Probably used to be ChooseAFemalePKMNString
	dw ChooseAMonString ; Probably used to be ChooseAMalePKMNString
	dw ToWhichPKMNString

ChooseAMonString: ; 0x504e4
	db "Choose a #mon.@"
UseOnWhichPKMNString: ; 0x504f3
	db "Use on which <PK><MN>?@"
WhichPKMNString: ; 0x50504
	db "Which <PK><MN>?@"
TeachWhichPKMNString: ; 0x5050e
	db "Teach which <PK><MN>?@"
MoveToWhereString: ; 0x5051e
	db "Move to where?@"
ToWhichPKMNString: ; 0x50549
	db "To which <PK><MN>?@"

YouHaveNoPKMNString: ; 0x50556
	db "You have no <PK><MN>!@"


PrintPartyMenuActionText: ; 50566
	ld a, [CurPartyMon]
	ld hl, PartyMonNicknames
	call GetNick
	ld a, [PartyMenuActionText]
	and $f
	ld hl, .MenuActionTexts
	jp .PrintText
; 5057b

.MenuActionTexts: ; 5057b
	dw .Text_CuredOfPoison
	dw .Text_BurnWasHealed
	dw .Text_Defrosted
	dw .Text_WokeUp
	dw .Text_RidOfParalysis
	dw .Text_RecoveredSomeHP
	dw .Text_HealthReturned
	dw .Text_Revitalized
	dw .Text_GrewToLevel
	dw .Text_CameToItsSenses
; 5058f

.Text_RecoveredSomeHP: ; 0x5058f
	; recovered @ HP!
	text_jump UnknownText_0x1bc0a2
	db "@"
; 0x50594

.Text_CuredOfPoison: ; 0x50594
	; 's cured of poison.
	text_jump UnknownText_0x1bc0bb
	db "@"
; 0x50599

.Text_RidOfParalysis: ; 0x50599
	; 's rid of paralysis.
	text_jump UnknownText_0x1bc0d2
	db "@"
; 0x5059e

.Text_BurnWasHealed: ; 0x5059e
	; 's burn was healed.
	text_jump UnknownText_0x1bc0ea
	db "@"
; 0x505a3

.Text_Defrosted: ; 0x505a3
	; was defrosted.
	text_jump UnknownText_0x1bc101
	db "@"
; 0x505a8

.Text_WokeUp: ; 0x505a8
	; woke up.
	text_jump UnknownText_0x1bc115
	db "@"
; 0x505ad

.Text_HealthReturned: ; 0x505ad
	; 's health returned.
	text_jump UnknownText_0x1bc123
	db "@"
; 0x505b2

.Text_Revitalized: ; 0x505b2
	; is revitalized.
	text_jump UnknownText_0x1bc13a
	db "@"
; 0x505b7

.Text_GrewToLevel: ; 0x505b7
	; grew to level @ !@ @
	text_jump UnknownText_0x1bc14f
	db "@"
; 0x505bc

.Text_CameToItsSenses: ; 0x505bc
	; came to its senses.
	text_jump UnknownText_0x1bc16e
	db "@"
; 0x505c1


.PrintText: ; 505c1
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [Options1]
	push af
	set NO_TEXT_SCROLL, a
	ld [Options1], a
	call PrintText
	pop af
	ld [Options1], a
	ret
; 505da
