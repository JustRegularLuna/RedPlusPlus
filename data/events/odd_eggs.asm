GiveOddEgg:
	; Compare a random word to
	; probabilities out of 0xffff.
	call Random
	ld hl, .Probabilities
	ld c, 0
	ld b, c
.loop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a

	; Break on $ffff.
	ld a, d
	cp $ffff / $100
	jr nz, .not_done
	ld a, e
	cp $ffff % $100
	jr z, .done
.not_done

	; Break when [hRandom] <= de.
	ld a, [hRandom + 1]
	cp d
	jr c, .done
	jr z, .ok
	jr .next
.ok
	ld a, [hRandom + 0]
	cp e
	jr c, .done
	jr z, .done
.next
	inc bc
	jr .loop
.done

	ld hl, OddEggs
	ld a, OddEgg2 - OddEgg1
	call AddNTimes
	jr GiveEggMon

.Probabilities:

prob: MACRO
prob_total = prob_total + (\1)
	dw prob_total * $ffff / 100
ENDM

prob_total = 0
; Togepi
	prob 50
	prob 50
; 1fb56e

GiveMystriEgg:
	ld hl, MystriEgg
; fallthrough
GiveEggMon:
	ld de, OddEggSpecies
	ld bc, PARTYMON_STRUCT_LENGTH + 2 * PKMN_NAME_LENGTH
	call CopyBytes
; fallthrough
AddEggMonToParty:
	ld hl, PartyCount
	ld a, [hl]
	ld e, a
	inc [hl]

	ld bc, PartySpecies
	ld d, e
.loop1
	inc bc
	dec d
	jr nz, .loop1
	ld a, e
	ld [CurPartyMon], a
	ld a, EGG
	ld [bc], a
	inc bc
	ld a, -1
	ld [bc], a

	ld hl, PartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, e
	ld [wd002], a
.loop2
	add hl, bc
	dec a
	and a
	jr nz, .loop2
	ld e, l
	ld d, h
	ld hl, OddEggSpecies
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes

	ld hl, PartyMonOT
	ld bc, NAME_LENGTH
	ld a, [wd002]
.loop3
	add hl, bc
	dec a
	and a
	jr nz, .loop3
	ld e, l
	ld d, h
	ld hl, wOddEggName
	ld bc, PKMN_NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	ld a, [wd002]
.loop4
	add hl, bc
	dec a
	and a
	jr nz, .loop4
	ld e, l
	ld d, h
	ld hl, wOddEggName
	ld bc, PKMN_NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a

	jp CloseSRAM


OddEggs:

OddEgg1:
	db TOGEPI
	db NO_ITEM
	db GROWL, CHARM, DIZZY_PUNCH, NO_MOVE
	dw 02048 ; OT ID
	dt 0 ; Exp
	db 0, 0, 0, 0, 0, 0 ; EVs
	db $FF, $FF, $FF ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, MALE | IS_EGG_MASK | 1 ; Personality
	db 30, 20, 10, 0 ; PP
	db 20 ; Happiness
	db 0 ; Pokerus
	db 0, 0, 0 ; Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 5 ; Atk
	bigdw 6 ; Def
	bigdw 5 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

OddEgg2:
	db TOGEPI
	db NO_ITEM
	db GROWL, CHARM, DIZZY_PUNCH, NO_MOVE
	dw 00256 ; OT ID
	dt 0 ; Exp
	db 0, 0, 0, 0, 0, 0 ; EVs
	db $FF, $FF, $FF ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, FEMALE | IS_EGG_MASK | 1 ; Personality
	db 30, 20, 10, 0 ; PP
	db 20 ; Happiness
	db 0 ; Pokerus
	db 0, 0, 0 ; Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 5 ; Atk
	bigdw 6 ; Def
	bigdw 5 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

MystriEgg:
	db TOGEPI
	db NO_ITEM
	db GROWL, CHARM, MOONBLAST, AEROBLAST
	dw 08192 ; OT ID
	dt 0 ; Exp
	db 0, 0, 0, 0, 0, 0 ; EVs
	db $FF, $FF, $FF ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, FEMALE | IS_EGG_MASK ; Personality
	db 40, 20, 15, 5 ; PP
	db 20 ; Happiness
	db 0 ; Pokerus
	db 0, 0, 0 ; Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 12 ; Max HP
	bigdw 5 ; Atk
	bigdw 6 ; Def
	bigdw 5 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"
