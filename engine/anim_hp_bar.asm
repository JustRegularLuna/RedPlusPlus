_AnimateHPBar: ; d627
	call .IsMaximumMoreThan48Pixels
	jr c, .MoreThan48Pixels
	call .ComputePixels
.ShortAnimLoop:
	push bc
	push hl
	call ShortAnim_UpdateVariables
	pop hl
	pop bc
	push af
	push bc
	push hl
	call ShortHPBarAnim_UpdateTiles
	call HPBarAnim_BGMapUpdate
	pop hl
	pop bc
	pop af
	jr nc, .ShortAnimLoop
	ret

.MoreThan48Pixels:
	call .ComputePixels
.LongAnimLoop:
	push bc
	push hl
	call LongAnim_UpdateVariables
	pop hl
	pop bc
	ret c
	push af
	push bc
	push hl
	call LongHPBarAnim_UpdateTiles
	call HPBarAnim_BGMapUpdate
	pop hl
	pop bc
	pop af
	jr nc, .LongAnimLoop
	ret
; d65f

.IsMaximumMoreThan48Pixels: ; d65f
	ld a, [Buffer2]
	and a
	jr nz, .player
	ld a, [Buffer1]
	cp 6 * 8
	jr nc, .player
	and a
	ret

.player
	scf
	ret
; d670

.ComputePixels: ; d670
; Buffer1-2: Max HP
; Buffer3-4: Old HP
; Buffer5-6: New HP
	push hl
	ld hl, Buffer1
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	pop hl
	call ComputeHPBarPixels
	ld a, e
	ld [wCurHPBarPixels], a

	ld a, [Buffer5]
	ld c, a
	ld a, [Buffer6]
	ld b, a
	ld a, [Buffer1]
	ld e, a
	ld a, [Buffer2]
	ld d, a
	call ComputeHPBarPixels
	ld a, e
	ld [wNewHPBarPixels], a

	push hl
	ld hl, Buffer3
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	pop hl
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jr c, .negative
	ld a, [Buffer3]
	ld [wCurHPAnimLowHP], a
	ld a, [Buffer5]
	ld [wCurHPAnimHighHP], a
	ld bc, 1
	jr .got_direction

.negative
	ld a, [Buffer3]
	ld [wCurHPAnimHighHP], a
	ld a, [Buffer5]
	ld [wCurHPAnimLowHP], a
	ld a, e
	cpl
	inc a
	ld e, a
	ld a, d
	cpl
	ld d, a
	ld bc, -1
.got_direction
	ld a, d
	ld [wCurHPAnimDeltaHP], a
	ld a, e
	ld [wCurHPAnimDeltaHP+1], a
	ret
; d6e2

ShortAnim_UpdateVariables: ; d6e2
	ld hl, wCurHPBarPixels
	ld a, [wNewHPBarPixels]
	cp [hl]
	jr nz, .not_finished
	scf
	ret

.not_finished
	ld a, c
	add [hl]
	ld [hl], a
	call ShortHPBar_CalcPixelFrame
	and a
	ret
; d6f5

LongAnim_UpdateVariables: ; d6f5
.loop
	ld hl, Buffer3
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, e
	cp [hl]
	jr nz, .next
	inc hl
	ld a, d
	cp [hl]
	jr nz, .next
	scf
	ret

.next
	ld l, e
	ld h, d
	add hl, bc
	ld a, l
	ld [Buffer3], a
	ld a, h
	ld [Buffer4], a
	push hl
	push de
	push bc
	ld hl, Buffer1
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	call ComputeHPBarPixels
	ld a, e
	pop bc
	pop de
	pop hl
	ld hl, wCurHPBarPixels
	cp [hl]
	jr z, .loop
	ld [hl], a
	and a
	ret
; d730

ShortHPBarAnim_UpdateTiles: ; d730
	call HPBarAnim_UpdateHPRemaining
	ld d, $6
	ld a, [wWhichHPBar]
	and $1
	ld b, a
	ld a, [wCurHPBarPixels]
	ld e, a
	ld c, a
	push de
	call HPBarAnim_RedrawHPBar
	pop de
	jp HPBarAnim_PaletteUpdate
; d749

