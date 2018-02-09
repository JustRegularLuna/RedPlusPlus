UpdateUnownDex: ; fba18
	ld a, [MonVariant]
	ld c, a
	ld b, NUM_UNOWN
	ld hl, UnownDex
.loop
	ld a, [hli]
	and a
	jr z, .done
	cp c
	ret z
	dec b
	jr nz, .loop
	ret

.done
	dec hl
	ld [hl], c
	ret
; fba2e


PrintUnownWord: ; fba2e (3e:7a2e)
	hlcoord 4, 15
	ld bc, 12
	ld a, " "
	call ByteFill
	ld a, [wDexCurrentUnownIndex]
	ld e, a
	ld d, 0
	ld hl, UnownDex
	add hl, de
	ld a, [hl]
	ld e, a
	ld d, 0
	ld hl, UnownWords
	add hl, de
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	hlcoord 4, 15
.loop
	ld a, [de]
	cp "@"
	ret z
	inc de
	ld [hli], a
	jr .loop
; fba5a (3e:7a5a)

INCLUDE "data/pokemon/unown_words.asm"
