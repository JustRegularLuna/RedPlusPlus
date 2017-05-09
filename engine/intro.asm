PlayIntro: ; 41682 (10:5682)
	xor a
	ld [hJoyHeld], a
	inc a
	ld [H_AUTOBGTRANSFERENABLED], a
	call PlayShootingStar
	call PlayIntroScene
	call GBFadeOutToWhite
	xor a
	ld [hSCX], a
	ld [H_AUTOBGTRANSFERENABLED], a
	call ClearSprites
	call DelayFrame
	ret

PlayIntroScene: ; 4169d (10:569d)
	ld b, $7
	call GoPAL_SET
	ld a, %11100100
	ld [rBGP], a
	ld [rOBP0], a
	ld [rOBP1], a
	xor a
	ld [hSCX], a
	ld b, $3
	call Func_4183f
	ld a, 0
	ld [W_BASECOORDX], a
	ld a, 80
	ld [W_BASECOORDY], a
	ld bc, $606
	call Func_417c7
	ld de, $28ff
	call Func_4180e
	ret c

; hip
	ld a, (SFX_1f_5f - SFX_Headers_1f) / 3
	call PlaySound
	xor a
	ld [wd09f], a
	ld de, IntroNidorinoAnimation1
	call AnimateIntroNidorino
; hop
	ld a, (SFX_1f_60 - SFX_Headers_1f) / 3
	call PlaySound
	ld de, IntroNidorinoAnimation2
	call AnimateIntroNidorino
	ld c, $a
	call CheckForUserInterruption
	ret c

; hip
	ld a, (SFX_1f_5f - SFX_Headers_1f) / 3
	call PlaySound
	ld de, IntroNidorinoAnimation1
	call AnimateIntroNidorino
; hop
	ld a, (SFX_1f_60 - SFX_Headers_1f) / 3
	call PlaySound
	ld de, IntroNidorinoAnimation2
	call AnimateIntroNidorino
	ld c, $1e
	call CheckForUserInterruption
	ret c

; raise
	ld b, $4
	call Func_4183f
	ld a, (SFX_1f_61 - SFX_Headers_1f) / 3
	call PlaySound
	ld de, $401
	call Func_4180e
	ld c, $1e
	call CheckForUserInterruption
	ret c

; slash
	ld b, $5
	call Func_4183f
	ld a, (SFX_1f_62 - SFX_Headers_1f) / 3
	call PlaySound
	ld de, $800
	call Func_4180e
; hip
	ld a, (SFX_1f_5f - SFX_Headers_1f) / 3
	call PlaySound
	ld a, $24
	ld [wd09f], a
	ld de, IntroNidorinoAnimation3
	call AnimateIntroNidorino
	ld c, $1e
	call CheckForUserInterruption
	ret c

	ld de, $401
	call Func_4180e
	ld b, $3
	call Func_4183f
	ld c, $3c
	call CheckForUserInterruption
	ret c

; hip
	ld a, (SFX_1f_5f - SFX_Headers_1f) / 3
	call PlaySound
	xor a
	ld [wd09f], a
	ld de, IntroNidorinoAnimation4
	call AnimateIntroNidorino
; hop
	ld a, (SFX_1f_60 - SFX_Headers_1f) / 3
	call PlaySound
	ld de, IntroNidorinoAnimation5
	call AnimateIntroNidorino
	ld c, $14
	call CheckForUserInterruption
	ret c

	ld a, $24
	ld [wd09f], a
	ld de, IntroNidorinoAnimation6
	call AnimateIntroNidorino
	ld c, $1e
	call CheckForUserInterruption
	ret c

; lunge
	ld a, (SFX_1f_5e - SFX_Headers_1f) / 3
	call PlaySound
	ld a, $48
	ld [wd09f], a
	ld de, IntroNidorinoAnimation7
	jp AnimateIntroNidorino