LongHPBarAnim_UpdateTiles: ; d749
	call HPBarAnim_UpdateHPRemaining
	ld a, [Buffer3]
	ld c, a
	ld a, [Buffer4]
	ld b, a
	ld a, [Buffer1]
	ld e, a
	ld a, [Buffer2]
	ld d, a
	call ComputeHPBarPixels
	ld c, e
	ld d, $6
	ld a, [wWhichHPBar]
	and $1
	ld b, a
	push de
	call HPBarAnim_RedrawHPBar
	pop de
	jp HPBarAnim_PaletteUpdate
; d771

HPBarAnim_RedrawHPBar: ; d771
	ld a, [wWhichHPBar]
	cp $2
	jr nz, .skip
	ld a, SCREEN_WIDTH * 2
	add l
	ld l, a
	jr nc, .skip
	inc h
.skip
	jp DrawBattleHPBar
; d784

HPBarAnim_UpdateHPRemaining: ; d784
	ld a, [wWhichHPBar]
	and a
	ret z
	cp $1
	jr z, .load_15
	ld de, SCREEN_WIDTH + 2
	jr .loaded_de

.load_15
	ld de, SCREEN_WIDTH + 1
.loaded_de
	push hl
	add hl, de
	ld a, " "
	ld [hli], a
	ld [hli], a
	ld [hld], a
	dec hl
	ld a, [Buffer3]
	ld [StringBuffer2 + 1], a
	ld a, [Buffer4]
	ld [StringBuffer2], a
	ld de, StringBuffer2
	lb bc, 2, 3
	call PrintNum
	pop hl
	ret
; d7b4

HPBarAnim_PaletteUpdate: ; d7b4
	ld hl, wCurHPAnimPal
	call SetHPPal
	ld a, [wCurHPAnimPal]
	ld c, a
	farjp ApplyHPBarPals
; d7c9

HPBarAnim_BGMapUpdate: ; d7c9
	ld a, [wWhichHPBar]
	and a
	jr z, .load_0
	cp $1
	jr z, .load_1
	ld a, [CurPartyMon]
	cp $3
	jr nc, .bottom_half_of_screen
	ld c, $0
	jr .got_third

.bottom_half_of_screen
	ld c, $1
.got_third
	push af
	cp $2
	jr z, .skip_delay
	cp $5
	jr z, .skip_delay
	ld a, $2
	ld [hBGMapMode], a
	ld a, c
	ld [hBGMapThird], a
	call DelayFrame
.skip_delay
	ld a, $1
	ld [hBGMapMode], a
	ld a, c
	ld [hBGMapThird], a
	call DelayFrame
	pop af
	cp $2
	jr z, .two_frames
	cp $5
	jr z, .two_frames
	ret

.two_frames
	inc c
	ld a, $2
	ld [hBGMapMode], a
	ld a, c
	ld [hBGMapThird], a
	call DelayFrame
	ld a, $1
	ld [hBGMapMode], a
	ld a, c
	ld [hBGMapThird], a
	jp DelayFrame

.load_0
	ld c, $0
	jr .finish

.load_1
	ld c, $1
.finish
	call DelayFrame
	ld a, c
	ld [hBGMapThird], a
	jp DelayFrame
; d839

ShortHPBar_CalcPixelFrame: ; d839
	ld a, [Buffer1]
	ld c, a
	ld b, 0
	ld hl, 0
	ld a, [wCurHPBarPixels]
	cp 6 * 8
	jr nc, .return_max
	and a
	jr z, .return_zero
	call AddNTimes
	ld b, 0
.loop
	ld a, l
	sub 6 * 8
	ld l, a
	ld a, h
	sbc $0
	ld h, a
	jr z, .done
	jr c, .done
	inc b
	jr .loop

.done
	push bc
	ld bc, $80
	add hl, bc
	pop bc
	ld a, l
	sub 6 * 8
	ld l, a
	ld a, h
	sbc $0
	ld h, a
	jr c, .no_carry
	inc b
.no_carry
	ld a, [wCurHPAnimLowHP]
	cp b
	jr nc, .finish
	ld a, [wCurHPAnimHighHP]
	cp b
	jr c, .finish
	ld a, b
.finish
	ld [Buffer3], a
	ret

.return_zero
	xor a
	ld [Buffer3], a
	ret

.return_max
	ld a, [Buffer1]
	ld [Buffer3], a
	ret
; d88c
