VISIBLE_PHONE_LIST_SIZE EQU 5

VsSeeker: ; 90b8d (24:4b8d)
	ld hl, Options1
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	ld a, [hInMenu]
	push af
	ld a, $1
	ld [hInMenu], a
	ld [wInVsSeeker], a
	ld a, [VramState]
	push af
	xor a
	ld [VramState], a
	call .InitTilemap
	call DelayFrame
.loop
	call UpdateTime
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .done
	call VsSeekerJumptable
	farcall PlaySpriteAnimations
	call DelayFrame
	jr .loop

.done
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	pop af
	ld [VramState], a
	pop af
	ld [hInMenu], a
	pop af
	ld [Options1], a
	call ClearBGPalettes
	xor a
	ld [hBGMapAddress], a
	ld [wInVsSeeker], a
	ld a, VBGMap0 / $100
	ld [hBGMapAddress + 1], a
	ld a, $90
	ld [hWY], a
	ret

.InitTilemap: ; 90bea (24:4bea)
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	call DisableLCD
	xor a
	ld [hSCY], a
	ld [hSCX], a
	ld a, $7
	ld [hWX], a
	call Pokegear_LoadGFX
	ld hl, SignalBarsGFX
	ld de, VTiles2 tile $40
	ld a, BANK(SignalBarsGFX)
	call Decompress
	farcall ClearSpriteAnims
	ld a, 8
	call SkipMusic
	ld a, %11100011
	ld [rLCDC], a
	call TownMap_InitCursorAndPlayerIconPositions
	xor a
	ld [wJumptableIndex], a
	ld [wcf65], a
	ld [wcf66], a
	ld [wPokegearPhoneScrollPosition], a
	ld [wPokegearPhoneCursorPosition], a
	ld [wPokegearPhoneSelectedPerson], a
	ld [wPokegearRadioChannelBank], a
	ld [wPokegearRadioChannelAddr], a
	ld [wPokegearRadioChannelAddr + 1], a
	call InitPokegearTilemap
	ld b, CGB_POKEGEAR_PALS
	call GetCGBLayout
	call SetPalettes
	ld a, %11100100
	jp DmgToCgbObjPal0

InitPokegearTilemap: ; 90da8 (24:4da8)
	xor a
	ld [hBGMapMode], a
	hlcoord 0, 0
	ld bc, TileMapEnd - TileMap
	ld a, $40
	call ByteFill
	ld de, PhoneTilemapRLE
	call Pokegear_LoadTilemapRLE
	hlcoord 0, 12
	lb bc, 4, 18
	call TextBox
	call PokegearPhone_UpdateDisplayList
	call TownMapPals
	ld a, [wcf65]
	and a
	jr nz, .transition
	xor a
	ld [hBGMapAddress], a
	ld a, VBGMap0 / $100
	ld [hBGMapAddress + 1], a
	call .UpdateBGMap
	ld a, $90
	jr .finish

.transition
	xor a
	ld [hBGMapAddress], a
	ld a, VBGMap1 / $100
	ld [hBGMapAddress + 1], a
	call .UpdateBGMap
	xor a
.finish
	ld [hWY], a
	ld a, [wcf65]
	and 1
	xor 1
	ld [wcf65], a
	ret

.UpdateBGMap: ; 90e00 (24:4e00)
	ld a, $2
	ld [hBGMapMode], a
	ld c, 3
	call DelayFrames
	jp WaitBGMap

; 90e12 (24:4e12)

VsSeekerJumptable: ; 90f04 (24:4f04)
	ld a, [wJumptableIndex]
	ld e, a
	ld d, 0
	ld hl, .Jumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Jumptable: ; 90f13 (24:4f13)
	dw PokegearPhone_Init
	dw PokegearPhone_Joypad
	dw PokegearPhone_MakePhoneCall
	dw PokegearPhone_FinishPhoneCall

PokegearPhone_Init: ; 91156 (24:5156)
	ld hl, wJumptableIndex
	inc [hl]
	xor a
	ld [wPokegearPhoneScrollPosition], a
	ld [wPokegearPhoneCursorPosition], a
	ld [wPokegearPhoneSelectedPerson], a

	ld b, CGB_POKEGEAR_PALS
	call GetCGBLayout
	call SetPalettes

	call InitPokegearTilemap
	ld hl, PokegearText_WhomToCall
	jp PrintText

