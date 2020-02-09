GetBreedMon1LevelGrowth:
	ld hl, wBreedMon1Stats
	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	farcall CalcLevel
	ld a, [wBreedMon1Level]
	ld b, a
	ld a, d
	ld e, a
	sub b
	ld d, a
	ret

GetBreedMon2LevelGrowth:
	ld hl, wBreedMon2Stats
	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	farcall CalcLevel
	ld a, [wBreedMon2Level]
	ld b, a
	ld a, d
	ld e, a
	sub b
	ld d, a
	ret
