_DummyGame: ; e1e5b (38:5e5b)
	call .LoadGFXAndPals
	call DelayFrame
.loop
	call .JumptableLoop
	jr nc, .loop
	ret

.LoadGFXAndPals:
	call DisableLCD
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	farcall ClearSpriteAnims
	ld hl, DummyGameGFX
	ld de, VTiles2 tile $00
	call Decompress
	ld hl, MissingDummyGameGFX
	ld de, VTiles0 tile $00
	ld bc, 4 tiles
	ld a, BANK(MissingDummyGameGFX)
	call FarCopyBytes
	ld a, $8
	ld hl, wc300
	ld [hli], a
	ld [hl], $0
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	xor a
	call ByteFill
	xor a
	ld [hSCY], a
	ld [hSCX], a
	ld [rWY], a
	ld [wJumptableIndex], a
	ld a, $1
	ld [hBGMapMode], a
	ld a, %11100011
	ld [rLCDC], a
	ld a, $e4
	call DmgToCgbBGPals
	ld a, $e0
	jp DmgToCgbObjPal0

.JumptableLoop:
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .quit
	call .ExecuteJumptable
	farcall PlaySpriteAnimations
	call DelayFrame
	and a
	ret

.quit
	scf
	ret

.ExecuteJumptable:
	jumptable .Jumptable, wJumptableIndex

.Jumptable:
	dw .RestartGame
	dw .ResetBoard
	dw .InitBoardTilemapAndCursorObject
	dw .CheckTriesRemaining
	dw .PickCard1
	dw .PickCard2
	dw .DelayPickAgain
	dw .RevealAll
	dw .AskPlayAgain

.RestartGame:
	call DummyGame_InitStrings
	ld hl, wJumptableIndex
	inc [hl]
	ret

.ResetBoard:
	call ret_e00ed
	jr nc, .proceed
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

.proceed
	call DummyGame_InitBoard
	ld hl, wJumptableIndex
	inc [hl]
	xor a
	ld [wDummyGameCounter], a
	ld hl, wDummyGameLastMatches
rept 4
	ld [hli], a
endr
	ld [hl], a
	ld [wDummyGameNumCardsMatched], a
.InitBoardTilemapAndCursorObject:
	ld hl, wDummyGameCounter
	ld a, [hl]
	cp 45
	jr nc, .spawn_object
	inc [hl]
	call DummyGame_Card2Coord
	xor a
	ld [wDummyGameLastCardPicked], a
	jp DummyGame_PlaceCard

.spawn_object
	depixel 6, 3, 4, 4
	ld a, SPRITE_ANIM_INDEX_DUMMY_GAME
	call _InitSpriteAnimStruct
	ld a, 5
	ld [wDummyGameNumberTriesRemaining], a
	ld hl, wJumptableIndex
	inc [hl]
	ret

.CheckTriesRemaining:
	ld a, [wDummyGameNumberTriesRemaining]
	hlcoord 17, 0
	add "0"
	ld [hl], a
	ld hl, wDummyGameNumberTriesRemaining
	ld a, [hl]
	and a
	jr nz, .next_try
	ld a, $7
	ld [wJumptableIndex], a
	ret

.next_try
	dec [hl]
	xor a
	ld [wcf64], a
	ld hl, wJumptableIndex
	inc [hl]
.PickCard1:
	ld a, [wcf64]
	and a
	ret z
	dec a
	ld e, a
	ld d, 0
	ld hl, wDummyGameCards
	add hl, de
	ld a, [hl]
	cp -1
	ret z
	ld [wDummyGameLastCardPicked], a
	ld [wDummyGameCard1], a
	ld a, e
	ld [wDummyGameCard1Location], a
	call DummyGame_Card2Coord
	call DummyGame_PlaceCard
	xor a
	ld [wcf64], a
	ld hl, wJumptableIndex
	inc [hl]
	ret

.PickCard2:
	ld a, [wcf64]
	and a
	ret z
	dec a
	ld hl, wDummyGameCard1Location
	cp [hl]
	ret z
	ld e, a
	ld d, 0
	ld hl, wDummyGameCards
	add hl, de
	ld a, [hl]
	cp -1
	ret z
	ld [wDummyGameLastCardPicked], a
	ld [wDummyGameCard2], a
	ld a, e
	ld [wDummyGameCard2Location], a
	call DummyGame_Card2Coord
	call DummyGame_PlaceCard
	ld a, 64
	ld [wDummyGameCounter], a
	ld hl, wJumptableIndex
	inc [hl]