PokegearPhone_Joypad: ; 91171 (24:5171)
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .b
	ld a, [hl]
	and A_BUTTON
	jr nz, .a
	jp PokegearPhone_GetDPad

.b
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

.a
	ld hl, wPhoneList
	ld a, [wPokegearPhoneScrollPosition]
	ld e, a
	ld d, 0
	add hl, de
	ld a, [wPokegearPhoneCursorPosition]
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	and a
	ret z
	ld [wPokegearPhoneSelectedPerson], a
	hlcoord 1, 2
	ld a, [wPokegearPhoneCursorPosition]
	ld bc, SCREEN_WIDTH * 2
	call AddNTimes
	ld [hl], "▷"
	call PokegearPhoneContactSubmenu
	jr c, .quit_submenu
	ld hl, wJumptableIndex
	inc [hl]
	ret

.quit_submenu
	ld a, $1
	ld [wJumptableIndex], a
	ret

PokegearPhone_MakePhoneCall: ; 911eb (24:51eb)
	call GetMapHeaderPhoneServiceNybble
	and a
	jr nz, .no_service
	ld hl, Options1
	res NO_TEXT_SCROLL, [hl]
	xor a
	ld [hInMenu], a
	ld de, SFX_CALL
	call PlaySFX
	ld hl, .dotdotdot
	call PrintText
	call WaitSFX
	ld de, SFX_CALL
	call PlaySFX
	ld hl, .dotdotdot
	call PrintText
	call WaitSFX
	ld a, [wPokegearPhoneSelectedPerson]
	ld b, a
	call Function90199
	ld c, 10
	call DelayFrames
	ld hl, Options1
	set NO_TEXT_SCROLL, [hl]
	ld a, $1
	ld [hInMenu], a
	call PokegearPhone_UpdateCursor
	ld hl, wJumptableIndex
	inc [hl]
	ret

.no_service
	farcall Phone_NoSignal
	ld hl, .OutOfServiceArea
	call PrintText
	ld a, $1
	ld [wJumptableIndex], a
	ld hl, PokegearText_WhomToCall
	jp PrintText

; 9124c (24:524c)

.dotdotdot ; 0x9124c
	;
	text_jump UnknownText_0x1c5824
	db "@"

; 0x91251

.OutOfServiceArea: ; 0x91251
	; You're out of the service area.
	text_jump UnknownText_0x1c5827
	db "@"

; 0x91256

PokegearPhone_FinishPhoneCall: ; 91256 (24:5256)
	ld a, [hJoyPressed]
	and A_BUTTON | B_BUTTON
	ret z
	farcall HangUp
	ld a, $1
	ld [wJumptableIndex], a
	ld hl, PokegearText_WhomToCall
	jp PrintText

PokegearPhone_GetDPad: ; 9126d (24:526d)
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .up
	ld a, [hl]
	and D_DOWN
	jr nz, .down
	ret

.up
	ld hl, wPokegearPhoneCursorPosition
	ld a, [hl]
	and a
	jr z, .scroll_page_up
	dec [hl]
	jr .done_joypad_same_page

.scroll_page_up
	ld hl, wPokegearPhoneScrollPosition
	ld a, [hl]
	and a
	ret z
	dec [hl]
	jr .done_joypad_update_page

.down
	ld hl, wPokegearPhoneCursorPosition
	ld a, [hl]
	cp VISIBLE_PHONE_LIST_SIZE - 1
	jr nc, .scroll_page_down
	inc [hl]
	jr .done_joypad_same_page

.scroll_page_down
	ld hl, wPokegearPhoneScrollPosition
	ld a, [hl]
	cp CONTACT_LIST_SIZE - VISIBLE_PHONE_LIST_SIZE
	ret nc
	inc [hl]
	jr .done_joypad_update_page

.done_joypad_same_page
	xor a
	ld [hBGMapMode], a
	call PokegearPhone_UpdateCursor
	jp WaitBGMap

