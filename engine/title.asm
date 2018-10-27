_TitleScreen: ; 10ed67

	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap

; Turn BG Map update off
	xor a
	ld [hBGMapMode], a

; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wIntroSceneFrameCounter
	ld [hli], a ; wTitleScreenTimerLo
	ld [hl], a  ; wTitleScreenTimerHi

; Turn LCD off
	call DisableLCD


; VRAM bank 1
	ld a, 1
	ld [rVBK], a

; Decompress Charizard and Trainers gfx
	ld hl, TitleCharizardGFX
	ld de, VTiles4
	call Decompress

; Clear screen palettes
	hlbgcoord 0, 0
	ld bc, SCREEN_WIDTH * BG_MAP_WIDTH
	xor a
	call ByteFill


; Fill tile palettes:

; BG Map 1:

; line 0 (copyright)
	hlbgcoord 0, 0, VBGMap1
	ld bc, BG_MAP_WIDTH
	ld a, 3 ; palette
	call ByteFill


; BG Map 0:

; Apply logo gradient:

; Pokémon Logo
	hlbgcoord 0, 2
	ld bc, 7 * BG_MAP_WIDTH
	ld a, 1
	call ByteFill

; 'Red++ Version'
	hlbgcoord 5, 8
	ld bc, NAME_LENGTH ; length of version text
	ld a, 2
	call ByteFill

; Charizard
	hlbgcoord 1, 11
	ld bc, 7 * BG_MAP_WIDTH ; the rest of the screen
	ld a, 8
	call ByteFill

; Trainers
	hlbgcoord 12, 11
	lb bc, 7, 8
	ld a, 12
.row
	push bc
.col
	ld [hli], a
	dec c
	jr nz, .col
	ld bc, BG_MAP_WIDTH - 8
	add hl, bc
	pop bc
	dec b
	jr nz, .row


; Back to VRAM bank 0
	xor a
	ld [rVBK], a

; Decompress logo
	ld hl, TitleLogoGFX
	ld de, VTiles1
	call Decompress

; Clear screen tiles
	hlbgcoord 0, 0
	ld bc, 64 * BG_MAP_WIDTH
	ld a, " "
	call ByteFill

; Draw Pokemon logo
	hlcoord 0, 2
	lb bc, 7, SCREEN_WIDTH
	lb de, $80, SCREEN_WIDTH
	call DrawTitleGraphic

; Draw Charizard
	hlcoord 1, 11
	lb bc, 7, 9
	lb de, $80, $11
	call DrawTitleGraphic

; Draw Trainers
	hlcoord 12, 11
	lb bc, 7, 8
	lb de, $89, $11
	call DrawTitleGraphic

; Draw copyright text
	hlbgcoord 4, 0, VBGMap1
	lb bc, 1, 13
	lb de, $0c, 0
	call DrawTitleGraphic

; Save WRAM bank
	ld a, [rSVBK]
	push af
; WRAM bank 5
	ld a, 5
	ld [rSVBK], a

; Update palette colors
	ld hl, TitleScreenPalettes
	ld de, UnknBGPals
	ld bc, 16 palettes
	call CopyBytes

	ld hl, TitleScreenPalettes
	ld de, BGPals
	ld bc, 16 palettes
	call CopyBytes

; Restore WRAM bank
	pop af
	ld [rSVBK], a


; LY/SCX trickery starts here

	ld a, [rSVBK]
	push af
	ld a, BANK(LYOverrides)
	ld [rSVBK], a

; Make sure the LYOverrides buffer is empty
	ld hl, LYOverrides
	xor a
	ld bc, LYOverridesEnd - LYOverrides
	call ByteFill

; Let LCD Stat know we're messing around with SCX
	ld a, rSCX - rJOYP
	ld [hLCDCPointer], a

	pop af
	ld [rSVBK], a


; Reset audio
	call ChannelsOff
	call EnableLCD

	ld a, [rLCDC]
	set 2, a ; 8x16 sprites
	ld [rLCDC], a

	ld a, +112
	ld [hSCX], a
	ld a, 8
	ld [hSCY], a
	ld a, 7
	ld [hWX], a
	ld a, -112
	ld [hWY], a

	ld a, $1
	ld [hCGBPalUpdate], a

