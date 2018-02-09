; Functions to fade the screen in and out.

RotateFourPalettesRight:: ; 4a3
	ld hl, IncGradGBPalTable_00
	ld b, 4
	jr RotatePalettesRight
; 4b6

RotateThreePalettesRight:: ; 4b6
	ld hl, IncGradGBPalTable_05
	ld b, 3
RotatePalettesRight:: ; 4c7
; Rotate palettes to the right and fill with loaded colors from the left
; If we're already at the leftmost color, fill with the leftmost color
	push de
	ld a, [hli]
	call DmgToCgbBGPals
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	call DmgToCgbObjPals
	ld c, 8
	call DelayFrames
	pop de
	dec b
	jr nz, RotatePalettesRight
	ret
; 4dd

RotateFourPalettesLeft:: ; 4dd
	ld hl, IncGradGBPalTable_04 - 1
	ld b, 4
	jr RotatePalettesLeft
; 4f0

RotateThreePalettesLeft:: ; 4f0
	ld hl, IncGradGBPalTable_07 - 1
	ld b, 3
RotatePalettesLeft:: ; 501
; Rotate palettes to the left and fill with loaded colors from the right
; If we're already at the rightmost color, fill with the rightmost color
	push de
	ld a, [hld]
	ld d, a
	ld a, [hld]
	ld e, a
	call DmgToCgbObjPals
	ld a, [hld]
	call DmgToCgbBGPals
	ld c, 8
	call DelayFrames
	pop de
	dec b
	jr nz, RotatePalettesLeft
	ret
; 517


; 517
IncGradGBPalTable_00:: db %11111111, %11111111, %11111111
IncGradGBPalTable_01:: db %11111110, %11111110, %11111110
IncGradGBPalTable_02:: db %11111001, %11111001, %11111001
IncGradGBPalTable_03:: db %11100100, %11100100, %11100100

IncGradGBPalTable_04:: db %11100100, %11100100, %11100100
IncGradGBPalTable_05:: db %10010000, %10010000, %10010000
IncGradGBPalTable_06:: db %01000000, %01000000, %01000000

IncGradGBPalTable_07:: db %00000000, %00000000, %00000000
;                           bgp       obp1       obp2
IncGradGBPalTable_08:: db %11111111, %11111111, %11111111
IncGradGBPalTable_09:: db %11111110, %11111110, %11111000
IncGradGBPalTable_10:: db %11111001, %11100100, %11100100
IncGradGBPalTable_11:: db %11100100, %11010000, %11100000

IncGradGBPalTable_12:: db %11100100, %11010000, %11100000
IncGradGBPalTable_13:: db %10010000, %10000000, %10010000
IncGradGBPalTable_14:: db %01000000, %01000000, %01000000

IncGradGBPalTable_15:: db %00000000, %00000000, %00000000
; 547