.DelayPickAgain:
	ld hl, wDummyGameCounter
	ld a, [hl]
	and a
	jr z, .PickAgain
	dec [hl]
	ret

.PickAgain:
	call DummyGame_CheckMatch
	ld a, $3
	ld [wJumptableIndex], a
	ret

.RevealAll:
	ld a, [hJoypadPressed]
	and A_BUTTON
	ret z
	xor a
	ld [wDummyGameCounter], a
.RevelationLoop:
	ld hl, wDummyGameCounter
	ld a, [hl]
	cp 45
	jr nc, .finish_round
	inc [hl]
	push af
	call DummyGame_Card2Coord
	pop af
	push hl
	ld e, a
	ld d, $0
	ld hl, wDummyGameCards
	add hl, de
	ld a, [hl]
	pop hl
	cp -1
	jr z, .RevelationLoop
	ld [wDummyGameLastCardPicked], a
	call DummyGame_PlaceCard
	jr .RevelationLoop

.finish_round
	call WaitPressAorB_BlinkCursor
	ld hl, wJumptableIndex
	inc [hl]
.AskPlayAgain:
	call ret_e00ed
	jr nc, .restart
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

.restart
	xor a
	ld [wJumptableIndex], a
	ret

; e2010

DummyGame_CheckMatch: ; e2010
	ld hl, wDummyGameCard1
	ld a, [hli]
	cp [hl]
	jr nz, .no_match

	ld a, [wDummyGameCard1Location]
	call DummyGame_Card2Coord
	call DummyGame_DeleteCard

	ld a, [wDummyGameCard2Location]
	call DummyGame_Card2Coord
	call DummyGame_DeleteCard

	ld a, [wDummyGameCard1Location]
	ld e, a
	ld d, $0
	ld hl, wDummyGameCards
	add hl, de
	ld [hl], -1

	ld a, [wDummyGameCard2Location]
	ld e, a
	ld d, 0
	ld hl, wDummyGameCards
	add hl, de
	ld [hl], -1

	ld hl, wDummyGameLastMatches
.find_empty_slot
	ld a, [hli]
	and a
	jr nz, .find_empty_slot
	dec hl
	ld a, [wDummyGameCard1]
	ld [hl], a
	ld [wDummyGameLastCardPicked], a
	ld hl, wDummyGameNumCardsMatched
	ld e, [hl]
	inc [hl]
	inc [hl]
	ld d, 0
	hlcoord 5, 0
	add hl, de
	call DummyGame_PlaceCard
	ld hl, .VictoryText
	jp PrintText

.no_match
	xor a
	ld [wDummyGameLastCardPicked], a

	ld a, [wDummyGameCard1Location]
	call DummyGame_Card2Coord
	call DummyGame_PlaceCard

	ld a, [wDummyGameCard2Location]
	call DummyGame_Card2Coord
	call DummyGame_PlaceCard

	ld hl, DummyGameText_Darn
	jp PrintText

.VictoryText:
	start_asm
	push bc
	hlcoord 2, 13
	call DummyGame_PlaceCard
	ld hl, DummyGameText_Yeah
	pop bc
	inc bc
	inc bc
	inc bc
	ret

; e2093

DummyGameText_Yeah: ; 0xe2093
	; , yeah!
	text_jump UnknownText_0x1c1a5b
	db "@"
; 0xe2098

DummyGameText_Darn: ; 0xe2098
	; Darn…
	text_jump UnknownText_0x1c1a65
	db "@"
; 0xe209d

DummyGame_InitBoard: ; e209d
	ld hl, wDummyGameCards
	ld bc, wDummyGameCardsEnd - wDummyGameCards
	xor a
	call ByteFill
	call DummyGame_GetDistributionOfTiles

	ld c, 2
	ld b, [hl]
	call DummyGame_SampleTilePlacement

	ld c, 8
	ld b, [hl]
	call DummyGame_SampleTilePlacement

	ld c, 4
	ld b, [hl]
	call DummyGame_SampleTilePlacement

	ld c, 7
	ld b, [hl]
	call DummyGame_SampleTilePlacement

	ld c, 3
	ld b, [hl]
	call DummyGame_SampleTilePlacement

	ld c, 6
	ld b, [hl]
	call DummyGame_SampleTilePlacement

	ld c, 1
	ld b, [hl]
	call DummyGame_SampleTilePlacement

	ld c, 5
	ld hl, wDummyGameCards
	ld b, wDummyGameCardsEnd - wDummyGameCards