AnimateIntroNidorino: ; 41793 (10:5793)
	ld a, [de]
	cp $50
	ret z
	ld [W_BASECOORDY], a
	inc de
	ld a, [de]
	ld [W_BASECOORDX], a
	push de
	ld c, $24
	call Func_417ae
	ld c, 5
	call DelayFrames
	pop de
	inc de
	jr AnimateIntroNidorino

Func_417ae: ; 417ae (10:57ae)
	ld hl, wOAMBuffer
	ld a, [wd09f]
	ld d, a
.asm_417b5
	ld a, [W_BASECOORDY]
	add [hl]
	ld [hli], a
	ld a, [W_BASECOORDX]
	add [hl]
	ld [hli], a
	ld a, d
	ld [hli], a
	inc hl
	inc d
	dec c
	jr nz, .asm_417b5
	ret

Func_417c7: ; 417c7 (10:57c7)
	ld hl, wOAMBuffer
	ld d, $0
.asm_417cc
	push bc
	ld a, [W_BASECOORDY]
	ld e, a
.asm_417d1
	ld a, e
	add $8
	ld e, a
	ld [hli], a
	ld a, [W_BASECOORDX]
	ld [hli], a
	ld a, d
	ld [hli], a
	ld a, $80
	ld [hli], a
	inc d
	dec c
	jr nz, .asm_417d1
	ld a, [W_BASECOORDX]
	add $8
	ld [W_BASECOORDX], a
	pop bc
	dec b
	jr nz, .asm_417cc
	ret

Func_417f0: ; 417f0 (10:57f0)
	ld hl, vBGMap1
	ld bc, $240
	jr asm_417fe

Func_417f8: ; 417f8 (10:57f8)
	hlCoord 0, 4
	ld bc, $c8
asm_417fe: ; 417fe (10:57fe)
	ld [hl], $0
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, asm_417fe
	ret

Func_41807: ; 41807 (10:5807)
	ld a, $1
.asm_41809
	ld [hli], a
	dec c
	jr nz, .asm_41809
	ret

Func_4180e: ; 4180e (10:580e)
	ld a, e
	cp $ff
	jr z, .asm_4181d
	cp $1
	jr z, .asm_4182d
	ld a, [hSCX]
	dec a
	dec a
	jr .asm_41831
.asm_4181d
	push de
	ld a, $2
	ld [W_BASECOORDX], a
	xor a
	ld [W_BASECOORDY], a
	ld c, $24
	call Func_417ae
	pop de
.asm_4182d
	ld a, [hSCX]
	inc a
	inc a
.asm_41831
	ld [hSCX], a
	push de
	ld c, $2
	call CheckForUserInterruption
	pop de
	ret c
	dec d
	jr nz, Func_4180e
	ret

Func_4183f: ; 4183f (10:583f)
	hlCoord 13, 7

CopyTileIDsFromList_ZeroBaseTileID: ; 41842 (10:5842)
	ld c, $0
	predef_jump CopyTileIDsFromList

Func_41849: ; 41849 (10:5849)
	predef GetMoveSoundB
	ld a, b
	jp PlaySound

LoadIntroGraphics: ; 41852 (10:5852)
	ld hl, FightIntroBackMon
	ld de, vChars2
	ld bc, $600
	ld a, BANK(FightIntroBackMon)
	call FarCopyData2
	ld hl, GameFreakIntro
	ld de, vChars2 + $600
	ld bc, $140
	ld a, BANK(GameFreakIntro)
	call FarCopyData2
	ld hl, GameFreakIntro
	ld de, vChars1
	ld bc, $140
	ld a, BANK(GameFreakIntro)
	call FarCopyData2
	ld hl, FightIntroFrontMon
	ld de, vChars0
	ld bc, $6c0
	ld a, BANK(FightIntroFrontMon)
	jp FarCopyData2

