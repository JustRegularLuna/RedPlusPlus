HDMATransferTileMapToWRAMBank3:: ; 10402d
	ld hl, .Function
	jp CallInSafeGFXMode

.Function:
	decoord 0, 0
	ld hl, wScratchTileMap
	call CutAndPasteTilemap
	ld a, $0
	ld [rVBK], a
	ld hl, wScratchTileMap
	jp HDMATransferToWRAMBank3
; 104047

HDMATransferAttrMapToWRAMBank3: ; 104047
	ld hl, .Function
	jp CallInSafeGFXMode

.Function:
	decoord 0, 0, AttrMap
	ld hl, wScratchAttrMap
	call CutAndPasteAttrMap
	ld a, $1
	ld [rVBK], a
	ld hl, wScratchAttrMap
	jp HDMATransferToWRAMBank3
; 104061

ReloadMapPart:: ; 104061
	ld hl, .Function
	jp CallInSafeGFXMode

.Function:
	decoord 0, 0, AttrMap
	ld hl, wScratchAttrMap
	call CutAndPasteAttrMap
	decoord 0, 0
	ld hl, wScratchTileMap
	call CutAndPasteTilemap
	call DelayFrame

	di
	ld a, [rVBK]
	push af
	ld a, $1
	ld [rVBK], a
	ld hl, wScratchAttrMap
	call HDMATransfer_Wait127Scanlines_toBGMap
	ld a, $0
	ld [rVBK], a
	ld hl, wScratchTileMap
	call HDMATransfer_Wait127Scanlines_toBGMap
	pop af
	ld [rVBK], a
	ei

	ret

OpenAndCloseMenu_HDMATransferTileMapAndAttrMap:: ; 104110
; OpenText
	ld hl, .Function
	jp CallInSafeGFXMode

.Function:
	; Transfer AttrMap and Tilemap to BGMap
	; Fill vBGAttrs with $00
	; Fill vBGTiles with " "
	decoord 0, 0, AttrMap
	ld hl, wScratchAttrMap
	call CutAndPasteAttrMap
	decoord 0, 0
	ld hl, wScratchTileMap
	call CutAndPasteTilemap
	call DelayFrame

	di
	ld a, [rVBK]
	push af
	ld a, $1
	ld [rVBK], a
	ld hl, wScratchAttrMap
	call HDMATransfer_Wait123Scanlines_toBGMap
	ld a, $0
	ld [rVBK], a
	ld hl, wScratchTileMap
	call HDMATransfer_Wait123Scanlines_toBGMap
	pop af
	ld [rVBK], a
	ei
	ret
; 104148

BridgeTransition_HDMATransferTileMapAndAttrMap::
	ld hl, .Function
	jp CallInSafeGFXMode

.Function:
	decoord 0, 0, AttrMap
	ld hl, wScratchAttrMap
	call CutAndPasteAttrMap
	decoord 0, 0
	ld hl, wScratchTileMap
	call CutAndPasteTilemap

	di
	ld a, [rVBK]
	push af
	ld a, $1
	ld [rVBK], a
	ld hl, wScratchAttrMap
	call HDMATransfer_Wait123Scanlines_toBGMap
	ld a, $0
	ld [rVBK], a
	ld hl, wScratchTileMap
	call HDMATransfer_Wait123Scanlines_toBGMap
	pop af
	ld [rVBK], a
	ei
	ret

CallInSafeGFXMode: ; 104177
	ld a, [hBGMapMode]
	push af
	ld a, [hMapAnims]
	push af
	xor a
	ld [hBGMapMode], a
	ld [hMapAnims], a
	ld a, [rSVBK]
	push af
	ld a, $6
	ld [rSVBK], a
	ld a, [rVBK]
	push af

	call ._hl_

	pop af
	ld [rVBK], a
	pop af
	ld [rSVBK], a
	pop af
	ld [hMapAnims], a
	pop af
	ld [hBGMapMode], a
	ret
; 10419c

._hl_ ; 10419c
	jp hl
; 10419d

HDMATransferToWRAMBank3: ; 10419d (41:419d)
	call _LoadHDMAParameters
	ld a, $23
	ld [hDMATransfer], a
.loop
	call DelayFrame
	ld a, [hDMATransfer]
	and a
	jr nz, .loop
	ret