; Update BG Map 0 (bank 0)
	ld [hBGMapMode], a

	xor a
	ld [UnknBGPals palette 0 + 2], a

; Play starting sound effect
	call SFXChannelsOff
	ld de, SFX_TITLE_SCREEN_ENTRANCE
	call PlaySFX

	ret
; 10eea7

DrawTitleGraphic: ; 10eeef
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret
; 10ef06

TitleCharizardGFX:
INCBIN "gfx/title/charizard.w136.2bpp.lz"

TitleLogoGFX:
INCBIN "gfx/title/logo.w160.t4.2bpp.lz"

TitleScreenPalettes:
if DEF(NOIR)
; BG
	GRAYSCALE 31, 19, 09, 00
	GRAYSCALE 31, 24, 19, 12
	GRAYSCALE 31, 29, 20, 12
	GRAYSCALE 31, 07, 03, 00
	GRAYSCALE 31, 20, 09, 00
	GRAYSCALE 31, 20, 09, 00
	GRAYSCALE 31, 20, 09, 00
	GRAYSCALE 31, 20, 09, 00
; OB
	GRAYSCALE 31, 20, 09, 00
	GRAYSCALE 31, 25, 16, 00
	GRAYSCALE 31, 00, 00, 00
	GRAYSCALE 31, 00, 00, 00
	GRAYSCALE 31, 00, 00, 00
	GRAYSCALE 31, 00, 00, 00
	GRAYSCALE 31, 00, 00, 00
	GRAYSCALE 31, 00, 00, 00
elif DEF(MONOCHROME)
; BG
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK

	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
; OB
rept 8
	MONOCHROME_RGB_FOUR
endr
else
; BG, mostly from pokered-gbc

; PAL_CHARIZARD *** TODO: Scrolling mons, their pals overwrite this
	RGB 31, 31, 31
	RGB 31, 11, 00
	RGB 06, 09, 15
	RGB 00, 00, 00

; PAL_LOGO2
	RGB 31, 31, 31
	RGB 28, 24, 00
	RGB 18, 19, 18
	RGB 05, 12, 22

; PAL_LOGO1
	RGB 31, 31, 31
	RGB 30, 30, 17
	RGB 17, 23, 10
	RGB 21, 00, 04

; PAL_BLACK
	RGB 31, 31, 31
	RGB 07, 07, 07
	RGB 02, 03, 03
	RGB 00, 00, 00

; PAL_PROF_OAK *** TODO: Sprite Oak instead of BG Oak, so mons can scroll in
	RGB 31, 31, 31
	RGB 24, 19, 11
	RGB 10, 08, 14
	RGB 00, 00, 00

; PAL_PROF_OAK *** Unused
	RGB 31, 31, 31
	RGB 24, 19, 11
	RGB 10, 08, 14
	RGB 00, 00, 00

; PAL_PROF_OAK *** Unused
	RGB 31, 31, 31
	RGB 24, 19, 11
	RGB 10, 08, 14
	RGB 00, 00, 00

; PAL_PROF_OAK *** Unused
	RGB 31, 31, 31
	RGB 24, 19, 11
	RGB 10, 08, 14
	RGB 00, 00, 00

; OBJ

; PAL_PROF_OAK *** TODO: Sprite Oak
	RGB 31, 31, 31
	RGB 24, 19, 11
	RGB 10, 08, 14
	RGB 00, 00, 00

; PAL_REDBAR *** TODO: Sprite pokeball
	RGB 31, 31, 31
	RGB 29, 25, 15
	RGB 26, 10, 06
	RGB 00, 00, 00

; original unused pals
	RGB 31,31,31, 00,00,00, 00,00,00, 00,00,00
	RGB 31,31,31, 00,00,00, 00,00,00, 00,00,00
	RGB 31,31,31, 00,00,00, 00,00,00, 00,00,00
	RGB 31,31,31, 00,00,00, 00,00,00, 00,00,00
	RGB 31,31,31, 00,00,00, 00,00,00, 00,00,00
	RGB 31,31,31, 00,00,00, 00,00,00, 00,00,00

endc
