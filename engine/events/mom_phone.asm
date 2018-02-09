MomTriesToBuySomething:: ; fcfec
	ld a, [wMapReentryScriptQueueFlag]
	and a
	ret nz
	call GetMapHeaderPhoneServiceNybble
	and a
	ret nz
	xor a
	ld [wWhichMomItemSet], a
	call CheckBalance_MomItem2
	ret nc
	call Mom_GiveItemOrDoll
	ret nc
	ld b, BANK(.Script)
	ld de, .Script
	farcall LoadScriptBDE
	scf
	ret
; fd00f

.Script: ; 0xfd00f
	callasm .ASMFunction
	farjump Script_ReceivePhoneCall
; 0xfd017

.ASMFunction: ; fd017
	call MomBuysItem_DeductFunds
	call Mom_GetScriptPointer
	ld a, [wWhichMomItemSet]
	and a
	jr nz, .ok
	ld hl, wWhichMomItem
	inc [hl]
.ok
	ld a, PHONE_MOM
	ld [wCurrentCaller], a
	ld bc, EngineBuffer2
	ld hl, 0
	add hl, bc
	ld [hl], 0
	inc hl
	ld [hl], 1
	ld hl, wPhoneScriptPointer - EngineBuffer2
	add hl, bc
	ld a, BANK(Mom_GetScriptPointer)
	ld [hli], a
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	ret
; fd044

CheckBalance_MomItem2: ; fd044
	ld a, [wWhichMomItem]
	cp 10
	jr nc, .nope
	call GetItemFromMom
	ld a, [hli]
	ld [hMoneyTemp], a
	ld a, [hli]
	ld [hMoneyTemp + 1], a
	ld a, [hli]
	ld [hMoneyTemp + 2], a
	ld de, wMomsMoney
	ld bc, hMoneyTemp
	farcall CompareMoney
	jr nc, .have_enough_money

.nope
	jr .check_have_2300

.have_enough_money
	scf
	ret

.check_have_2300
	ld hl, hMoneyTemp
	ld [hl], (2300 / $10000) ; $00
	inc hl
	ld [hl], ((2300 % $10000) / $100) ; $08
	inc hl
	ld [hl], (2300 % $100) ; $fc
.loop
	ld de, MomItemTriggerBalance
	ld bc, wMomsMoney
	farcall CompareMoney
	jr z, .exact
	jr nc, .less_than
	call .AddMoney
	jr .loop

.less_than
	xor a
	ret

.exact
	call .AddMoney
	ld a, 5
	call RandomRange
	inc a
	ld [wWhichMomItemSet], a
	scf
	ret

.AddMoney:
	ld de, MomItemTriggerBalance
	ld bc, hMoneyTemp
	farjp AddMoney
; fd0a6


MomBuysItem_DeductFunds: ; fd0a6 (3f:50a6)
	call GetItemFromMom
	ld de, 3 ; cost
	add hl, de
	ld a, [hli]
	ld [hMoneyTemp], a
	ld a, [hli]
	ld [hMoneyTemp + 1], a
	ld a, [hli]
	ld [hMoneyTemp + 2], a
	ld de, wMomsMoney
	ld bc, hMoneyTemp
	farjp TakeMoney


Mom_GiveItemOrDoll: ; fd0c3
	call GetItemFromMom
	ld de, 6 ; item type
	add hl, de
	ld a, [hli]
	cp MOM_ITEM
	jr z, .not_doll
	ld a, [hl]
	ld c, a
	ld b, 1
	farcall DecorationFlagAction_c
	scf
	ret

.not_doll
	ld a, [hl]
	ld [CurItem], a
	ld a, 1
	ld [wItemQuantityChangeBuffer], a
	ld hl, PCItems
	jp ReceiveItem
; fd0eb


Mom_GetScriptPointer: ; fd0eb (3f:50eb)
	call GetItemFromMom
	ld de, 6 ; item type
	add hl, de
	ld a, [hli]
	ld de, .ItemScript
	cp MOM_ITEM
	ret z
	ld de, .DollScript
	ret
; fd0fd (3f:50fd)

.ItemScript: ; 0xfd0fd
	writetext _MomText_HiHowAreYou
	writetext _MomText_FoundAnItem
	writetext _MomText_BoughtWithYourMoney
	writetext _MomText_ItsInPC
	end
; 0xfd10a

.DollScript: ; 0xfd10a
	writetext _MomText_HiHowAreYou
	writetext _MomText_FoundADoll
	writetext _MomText_BoughtWithYourMoney
	writetext _MomText_ItsInRoom
	end
; 0xfd117


GetItemFromMom: ; fd117
	ld a, [wWhichMomItemSet]
	and a
	jr z, .zero
	dec a
	ld de, MomItems_1
	jr .GetFromList1

.zero
	ld a, [wWhichMomItem]
	cp 10 ; length of MomItems_2
	jr c, .ok
	xor a

.ok
	ld de, MomItems_2

.GetFromList1:
	ld l, a
	ld h, 0
rept 3 ; multiply hl by 8
	add hl, hl
endr
	add hl, de
	ret
; fd136

INCLUDE "data/items/mom_phone.asm"


_MomText_HiHowAreYou: ; 0xfd1b1
	; Hi,  ! How are you?
	text_jump UnknownText_0x1bc615
	db "@"
; 0xfd1b6

_MomText_FoundAnItem: ; 0xfd1b6
	; I found a useful item shopping, so
	text_jump UnknownText_0x1bc62a
	db "@"
; 0xfd1bb

_MomText_BoughtWithYourMoney: ; 0xfd1bb
	; I bought it with your money. Sorry!
	text_jump UnknownText_0x1bc64e
	db "@"
; 0xfd1c0

_MomText_ItsInPC: ; 0xfd1c0
	; It's in your PC. You'll like it!
	text_jump UnknownText_0x1bc673
	db "@"
; 0xfd1c5

_MomText_FoundADoll: ; 0xfd1c5
	; While shopping today, I saw this adorable doll, so
	text_jump UnknownText_0x1bc693
	db "@"
; 0xfd1ca

_MomText_ItsInRoom: ; 0xfd1ca
	; It's in your room. You'll love it!
	text_jump UnknownText_0x1bc6c7
	db "@"
; 0xfd1cf