HDMATransfer_Wait127Scanlines_toBGMap: ; 1041ad (41:41ad)
; HDMA transfer from hl to [hBGMapAddress]
; hBGMapAddress -> de
; 2 * SCREEN_HEIGHT -> c
	ld a, [hBGMapAddress + 1]
	ld d, a
	ld a, [hBGMapAddress]
	ld e, a
	ld c, 2 * SCREEN_HEIGHT
	jr HDMATransfer_Wait127Scanlines

HDMATransfer_Wait123Scanlines_toBGMap: ; 1041b7 (41:41b7)
; HDMA transfer from hl to [hBGMapAddress]
; hBGMapAddress -> de
; 2 * SCREEN_HEIGHT -> c
; $7b --> b
	ld a, [hBGMapAddress + 1]
	ld d, a
	ld a, [hBGMapAddress]
	ld e, a
	lb bc, $7b, 2 * SCREEN_HEIGHT
	jr _continue_HDMATransfer
; 1041c1 (41:41c1)

HDMATransfer_Wait127Scanlines:
	ld b, $7f
_continue_HDMATransfer:
; a lot of waiting around for hardware registers
	; [rHDMA1, rHDMA2] = hl & $fff0
	ld a, h
	ld [rHDMA1], a
	ld a, l
	and $f0 ; high nybble
	ld [rHDMA2], a
	; [rHDMA3, rHDMA4] = de & $1ff0
	ld a, d
	and $1f ; lower 5 bits
	ld [rHDMA3], a
	ld a, e
	and $f0 ; high nybble
	ld [rHDMA4], a
	; e = c | %10000000
	ld a, c
	dec c
	or $80
	ld e, a
	; d = b - c + 1
	ld a, b
	sub c
	ld d, a
	; while [rLY] >= d: pass
.ly_loop
	ld a, [rLY]
	cp d
	jr nc, .ly_loop

	di
	; while [rSTAT] & 3: pass
.rstat_loop_1
	ld a, [rSTAT]
	and $3
	jr nz, .rstat_loop_1
	; while not [rSTAT] & 3: pass
.rstat_loop_2
	ld a, [rSTAT]
	and $3
	jr z, .rstat_loop_2
	; load the 5th byte of HDMA
	ld a, e
	ld [rHDMA5], a
	; wait until rLY advances (c + 1) times
	ld a, [rLY]
	inc c
	ld hl, rLY
.final_ly_loop
	cp [hl]
	jr z, .final_ly_loop
	ld a, [hl]
	dec c
	jr nz, .final_ly_loop
	ld hl, rHDMA5
	res 7, [hl]
	ei

	ret
; 10424e

_LoadHDMAParameters: ; 10424e (41:424e)
	ld a, h
	ld [rHDMA1], a
	ld a, l
	ld [rHDMA2], a
	ld a, [hBGMapAddress + 1]
	and $1f
	ld [rHDMA3], a
	ld a, [hBGMapAddress]
	ld [rHDMA4], a
	ret

CutAndPasteTilemap: ; 10425f (41:425f)
	ld c, " "
	jr CutAndPasteMap

CutAndPasteAttrMap: ; 104263 (41:4263)
	ld c, $0

CutAndPasteMap: ; 104265 (41:4265)
; back up the value of c to hMapObjectIndexBuffer
	ld a, [hMapObjectIndexBuffer]
	push af
	ld a, c
	ld [hMapObjectIndexBuffer], a

; for each row on the screen
	ld c, SCREEN_HEIGHT
.loop1
; for each tile in the row
	ld b, SCREEN_WIDTH
.loop2
; copy from de to hl
	ld a, [de]
	inc de
	ld [hli], a
	dec b
	jr nz, .loop2

; load the original value of c into hl 12 times
	ld a, [hMapObjectIndexBuffer]
	ld b, 12
.loop3
	ld [hli], a
	dec b
	jr nz, .loop3

	dec c
	jr nz, .loop1

; restore the original value of hMapObjectIndexBuffer
	pop af
	ld [hMapObjectIndexBuffer], a
	ret

_Get2bpp:: ; 104284
	; 2bpp when bit 7 of [rLCDC]
	; switch to WRAM bank 6
	ld a, [rSVBK]
	push af
	ld a, $6
	ld [rSVBK], a

	push bc
	push hl

	; Copy c tiles of the 2bpp from b:de to wScratchTileMap
	ld a, b ; bank
	ld l, c ; number of tiles
	ld h, $0
