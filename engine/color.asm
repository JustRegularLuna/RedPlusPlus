INCLUDE "engine/vary_colors.asm"

INCLUDE "engine/cgb.asm"

CheckShininess:
; Check if a mon is shiny by personality at bc.
; Return carry if shiny.
	ld a, [bc]
	and SHINY_MASK
	jr z, .NotShiny
	scf
	ret

.NotShiny:
	and a
	ret

InitPartyMenuPalettes:
	ld de, UnknBGPals
	ld hl, PartyMenuBGPals
rept 4
	call LoadHLPaletteIntoDE
endr
	call InitPartyMenuOBPals
	jp WipeAttrMap

ApplyHPBarPals:
	ld a, [wWhichHPBar]
	and a
	jr z, .Enemy
	cp $1
	jr z, .Player
	cp $2
	jr z, .PartyMenu
	ret

.Enemy:
	ld de, BGPals palette PAL_BATTLE_BG_PLAYER_HP + 2
	jr .okay

.Player:
	ld de, BGPals palette PAL_BATTLE_BG_ENEMY_HP + 2

.okay
	ld l, c
	ld h, $0
	add hl, hl
	add hl, hl
	ld bc, HPBarInteriorPals
	add hl, bc
	ld bc, 4
	ld a, $5
	call FarCopyWRAM
	ld a, $1
	ld [hCGBPalUpdate], a
	ret

.PartyMenu:
	ld e, c
	inc e
	hlcoord 11, 1, AttrMap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [CurPartyMon]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop

.done
	lb bc, 2, 8
	ld a, e
	jp FillBoxCGB

LoadPlayerStatusIconPalette:
	ld a, [PlayerSubStatus2]
	ld de, BattleMonStatus
	farcall GetStatusConditionIndex
	ld hl, StatusIconPals
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld de, UnknBGPals palette PAL_BATTLE_BG_STATUS + 2
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadEnemyStatusIconPalette:
	ld a, [EnemySubStatus2]
	ld de, EnemyMonStatus
	farcall GetStatusConditionIndex
	ld hl, StatusIconPals
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld de, UnknBGPals palette PAL_BATTLE_BG_STATUS + 4
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadBattleCategoryAndTypePals:
	ld hl, CategoryIconPals
	ld a, [wPlayerMoveStruct + MOVE_CATEGORY]
	ld c, a
	ld b, 0
rept 4
	add hl, bc
endr
	ld de, UnknBGPals palette PAL_BATTLE_BG_TYPE_CAT + 2
	ld bc, 4
	ld a, $5
	call FarCopyWRAM

	ld hl, TypeIconPals
	ld a, [wPlayerMoveStruct + MOVE_TYPE]
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld de, UnknBGPals palette PAL_BATTLE_BG_TYPE_CAT + 6
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadItemIconPalette:
	ld a, [CurSpecies]
	ld bc, ItemIconPalettes
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, bc
	ld de, UnknBGPals palette 4 + 2
	ld bc, 4
	ld a, $5
	call FarCopyWRAM
	ld hl, BlackPalette
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

LoadTMHMIconPalette:
	ld a, [CurTMHM]
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .cancel
	dec a
	ld hl, TMHMTypes
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld hl, TMHMTypeIconPals
	ld c, a
	ld b, 0
rept 4
	add hl, bc
endr
	ld de, UnknBGPals palette 4 + 2
	ld bc, 4
	ld a, $5
	call FarCopyWRAM
	ld hl, BlackPalette
	ld bc, 2
	ld a, $5
	jp FarCopyWRAM

.cancel:
	ld hl, TMHMCancelPalette
	ld de, UnknBGPals palette 4 + 2
	ld bc, 6
	ld a, $5
	jp FarCopyWRAM

LoadStatsScreenPals:
	ld hl, StatsScreenPagePals
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [rSVBK]
	push af
	ld a, $5
	ld [rSVBK], a
	ld a, [hli]
	ld [UnknBGPals palette 0], a
	ld [UnknBGPals palette 2], a
	ld a, [hl]
	ld [UnknBGPals palette 0 + 1], a
	ld [UnknBGPals palette 2 + 1], a
	pop af
	ld [rSVBK], a
	call ApplyPals
	ld a, $1
	ret

LoadMailPalettes:
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, MailPals
	add hl, de
	ld de, UnknBGPals
	ld bc, 1 palettes
	ld a, $5
	call FarCopyWRAM
	call ApplyPals
	call WipeAttrMap
	jp ApplyAttrMap