.done_joypad_update_page
	xor a
	ld [hBGMapMode], a
	call PokegearPhone_UpdateDisplayList
	jp WaitBGMap

PokegearPhone_UpdateCursor: ; 912b7 (24:52b7)
	ld a, " "
	hlcoord 1, 2
	ld [hl], a
	hlcoord 1, 4
	ld [hl], a
	hlcoord 1, 6
	ld [hl], a
	hlcoord 1, 8
	ld [hl], a
	hlcoord 1, 10
	ld [hl], a
	hlcoord 1, 2
	ld a, [wPokegearPhoneCursorPosition]
	ld bc, 2 * SCREEN_WIDTH
	call AddNTimes
	ld [hl], "▶"
	ret

PokegearPhone_UpdateDisplayList: ; 912d8 (24:52d8)
	hlcoord 1, 1
	ld b, 11
	ld a, " "
.row
	ld c, 18
.col
	ld [hli], a
	dec c
	jr nz, .col
	inc hl
	inc hl
	dec b
	jr nz, .row
	call GetMapHeaderPhoneServiceNybble
	and a
	jr nz, .no_service
	hlcoord 18, 1
	ld [hl], $40 ; phone service icon
.no_service
	ld a, [wPokegearPhoneScrollPosition]
	ld e, a
	ld d, $0
	ld hl, wPhoneList
	add hl, de
	xor a
	ld [wPokegearPhoneLoadNameBuffer], a
.loop
	ld a, [hli]
	push hl
	push af
	hlcoord 2, 2
	ld a, [wPokegearPhoneLoadNameBuffer]
	ld bc, 2 * SCREEN_WIDTH
	call AddNTimes
	ld d, h
	ld e, l
	pop af
	ld b, a
	call Function90380
	pop hl
	ld a, [wPokegearPhoneLoadNameBuffer]
	inc a
	ld [wPokegearPhoneLoadNameBuffer], a
	cp VISIBLE_PHONE_LIST_SIZE
	jr c, .loop
	jp PokegearPhone_UpdateCursor

; 9131e (24:531e)

PokegearPhone_DeletePhoneNumber: ; 9131e
	ld hl, wPhoneList
	ld a, [wPokegearPhoneScrollPosition]
	ld e, a
	ld d, 0
	add hl, de
	ld a, [wPokegearPhoneCursorPosition]
	ld e, a
	ld d, 0
	add hl, de
	ld [hl], 0
	ld hl, wPhoneList
	ld c, CONTACT_LIST_SIZE
.loop
	ld a, [hli]
	and a
	jr nz, .skip
	ld a, [hld]
	ld [hli], a
	ld [hl], 0
.skip
	dec c
	jr nz, .loop
	ret

; 91342

PokegearPhoneContactSubmenu: ; 91342 (24:5342)
	ld hl, wPhoneList
	ld a, [wPokegearPhoneScrollPosition]
	ld e, a
	ld d, 0
	add hl, de
	ld a, [wPokegearPhoneCursorPosition]
	ld e, a
	ld d, 0
	add hl, de
	ld c, [hl]
	farcall CheckCanDeletePhoneNumber
	ld a, c
	and a
	jr z, .cant_delete
	ld hl, .CallDeleteCancelJumptable
	ld de, .CallDeleteCancelStrings
	jr .got_menu_data

.cant_delete
	ld hl, .CallCancelJumptable
	ld de, .CallCancelStrings
.got_menu_data
	xor a
	ld [hBGMapMode], a
	push hl
	push de
	ld a, [de]
	ld l, a
	inc de
	ld a, [de]
	ld h, a
	inc de
	push hl
	ld bc, hBGMapAddress + 1
	add hl, bc
	ld a, [de]
	inc de
	sla a
	ld b, a
	ld c, 8
	push de
	call TextBox
	pop de
	pop hl
	inc hl
	call PlaceString
	pop de
	xor a
	ld [wPokegearPhoneSubmenuCursor], a
	call .UpdateCursor
	call WaitBGMap