rept 4
	add hl, hl ; multiply by 16 (16 bytes of a 2bpp = 8 x 8 tile)
endr
	ld b, h
	ld c, l
	ld h, d ; address
	ld l, e
	ld de, wScratchTileMap
	call FarCopyBytes

	pop hl
	pop bc

	push bc
	call DelayFrame
	pop bc

	ld d, h
	ld e, l
	ld hl, wScratchTileMap
	call HDMATransfer_Wait127Scanlines

	; restore the previous bank
	pop af
	ld [rSVBK], a
	ret
; 1042b2

_Get1bpp:: ; 1042b2
	; 1bpp when bit 7 of [rLCDC]
.loop
	ld a, c
	cp $10
	jp c, .bankswitch
	jp z, .bankswitch
	push bc
	push hl
	push de
	ld c, $10
	call .bankswitch
	pop de
	ld hl, $80
	add hl, de
	ld d, h
	ld e, l
	pop hl
	lb bc, 1, 0
	add hl, bc
	pop bc
	ld a, c
	sub $10
	ld c, a
	jr .loop
; 1042d6

.bankswitch ; 1042d6
	ld a, [rSVBK]
	push af
	ld a, $6
	ld [rSVBK], a

	push bc
	push hl

	ld a, b
	ld l, c
	ld h, $0
	add hl, hl
	add hl, hl
	add hl, hl
	ld c, l
	ld b, h
	ld h, d
	ld l, e
	ld de, wScratchTileMap
	call FarCopyBytesDouble_DoubleBankSwitch

	pop hl
	pop bc

	push bc
	call DelayFrame
	pop bc

	ld d, h
	ld e, l
	ld hl, wScratchTileMap
	call HDMATransfer_Wait127Scanlines

	pop af
	ld [rSVBK], a
	ret
; 104303

HDMATransfer_OnlyTopFourRows: ; 104303
	ld hl, .Function
	jp CallInSafeGFXMode
; 104309

.Function:
	ld hl, wScratchTileMap
	decoord 0, 0
	call .Copy
	ld hl, wScratchTileMap + $80
	decoord 0, 0, AttrMap
	call .Copy
	ld a, $1
	ld [rVBK], a
	ld c, $8
	ld hl, wScratchTileMap + $80
	debgcoord 0, 0, VBGMap1
	call HDMATransfer_Wait127Scanlines
	xor a
	ld [rVBK], a
	ld c, $8
	ld hl, wScratchTileMap
	debgcoord 0, 0, VBGMap1
	jp HDMATransfer_Wait127Scanlines

.Copy: ; 10433a (41:433a)
	ld b, 4
.outer_loop
	ld c, SCREEN_WIDTH
.inner_loop
	ld a, [de]
	ld [hli], a
	inc de
	dec c
	jr nz, .inner_loop
	ld a, l
	add $20 - SCREEN_WIDTH
	ld l, a
	ld a, h
	adc $0
	ld h, a
	dec b
	jr nz, .outer_loop
	ret
; 104350

ShockEmote:      INCBIN "gfx/emotes/shock.2bpp"
QuestionEmote:   INCBIN "gfx/emotes/question.2bpp"
HappyEmote:      INCBIN "gfx/emotes/happy.2bpp"
SadEmote:        INCBIN "gfx/emotes/sad.2bpp"
HeartEmote:      INCBIN "gfx/emotes/heart.2bpp"
BoltEmote:       INCBIN "gfx/emotes/bolt.2bpp"
SleepEmote:      INCBIN "gfx/emotes/sleep.2bpp"
FishEmote:       INCBIN "gfx/emotes/fish.2bpp"

JumpShadowGFX:   INCBIN "gfx/overworld/shadow.2bpp"
FishingRodGFX:   INCBIN "gfx/overworld/fishing_rod.2bpp"
BoulderDustGFX:  INCBIN "gfx/overworld/boulderdust.2bpp"
ShakingGrassGFX: INCBIN "gfx/overworld/shaking_grass.2bpp"
PuddleSplashGFX: INCBIN "gfx/overworld/puddle_splash.2bpp"