LoadHLPaletteIntoDE:
	ld a, [rSVBK]
	push af
	ld a, $5
	ld [rSVBK], a
	ld c, $8
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	pop af
	ld [rSVBK], a
	ret

LoadPalette_White_Col1_Col2_Black:
	ld a, [rSVBK]
	push af
	ld a, $5
	ld [rSVBK], a

if !DEF(MONOCHROME)
	ld a, (palred 31 + palgreen 31 + palblue 31) % $100
	ld [de], a
	inc de
	ld a, (palred 31 + palgreen 31 + palblue 31) / $100
	ld [de], a
	inc de
else
	ld a, PAL_MONOCHROME_WHITE % $100
	ld [de], a
	inc de
	ld a, PAL_MONOCHROME_WHITE / $100
	ld [de], a
	inc de
endc

	ld c, 2 * 2
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop

if !DEF(MONOCHROME)
	xor a ; RGB 00, 00, 00
rept 2
	ld [de], a
	inc de
endr
else
	ld a, PAL_MONOCHROME_BLACK % $100
	ld [de], a
	inc de
	ld a, PAL_MONOCHROME_BLACK / $100
	ld [de], a
	inc de
endc

	pop af
	ld [rSVBK], a
	ret

FillBoxCGB:
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret

ResetBGPals:
	push af
	push bc
	push de
	push hl

	ld a, [rSVBK]
	push af
	ld a, $5
	ld [rSVBK], a

	ld hl, UnknBGPals
	ld c, 8
.loop
if !DEF(MONOCHROME)
	ld a, $ff ; RGB 31, 31, 31
rept 4
	ld [hli], a
endr
	xor a ; RGB 00, 00, 00
rept 4
	ld [hli], a
endr
else
rept 2
	ld a, PAL_MONOCHROME_WHITE % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ld [hli], a
endr
rept 2
	ld a, PAL_MONOCHROME_BLACK % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_BLACK / $100
	ld [hli], a
endr
endc
	dec c
	jr nz, .loop

	pop af
	ld [rSVBK], a

	pop hl
	pop de
	pop bc
	pop af
	ret

WipeAttrMap:
	hlcoord 0, 0, AttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	jp ByteFill

ApplyPals:
	ld hl, UnknBGPals
	ld de, BGPals
	ld bc, 16 palettes
	ld a, $5
	jp FarCopyWRAM

ApplyAttrMap:
	ld a, [rLCDC]
	bit 7, a ; lcd on?
	jr z, ApplyAttrMapVBank1
	; fallthrough
ApplyAttrMapVBank0::
	ld a, [hBGMapMode]
	push af
	ld a, $2
	ld [hBGMapMode], a
	call DelayFrame
	call DelayFrame
	call DelayFrame
	call DelayFrame
	pop af
	ld [hBGMapMode], a
	ret

ApplyAttrMapVBank1:
	hlcoord 0, 0, AttrMap
	debgcoord 0, 0
	ld b, SCREEN_HEIGHT
	ld a, $1
	ld [rVBK], a
.row
	ld c, SCREEN_WIDTH
.col
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .col
	ld a, BG_MAP_WIDTH - SCREEN_WIDTH
	add e
	jr nc, .okay
	inc d
.okay
	ld e, a
	dec b
	jr nz, .row
	xor a
	ld [rVBK], a
	ret

ApplyPartyMenuHPPals: ; 96f3
	ld hl, wHPPals
	ld a, [wHPPalIndex]
	ld e, a
	ld d, $0
	add hl, de
	ld e, l
	ld d, h
	ld a, [de]
	inc a
	ld e, a
	hlcoord 11, 2, AttrMap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wHPPalIndex]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop
.done
	lb bc, 2, 8
	ld a, e
	jp FillBoxCGB

InitPartyMenuOBPals:
	ld hl, PartyMenuOBPals
	ld de, UnknOBPals
	ld bc, 8 palettes
	ld a, $5
	jp FarCopyWRAM

InitPokegearPalettes:
; This is needed because the regular palette is dark at night.
	ld hl, PokegearOBPals
	ld de, UnknOBPals
	ld bc, 2 palettes
	ld a, $5
	jp FarCopyWRAM