.loop
	push de
	call JoyTextDelay
	pop de
	ld hl, hJoyPressed
	ld a, [hl]
	and D_UP
	jr nz, .d_up
	ld a, [hl]
	and D_DOWN
	jr nz, .d_down
	ld a, [hl]
	and A_BUTTON | B_BUTTON
	jr nz, .a_b
	call DelayFrame
	jr .loop

.d_up
	ld hl, wPokegearPhoneSubmenuCursor
	ld a, [hl]
	and a
	jr z, .loop
	dec [hl]
	call .UpdateCursor
	jr .loop

.d_down
	ld hl, 2
	add hl, de
	ld a, [wPokegearPhoneSubmenuCursor]
	inc a
	cp [hl]
	jr nc, .loop
	ld [wPokegearPhoneSubmenuCursor], a
	call .UpdateCursor
	jr .loop

.a_b
	xor a
	ld [hBGMapMode], a
	call PokegearPhone_UpdateDisplayList
	ld a, $1
	ld [hBGMapMode], a
	pop hl
	ld a, [hJoyPressed]
	and B_BUTTON
	jr nz, .Cancel
	ld a, [wPokegearPhoneSubmenuCursor]
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Cancel: ; 913f1
	ld hl, PokegearText_WhomToCall
	call PrintText
	scf
	ret

; 913f9 (24:53f9)

.Delete: ; 913f9
	ld hl, PokegearText_DeleteStoredNumber
	call MenuTextBox
	call YesNoBox
	call ExitMenu
	jr c, .CancelDelete
	call PokegearPhone_DeletePhoneNumber
	xor a
	ld [hBGMapMode], a
	call PokegearPhone_UpdateDisplayList
	ld hl, PokegearText_WhomToCall
	call PrintText
	call WaitBGMap
.CancelDelete:
	scf
	ret

; 9141b

.Call: ; 9141b
	and a
	ret

; 9141d

.UpdateCursor: ; 9141d (24:541d)
	push de
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	ld a, [de]
	ld c, a
	push hl
	ld a, " "
	ld de, SCREEN_WIDTH * 2
.clear_column
	ld [hl], a
	add hl, de
	dec c
	jr nz, .clear_column
	pop hl
	ld a, [wPokegearPhoneSubmenuCursor]
	ld bc, SCREEN_WIDTH  * 2
	call AddNTimes
	ld [hl], "▶"
	pop de
	ret

; 9143f (24:543f)

.CallDeleteCancelStrings: ; 9143f
	dwcoord 10, 6
	db 3
	db   "Call"
	next "Delete"
	next "Cancel"
	db   "@"
; 91455

.CallDeleteCancelJumptable: ; 91455
	dw .Call
	dw .Delete
	dw .Cancel

; 9145b

.CallCancelStrings: ; 9145b
	dwcoord 10, 8
	db 2
	db   "Call"
	next "Cancel"
	db   "@"
; 9146a

.CallCancelJumptable: ; 9146a
	dw .Call
	dw .Cancel

; 9146e

Pokegear_LoadTilemapRLE: ; 914bb (24:54bb)
	; Format: repeat count, tile ID
	; Terminated with $FF
	hlcoord 0, 0
.loop
	ld a, [de]
	cp $ff
	ret z
	ld b, a
	inc de
	ld a, [de]
	ld c, a
	inc de
	ld a, b
.load
	ld [hli], a
	dec c
	jr nz, .load
	jr .loop

; 914ce (24:54ce)

PokegearText_WhomToCall: ; 0x914ce
	; Whom do you want to call?
	text_jump UnknownText_0x1c5847
	db "@"

; 0x914d3

PokegearText_PressAnyButtonToExit: ; 0x914d3
	; Press any button to exit.
	text_jump UnknownText_0x1c5862
	db "@"

; 0x914d8

PokegearText_DeleteStoredNumber: ; 0x914d8
	; Delete this stored phone number?
	text_jump UnknownText_0x1c587d
	db "@"

; 0x914dd

PhoneTilemapRLE: ; 9158a
INCBIN "gfx/vs_seeker/phone.tilemap.rle"
; 9163e

SignalBarsGFX: ; 1de2e4
INCBIN "gfx/vs_seeker/signal_bars.2bpp.lz"
