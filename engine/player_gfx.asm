GetPlayerIcon: ; 8832c
; Get the player icon corresponding to gender

; Male
	ld de, RedSpriteGFX
	ld b, BANK(RedSpriteGFX)

	ld a, [PlayerGender]
	bit 0, a
	ret z

; Female
	ld de, LeafSpriteGFX
	ld b, BANK(LeafSpriteGFX)
	ret


GetCardPic: ; 8833e
	ld hl, RedCardPic
	ld a, [PlayerGender]
	bit 0, a
	jr z, .GotClass
	ld hl, LeafCardPic
.GotClass:
	ld de, VTiles2 tile $00
	ld bc, $23 tiles
	ld a, BANK(RedCardPic) ; BANK(LeafCardPic)
	jp FarCopyBytes

RedCardPic: ; 88365
INCBIN "gfx/trainer_card/red_card.5x7.2bpp"

LeafCardPic: ; 88595
INCBIN "gfx/trainer_card/leaf_card.5x7.2bpp"


GetPlayerBackpic: ; 88825
	ld hl, RedBackpic
	ld a, [PlayerGender]
	bit 0, a
	jr z, .ok
	ld hl, LeafBackpic
.ok
	ld de, VTiles2 tile $31
	lb bc, BANK(RedBackpic), 6 * 6 ; dimensions
	predef DecompressPredef
	ret

RedBackpic: ; 2ba1a
INCBIN "gfx/player/red_back.6x6.2bpp.lz"

LeafBackpic: ; 88ed6
INCBIN "gfx/player/leaf_back.6x6.2bpp.lz"

OldManBackpic: ; 2bbaa
INCBIN "gfx/battle/old_man_back.6x6.2bpp.lz"


HOF_LoadTrainerFrontpic: ; 88840
	call WaitBGMap
	xor a
	ld [hBGMapMode], a
	ld e, 0
	ld a, [PlayerGender]
	bit 0, a
	jr z, .GotClass
	ld e, 1

.GotClass:
	ld a, e
	ld [TrainerClass], a
	ld de, RedCardPic
	ld a, [PlayerGender]
	bit 0, a
	jr z, .GotPic
	ld de, LeafCardPic

.GotPic:
	ld hl, VTiles2
	lb bc, BANK(RedCardPic), 5 * 7 ; BANK(LeafCardPic)
	call Get2bpp
	call WaitBGMap
	ld a, $1
	ld [hBGMapMode], a
	ret