GetBattlemonBackpicPalettePointer:
	push de
	farcall GetPartyMonPersonality
	ld c, l
	ld b, h
	ld a, [TempBattleMonSpecies]
	call GetPlayerOrMonPalettePointer
	pop de
	ret

GetEnemyFrontpicPalettePointer:
	push de
	farcall GetEnemyMonPersonality
	ld c, l
	ld b, h
	ld a, [TempEnemyMonSpecies]
	call GetFrontpicPalettePointer
	pop de
	ret

GetPlayerOrMonPalettePointer:
	and a
	jr nz, GetMonNormalOrShinyPalettePointer
	ld a, [wPlayerSpriteSetupFlags]
	bit 2, a ; transformed to male
	jr nz, .male
	ld a, [PlayerGender]
	and a
	jr z, .male
	ld a, [BattleType]
	cp BATTLETYPE_TUTORIAL
	jr z, .tutorial
	ld hl, LeafPalette
	ret

.male
	ld hl, RedPalette
	ret

.tutorial
	ld hl, OldManPalette
	ret

GetFrontpicPalettePointer:
	and a
	jr nz, GetMonNormalOrShinyPalettePointer
	ld a, [TrainerClass]

GetTrainerPalettePointer:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, TrainerPalettes
	add hl, bc
	ret

GetPaintingPalettePointer:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, PaintingPalettes
	add hl, bc
	ret

GetMonPalettePointer:
	ld l, a
	ld h, $0
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, PokemonPalettes
	add hl, bc
	ret

GetMonNormalOrShinyPalettePointer:
	push bc
	call GetMonPalettePointer
	pop bc
	push hl
	call CheckShininess
	pop hl
	ret nc
rept 4
	inc hl
endr
	ret

LoadPokemonPalette:
	; a = species
	ld a, [CurPartySpecies]
	; hl = palette
	call GetMonPalettePointer
	; load palette in BG 7
	ld a, $5
	ld de, UnknBGPals palette 7 + 2
	ld bc, 4
	jp FarCopyWRAM

LoadPartyMonPalette:
	; bc = personality
	ld hl, PartyMon1Personality
	ld a, [CurPartyMon]
	call GetPartyLocation
	ld c, l
	ld b, h
	; a = species
	ld a, [CurPartySpecies]
	; hl = palette
	call GetMonNormalOrShinyPalettePointer
	; load palette in BG 7
	ld a, $5
	ld de, UnknBGPals palette PAL_BG_TEXT + 2
	ld bc, 4
	call FarCopyWRAM
	; hl = DVs
	ld hl, PartyMon1DVs
	ld a, [CurPartyMon]
	call GetPartyLocation
	; b = species
	ld a, [CurPartySpecies]
	ld b, a
	; vary colors by DVs
	call CopyDVsToColorVaryDVs
	ld hl, UnknBGPals palette PAL_BG_TEXT + 2
	jp VaryColorsByDVs

LoadTrainerPalette:
	; a = class
	ld a, [TrainerClass]
	; hl = palette
	call GetTrainerPalettePointer
	; load palette in BG 7
	ld a, $5
	ld de, UnknBGPals palette PAL_BG_TEXT + 2
	ld bc, 4
	jp FarCopyWRAM

LoadPaintingPalette:
	; a = class
	ld a, [TrainerClass]
	; hl = palette
	call GetPaintingPalettePointer
	; load palette in BG 7
	ld a, $5
	ld de, UnknBGPals palette PAL_BG_TEXT
	ld bc, 8
	jp FarCopyWRAM

InitCGBPals::
	ld a, $1
	ld [rVBK], a
	ld hl, VTiles0
	ld bc, $200 tiles
	xor a
	call ByteFill
	xor a
	ld [rVBK], a
	ld a, $80
	ld [rBGPI], a
	ld c, 4 * 8
.bgpals_loop
if !DEF(MONOCHROME)
	ld a, (palred 31 + palgreen 31 + palblue 31) % $100
	ld [rBGPD], a
	ld a, (palred 31 + palgreen 31 + palblue 31) / $100
	ld [rBGPD], a
else
	ld a, PAL_MONOCHROME_WHITE % $100
	ld [rBGPD], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ld [rBGPD], a
endc
	dec c
	jr nz, .bgpals_loop
	ld a, $80
	ld [rOBPI], a
	ld c, 4 * 8
.obpals_loop
if !DEF(MONOCHROME)
	ld a, (palred 31 + palgreen 31 + palblue 31) % $100
	ld [rOBPD], a
	ld a, (palred 31 + palgreen 31 + palblue 31) / $100
	ld [rOBPD], a
