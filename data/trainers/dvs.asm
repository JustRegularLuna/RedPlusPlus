GetTrainerEVsDVsAndPersonality: ; 270c4
; Return the EVs, DVs and Personality of OtherTrainerClass in bc
	ld a, [OtherTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerClassDVsAndPersonality
rept 6
	add hl, bc
endr

	ld a, [hli]
rept 6
	ld [de], a
	inc de
endr
	ld a, [hli]
	ld [DVAndPersonalityBuffer], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 1], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 2], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 3], a
	ld a, [hli]
	ld [DVAndPersonalityBuffer + 4], a
	ret
; 270d6

TrainerClassDVsAndPersonality: ; 270d6
	;  EVs  HP   Def  SAt  Ability  Gender
	;  *    Atk  Spd  SDf  Nature   Form
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; RED
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; LEAF
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; PROF_OAK
; 2715c