.loop
	ld a, [hl]
	and a
	jr nz, .no_load
	ld [hl], c
.no_load
	inc hl
	dec b
	jr nz, .loop
	ret

; e20e5

DummyGame_SampleTilePlacement: ; e20e5
	push hl
	ld de, wDummyGameCards
.loop
	call Random
	and %00111111
	cp 45
	jr nc, .loop
	ld l, a
	ld h, 0
	add hl, de
	ld a, [hl]
	and a
	jr nz, .loop
	ld [hl], c
	dec b
	jr nz, .loop
	pop hl
	inc hl
	ret

; e2101

DummyGame_GetDistributionOfTiles: ; e2101
	ld a, [wMenuCursorY]
	dec a
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, .distributions
	add hl, de
	ret

.distributions
	db $02, $03, $06, $06, $06, $08, $08, $06
	db $02, $02, $04, $06, $06, $08, $08, $09
	db $02, $02, $02, $04, $07, $08, $08, $0c
; e2128

DummyGame_PlaceCard: ; e2128
	ld a, [wDummyGameLastCardPicked]
	sla a
	sla a
	add 4
	ld [hli], a
	inc a
	ld [hld], a
	inc a
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld [hli], a
	inc a
	ld [hl], a
	ld c, 3
	jp DelayFrames

; e2142

DummyGame_DeleteCard: ; e2142
	ld a, $1
	ld [hli], a
	ld [hld], a
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld [hli], a
	ld [hl], a
	ld c, 3
	jp DelayFrames

; e2152

DummyGame_InitStrings: ; e2152
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, $1
	call ByteFill
	hlcoord 0, 0
	ld de, .japstr1
	call PlaceString
	hlcoord 15, 0
	ld de, .japstr2
	call PlaceString
	ld hl, .dummy_text
	jp PrintText

.dummy_text
	db "@"
.japstr1
	db "№.Cards@"
.japstr2
	db "№.Turns@"
; e2183

DummyGame_Card2Coord: ; e2183
	ld d, 0
.find_row
	sub 9
	jr c, .found_row
	inc d
	jr .find_row

.found_row
	add 9
	ld e, a
	hlcoord 1, 2
	ld bc, 2 * SCREEN_WIDTH
.loop2
	ld a, d
	and a
	jr z, .done
	add hl, bc
	dec d
	jr .loop2

.done
	sla e
	add hl, de
	ret

; e21a1

DummyGame_InterpretJoypad_AnimateCursor: ; e21a1 (38:61a1)
	ld a, [wJumptableIndex]
	cp $7
	jr nc, .quit
	call JoyTextDelay
	ld hl, hJoypadPressed ; $ffa3
	ld a, [hl]
	and A_BUTTON
	jr nz, .pressed_a
	ld a, [hl]
	and D_LEFT
	jr nz, .pressed_left
	ld a, [hl]
	and D_RIGHT
	jr nz, .pressed_right
	ld a, [hl]
	and D_UP
	jr nz, .pressed_up
	ld a, [hl]
	and D_DOWN
	jr nz, .pressed_down
	ret

.quit
	ld hl, SPRITEANIMSTRUCT_INDEX
	add hl, bc
	ld [hl], $0
	ret

.pressed_a
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld a, [hl]
	inc a
	ld [wcf64], a
	ret

.pressed_left
	ld hl, SPRITEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	and a
	ret z
	sub 1 tiles
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	dec [hl]
	ret

.pressed_right
	ld hl, SPRITEANIMSTRUCT_XOFFSET
	add hl, bc
	ld a, [hl]
	cp (9 - 1) tiles
	ret z
	add 1 tiles
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	inc [hl]
	ret

.pressed_up
	ld hl, SPRITEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	and a
	ret z
	sub 1 tiles
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld a, [hl]
	sub 9
	ld [hl], a
	ret

.pressed_down
	ld hl, SPRITEANIMSTRUCT_YOFFSET
	add hl, bc
	ld a, [hl]
	cp (5 - 1) tiles
	ret z
	add 1 tiles
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld a, [hl]
	add 9
	ld [hl], a
	ret

; e2221 (38:6221)

DummyGameGFX: ; e2221
INCBIN "gfx/dummy_game/dummy_game.w16.2bpp.lz"

MissingDummyGameGFX:
; Graphics for an unused Game Corner
; game were meant to be here.

ret_e00ed: ; e00ed (38:40ed)
; How many coins?
	ret