PlayShootingStar: ; 4188a (10:588a)
; load Meowth palette to screen and call Mateo Presents instead of Nintendo Creatures Gamefreak
	ld a, MEOWTH
	ld [wcf1d],a
	ld b, $b
	call GoPAL_SET
	callba LoadMateoPresentsScreen
	ld a, $e4
	ld [rBGP], a
	ld c, 180
	call DelayFrames
; clear the screen and get ready to show the original stuff properly
	call GBPalWhiteOut ; addded
	call ClearScreen
	call DisableLCD
	call LoadTextBoxTilePatterns ;added
	ld b, $c        ; added
	call GoPAL_SET  ; added
	call GBPalNormal; added
	xor a
	ld [W_CUROPPONENT], a
	call Func_418e9
	call LoadIntroGraphics
	call EnableLCD
	ld hl, rLCDC
	res 5, [hl]
	set 3, [hl]
	ld c, 64
	call DelayFrames
	callba AnimateShootingStar
	push af
	pop af
	jr c, .asm_418d0
	ld c, 40
	call DelayFrames
.asm_418d0
	ld a, BANK(Music_IntroBattle)
	ld [wc0ef], a
	ld [wc0f0], a
	ld a, MUSIC_INTRO_BATTLE
	ld [wc0ee], a
	call PlaySound
	call Func_417f8
	call ClearSprites
	jp Delay3

Func_418e9: ; 418e9 (10:58e9)
	call Func_417f0
	ld hl, wTileMap
	ld c, $50
	call Func_41807
	hlCoord 0, 14
	ld c, $50
	call Func_41807
	ld hl, vBGMap1
	ld c, $80
	call Func_41807
	ld hl, vBGMap1 + $1c0
	ld c, $80
	jp Func_41807

Func_4190c: ; 4190c (10:590c)
	ret

IntroNidorinoAnimation0: ; 4190d (10:590d)
	db 0, 0
	db $50

IntroNidorinoAnimation1: ; 41910 (10:5910)
; This is a sequence of pixel movements for part of the Nidorino animation. This
; list describes how Nidorino should hop.
; First byte is y movement, second byte is x movement
	db  0, 0
	db -2, 2
	db -1, 2
	db  1, 2
	db  2, 2
	db $50 ; list terminator

IntroNidorinoAnimation2: ; 4191b (10:591b)
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db  0,  0
	db -2, -2
	db -1, -2
	db  1, -2
	db  2, -2
	db $50 ; list terminator

IntroNidorinoAnimation3: ; 41926 (10:5926)
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db   0, 0
	db -12, 6
	db  -8, 6
	db   8, 6
	db  12, 6
	db $50 ; list terminator

IntroNidorinoAnimation4: ; 41931 (10:5931)
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db  0,  0
	db -8, -4
	db -4, -4
	db  4, -4
	db  8, -4
	db $50 ; list terminator

IntroNidorinoAnimation5: ; 4193c (10:593c)
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db  0, 0
	db -8, 4
	db -4, 4
	db  4, 4
	db  8, 4
	db $50 ; list terminator

IntroNidorinoAnimation6: ; 41947 (10:5947)
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db 0, 0
	db 2, 0
	db 2, 0
	db 0, 0
	db $50 ; list terminator

IntroNidorinoAnimation7: ; 41950 (10:5950)
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db -8, -16
	db -7, -14
	db -6, -12
	db -4, -10
	db $50 ; list terminator

GameFreakIntro: ; 41959 (10:5959)
	INCBIN "gfx/gamefreak_intro.2bpp"
	INCBIN "gfx/gamefreak_logo.2bpp"
	ds $10 ; blank tile

FightIntroBackMon: ; 41a99 (10:5a99)
	INCBIN "gfx/intro_fight.2bpp"

FightIntroFrontMon: ; 42099 (10:6099)
	INCBIN "gfx/red/intro_nido_1.6x6.2bpp"
	INCBIN "gfx/red/intro_nido_2.6x6.2bpp"
	INCBIN "gfx/red/intro_nido_3.6x6.2bpp"
	ds $10 ; blank tile