else
	ld a, PAL_MONOCHROME_WHITE % $100
	ld [rOBPD], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ld [rOBPD], a
endc
	dec c
	jr nz, .obpals_loop
	ld a, [rSVBK]
	push af
	ld a, $5
	ld [rSVBK], a
	ld hl, UnknBGPals
	call .LoadWhitePals
	ld hl, BGPals
	call .LoadWhitePals
	pop af
	ld [rSVBK], a
	ret

.LoadWhitePals:
	ld c, 4 * 16
.loop
if !DEF(MONOCHROME)
	ld a, (palred 31 + palgreen 31 + palblue 31) % $100
	ld [hli], a
	ld a, (palred 31 + palgreen 31 + palblue 31) / $100
	ld [hli], a
else
	ld a, PAL_MONOCHROME_WHITE % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_WHITE / $100
	ld [hli], a
endc
	dec c
	jr nz, .loop
	ret

CopyData: ; 0x9a52
; copy bc bytes of data from hl to de
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, CopyData
	ret
; 0x9a5b

ClearBytes: ; 0x9a5b
; clear bc bytes of data starting from de
	xor a
	ld [de], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, ClearBytes
	ret
; 0x9a64

LoadMapPals:
	farcall LoadSpecialMapPalette
	jr c, .got_pals

	; Which palette group is based on whether we're outside or inside
	ld a, [wPermission]
	and 7
	ld e, a
	ld d, 0
	ld hl, EnvironmentColorsPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	; Futher refine by time of day
	ld a, [TimeOfDayPal]
	and 3
	add a
	add a
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld e, l
	ld d, h
	; Switch to palettes WRAM bank
	ld a, [rSVBK]
	push af
	ld a, $5
	ld [rSVBK], a
	ld hl, UnknBGPals
	ld b, 8
.outer_loop
	ld a, [de] ; lookup index for TilesetBGPalette
	push de
	push hl
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, TilesetBGPalette
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld c, 1 palettes
.inner_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .inner_loop
	pop de
	inc de
	dec b
	jr nz, .outer_loop
	pop af
	ld [rSVBK], a

.got_pals
	ld a, [TimeOfDayPal]
	and 3
	ld bc, 8 palettes
	ld hl, MapObjectPals
	call AddNTimes
	ld de, UnknOBPals
	ld bc, 8 palettes
	ld a, BANK(UnknOBPals)
	call FarCopyWRAM

	farcall LoadSpecialMapOBPalette

	ld a, [wTileset]
	cp TILESET_FOREST ; for Viridian Forest, since it's a ROUTE
	ret z
	cp TILESET_PC_FOREST ; for Yellow Forest, since it's a ROUTE
	ret z

	; overcast maps have their own roof color table
	call GetOvercastIndex
	and a
	jr z, .not_overcast
	dec a
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, OvercastRoofPals
	jr .get_roof_color

.not_overcast
	ld a, [wPermission]
	cp TOWN
	jr z, .outside
	cp ROUTE
	jr z, .outside
	cp PERM_5
	ret nz
.outside
	ld a, [MapGroup]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, RoofPals
.get_roof_color
	add hl, de
	ld a, [TimeOfDayPal]
	and 3
	cp NITE
	jr c, .morn_day
rept 4
	inc hl
endr
.morn_day
	ld de, UnknBGPals palette 6 + 2
	ld bc, 4
	ld a, $5
	jp FarCopyWRAM

INCLUDE "data/maps/environment_colors.asm"

TilesetBGPalette:
if !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/bg.pal"
else
INCLUDE "gfx/tilesets/palettes/monochrome/bg.pal"
endc

MapObjectPals:
if !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/ob.pal"
else
INCLUDE "gfx/tilesets/palettes/monochrome/ob.pal"
endc

RoofPals:
if !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/roof.pal"
else
INCLUDE "gfx/tilesets/palettes/monochrome/roof.pal"
endc

OvercastRoofPals:
if !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/roof_overcast.pal"
else
INCLUDE "gfx/tilesets/palettes/monochrome/roof_overcast.pal"
endc


INCLUDE "data/pokemon/palettes.asm"

INCLUDE "data/trainers/palettes.asm"

INCLUDE "data/events/paintings/palettes.asm"

INCLUDE "engine/palettes.asm"
