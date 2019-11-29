Pokegear_LoadGFX: ; 90c4e
	call ClearVBank1
	ld hl, TownMapGFX
	ld de, VTiles2
	ld a, BANK(TownMapGFX)
	jp FarDecompress

TownMap_LoadGFX:
	ld hl, TownMapCursorGFX
	ld de, VTiles0 tile $04
	ld a, BANK(TownMapCursorGFX)
	call Decompress
	ld a, [MapGroup]
	ld b, a
	ld a, [MapNumber]
	ld c, a
	call GetWorldMapLocation
	cp FAST_SHIP
	jr z, .ssaqua
	cp SINJOH_RUINS
	jr z, .sinjoh
	cp MYSTRI_STAGE
	jr z, .sinjoh
	farcall GetPlayerIcon
	push de
	ld h, d
	ld l, e
	ld a, b
	; standing sprite
	push af
	ld de, VTiles0 tile $10
	ld bc, 4 tiles
	call FarCopyBytes
	pop af
	pop hl
	; walking sprite
	ld de, 12 tiles
	add hl, de
	ld de, VTiles0 tile $14
	ld bc, 4 tiles
	jp FarCopyBytes

.ssaqua
	ld hl, FastShipGFX
.loadaltsprite
	ld de, VTiles0 tile $10
	ld bc, 8 tiles
	jp CopyBytes

.sinjoh
	ld hl, SinjohRuinsArrowGFX
	jr .loadaltsprite

; 90cb2

FastShipGFX: ; 90cb2
INCBIN "gfx/town_map/fast_ship.2bpp"
; 90d32

SinjohRuinsArrowGFX:
INCBIN "gfx/town_map/arrow.2bpp"

TownMap_InitCursorAndPlayerIconPositions: ; 90d70 (24:4d70)
	call GetCurrentLandmark
	ld [wPokegearMapPlayerIconLandmark], a
	ld [wPokegearMapCursorLandmark], a
	ret

SkipHiddenOrangeIslandsUp:
	call CheckSkipNavelRock
	jr nz, .not_after_navel_rock
	inc [hl]
.not_after_navel_rock
	call CheckSkipFarawayIsland
	jr nz, .not_after_faraway_island
	inc [hl]
.not_after_faraway_island
	ld a, [hl]
	cp FARAWAY_ISLAND + 1
	ret nz
	ld [hl], SHAMOUTI_ISLAND
	ret

SkipHiddenOrangeIslandsDown:
	call CheckSkipFarawayIsland
	jr nz, .not_before_faraway_island
	dec [hl]
.not_before_faraway_island
	call CheckSkipNavelRock
	ret nz
	dec [hl]
	ret

CheckSkipNavelRock:
	ld a, [hl]
	cp NAVEL_ROCK
	ret nz
	push hl
	eventflagcheck EVENT_VISITED_NAVEL_ROCK
	pop hl
	ret

CheckSkipFarawayIsland:
	ld a, [hl]
	cp FARAWAY_ISLAND
	ret nz
	push hl
	eventflagcheck EVENT_VISITED_FARAWAY_ISLAND
	pop hl
	ret

PokegearMap_InitPlayerIcon: ; 9106a
	push af
	depixel 0, 0
	ld b, SPRITE_ANIM_INDEX_RED_WALK
	ld a, [PlayerGender]
	bit 0, a
	jr z, .got_gender
	ld b, SPRITE_ANIM_INDEX_BLUE_WALK
.got_gender
	ld a, b
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_TILE_ID
	add hl, bc
	ld [hl], $10
	pop af
	ld e, a
	push bc
	farcall GetLandmarkCoords
	pop bc
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], e
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], d
	ret

; 91098

PokegearMap_InitCursor: ; 91098
	push af
	depixel 0, 0
	ld a, SPRITE_ANIM_INDEX_POKEGEAR_MODE_ARROW
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_TILE_ID
	add hl, bc
	ld [hl], $4
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld [hl], SPRITE_ANIM_SEQ_NULL
	pop af
	push bc
	call PokegearMap_UpdateCursorPosition
	pop bc
	ret

; 910b4

PokegearMap_UpdateLandmarkName: ; 910b4
	push af
	hlcoord 0, 0
	lb bc, 1, SCREEN_WIDTH
	call ClearBox
	pop af
	ld e, a
	push de
	farcall GetLandmarkName
	pop de
	hlcoord 1, 0
	ld de, StringBuffer1
	call PlaceString
	hlcoord 0, 0
	ld [hl], "▼"
	hlcoord 19, 0
	ld [hl], "▲"
	ret

; 910d4

PokegearMap_UpdateCursorPosition: ; 910d4
	push bc
	ld e, a
	farcall GetLandmarkCoords
	pop bc
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], e
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], d
	ret
; 910e8

TownMap_GetJohtoLandmarkLimits:
	lb de, SILVER_CAVE, NEW_BARK_TOWN
	ret

TownMap_GetKantoLandmarkLimits: ; 910e8
	lb de, ROUTE_28, PALLET_TOWN
	ret

TownMap_GetOrangeLandmarkLimits:
	lb de, FARAWAY_ISLAND, SHAMOUTI_ISLAND
	ret

_TownMap: ; 9191c
	ld hl, Options1
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]

	ld a, [hInMenu]
	push af
	ld a, $1
	ld [hInMenu], a

	ld a, [VramState]
	push af
	xor a
	ld [VramState], a

	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	call DisableLCD
	call Pokegear_LoadGFX
	call TownMap_LoadGFX
	farcall ClearSpriteAnims
	ld a, 8
	call SkipMusic
	ld a, %11100011
	ld [rLCDC], a
	call TownMap_InitCursorAndPlayerIconPositions
	ld [wTownMapPlayerIconLandmark], a
	ld [wTownMapCursorLandmark], a
	xor a
	ld [hBGMapMode], a
	call .InitTilemap
	call WaitBGMap2
	ld a, [wTownMapPlayerIconLandmark]
	call PokegearMap_InitPlayerIcon
	ld a, [wTownMapCursorLandmark]
	call PokegearMap_InitCursor
	ld a, c
	ld [wTownMapCursorObjectPointer], a
	ld a, b
	ld [wTownMapCursorObjectPointer + 1], a
	ld b, CGB_POKEGEAR_PALS
	call GetCGBLayout
	call SetPalettes
	ld a, %11100100
	call DmgToCgbObjPal0
	call DelayFrame

	ld a, [wTownMapPlayerIconLandmark]
	cp SHAMOUTI_LANDMARK
	jr nc, .orange
	cp KANTO_LANDMARK
	jr nc, .kanto
	call TownMap_GetJohtoLandmarkLimits
	jr .resume
.kanto
	call TownMap_GetKantoLandmarkLimits
	jr .resume
.orange
	call TownMap_GetOrangeLandmarkLimits

.resume
	call .loop
	pop af
	ld [VramState], a
	pop af
	ld [hInMenu], a
	pop af
	ld [Options1], a
	jp ClearBGPalettes

.loop
	call JoyTextDelay
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	ret nz

	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .pressed_up

	ld a, [hl]
	and D_DOWN
	jr nz, .pressed_down
.loop2
	push de
	farcall PlaySpriteAnimations
	pop de
	call DelayFrame
	jr .loop

.pressed_up
	ld hl, wTownMapCursorLandmark
	ld a, [hl]
	cp d
	jr c, .okay
	ld a, e
	dec a
	ld [hl], a

.okay
	inc [hl]
	push de
	call SkipHiddenOrangeIslandsUp
	jr .next

.pressed_down
	ld hl, wTownMapCursorLandmark
	ld a, [hl]
	cp e
	jr nz, .okay2
	ld a, d
	inc a
	ld [hl], a

.okay2
	dec [hl]
	push de
	call SkipHiddenOrangeIslandsDown

.next
	ld a, [wTownMapCursorLandmark]
	call PokegearMap_UpdateLandmarkName
	ld a, [wTownMapCursorObjectPointer]
	ld c, a
	ld a, [wTownMapCursorObjectPointer + 1]
	ld b, a
	ld a, [wTownMapCursorLandmark]
	call PokegearMap_UpdateCursorPosition
	pop de
	jr .loop2
; 91a04

.InitTilemap: ; 91a04
	farcall PokegearMap
	ld a, [wTownMapCursorLandmark]
	call PokegearMap_UpdateLandmarkName
	call TownMapPals

	ld a, [wTownMapPlayerIconLandmark]
	cp SHAMOUTI_LANDMARK
	jp nc, TownMapOrangeFlips
	cp KANTO_LANDMARK
	jp nc, TownMapKantoFlips
	jp TownMapJohtoFlips
; 91a53

PokegearMap: ; 91ae1
	call LoadTownMapGFX
	ld a, [wPokegearMapPlayerIconLandmark]
	cp SHAMOUTI_LANDMARK
	jp nc, FillOrangeMap
	cp KANTO_LANDMARK
	jp nc, FillKantoMap
	jp FillJohtoMap
; 91af3

_FlyMap: ; 91af3
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	ld hl, hInMenu
	ld a, [hl]
	push af
	ld [hl], $1
	xor a
	ld [hBGMapMode], a
	farcall ClearSpriteAnims
	call LoadTownMapGFX
	call FlyMap
	ld b, CGB_POKEGEAR_PALS
	call GetCGBLayout
	call SetPalettes
.loop
	call JoyTextDelay
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, .pressedB
	ld a, [hl]
	and A_BUTTON
	jr nz, .pressedA
	call FlyMapScroll
	call GetMapCursorCoordinates
	farcall PlaySpriteAnimations
	call DelayFrame
	jr .loop

.pressedB
	ld a, -1
	jr .exit

.pressedA
	ld a, [wTownMapPlayerIconLandmark]
	ld l, a
	ld h, 0
	add hl, hl
	ld de, Flypoints + 1
	add hl, de
	ld a, [hl]
.exit
	ld [wTownMapPlayerIconLandmark], a
	pop af
	ld [hInMenu], a
	call ClearBGPalettes
	ld a, $90
	ld [hWY], a
	xor a
	ld [hBGMapAddress], a
	ld a, VBGMap0 / $100
	ld [hBGMapAddress + 1], a
	ld a, [wTownMapPlayerIconLandmark]
	ld e, a
	ret

; 91b73

FlyMapScroll: ; 91b73
	ld a, [StartFlypoint]
	ld e, a
	ld a, [EndFlypoint]
	ld d, a
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .ScrollNext
	ld a, [hl]
	and D_DOWN
	jr nz, .ScrollPrev
	ret

.ScrollNext:
	ld hl, wTownMapPlayerIconLandmark
	ld a, [hl]
	cp d
	jr nz, .NotAtEndYet
	ld a, e
	dec a
	ld [hl], a
.NotAtEndYet:
	inc [hl]
	call CheckIfVisitedFlypoint
	jr z, .ScrollNext
	jr .Finally

.ScrollPrev:
	ld hl, wTownMapPlayerIconLandmark
	ld a, [hl]
	cp e
	jr nz, .NotAtStartYet
	ld a, d
	inc a
	ld [hl], a
.NotAtStartYet:
	dec [hl]
	call CheckIfVisitedFlypoint
	jr z, .ScrollPrev
.Finally:
	call TownMapBubble
	call WaitBGMap
	xor a
	ld [hBGMapMode], a
	ret

; 91bb5

TownMapBubble: ; 91bb5
; Draw the row containing the location text in the town map HUD
; Top row
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH
	ld a, " "
	call ByteFill
; Print the name of the default flypoint
	call .Name
; Up/down arrows
	hlcoord 0, 0
	ld [hl], "▼"
	hlcoord 19, 0
	ld [hl], "▲"
	ret

.Name:
; We need the map location of the default flypoint
	ld a, [wTownMapPlayerIconLandmark]
	ld l, a
	ld h, 0
	add hl, hl ; two bytes per flypoint
	ld de, Flypoints
	add hl, de
	ld e, [hl]
	farcall GetLandmarkName
	hlcoord 1, 0
	ld de, StringBuffer1
	jp PlaceString

; 91c17

GetMapCursorCoordinates: ; 91c17
	ld a, [wTownMapPlayerIconLandmark]
	ld l, a
	ld h, $0
	add hl, hl
	ld de, Flypoints
	add hl, de
	ld e, [hl]
	farcall GetLandmarkCoords
	ld a, [wTownMapCursorCoordinates]
	ld c, a
	ld a, [wTownMapCursorCoordinates + 1]
	ld b, a
	ld hl, $4
	add hl, bc
	ld [hl], e
	ld hl, $5
	add hl, bc
	ld [hl], d
	ret

; 91c3c

CheckIfVisitedFlypoint: ; 91c3c
; Check if the flypoint loaded in [hl] has been visited yet.
	push bc
	push de
	push hl
	ld l, [hl]
	ld h, 0
	add hl, hl
	ld de, Flypoints + 1
	add hl, de
	ld c, [hl]
	call HasVisitedSpawn
	pop hl
	pop de
	pop bc
	and a
	ret

; 91c50

HasVisitedSpawn: ; 91c50
; Check if spawn point c has been visited.
	ld hl, VisitedSpawns
	ld b, CHECK_FLAG
	ld d, 0
	predef FlagPredef
	ld a, c
	ret

; 91c5e

INCLUDE "data/maps/flypoints.asm"

FlyMap: ; 91c90
	call GetCurrentLandmark
; The first 46 locations are part of Johto. The rest are in Kanto
	cp KANTO_LANDMARK
	jr nc, .KantoFlyMap
;.JohtoFlyMap:
	push af
; Start from New Bark Town
	ld a, FLY_NEW_BARK
	ld [wTownMapPlayerIconLandmark], a
; Flypoints begin at New Bark Town...
	ld [StartFlypoint], a
; ..and end at Silver Cave
	ld a, FLY_MT_SILVER
	ld [EndFlypoint], a
; Fill out the map
	call FillJohtoMap
	call TownMapBubble
	call TownMapPals
	call TownMapJohtoFlips
	call .MapHud
	pop af
	jp TownMapPlayerIcon

.KantoFlyMap:
	push af
; Flypoints begin at Pallet Town...
	ld a, FLY_PALLET
	ld [StartFlypoint], a
	ld [wTownMapPlayerIconLandmark], a
; ...and end at Indigo Plateau
	ld a, FLY_INDIGO
	ld [EndFlypoint], a
; Fill out the map
	call FillKantoMap
	call TownMapBubble
	call TownMapPals
	call TownMapKantoFlips
	call .MapHud
	pop af
	jp TownMapPlayerIcon

.MapHud:
	hlbgcoord 0, 0 ; BG Map 0
	call TownMapBGUpdate
	call TownMapMon
	ld a, c
	ld [wTownMapCursorCoordinates], a
	ld a, b
	ld [wTownMapCursorCoordinates + 1], a
	ret

; 91d11

_Area: ; 91d11
; e: Current landmark
	ld a, [wTownMapPlayerIconLandmark]
	push af
	ld a, [wTownMapCursorLandmark]
	push af
	ld a, e
	ld [wTownMapPlayerIconLandmark], a
	call ClearSprites
	xor a
	ld [hBGMapMode], a
	ld a, $1
	ld [hInMenu], a
	ld de, PokedexNestIconGFX
	ld hl, VTiles0 tile $7f
	lb bc, BANK(PokedexNestIconGFX), 1
	call Request2bpp
	call .GetPlayerOrFastShipIcon
	ld hl, VTiles0 tile $78
	ld c, 4
	call Request2bpp
	call LoadTownMapGFX

	ld a, [wTownMapPlayerIconLandmark]
	cp SHAMOUTI_LANDMARK
	jr nc, .shamouti
	cp KANTO_LANDMARK
	jr nc, .kanto
.johto
	ld a, JOHTO_REGION
	jr .set_region
.shamouti
	ld a, ORANGE_REGION
	jr .set_region
.kanto
	ld a, KANTO_REGION
.set_region
	ld [wTownMapCursorLandmark], a
	call .UpdateGFX
	call .GetAndPlaceNest
.loop
	call JoyTextDelay
	ld hl, hJoyPressed
	ld a, [hl]
	and A_BUTTON | B_BUTTON
	jr nz, .a_b
	ld a, [hJoypadDown]
	and SELECT
	jr nz, .select
	call .LeftRightInput
	call .BlinkNestIcons
	jr .next

.select
	call .HideNestsShowPlayer
.next
	call DelayFrame
	jr .loop

.a_b
	call ClearSprites
	pop af
	ld [wTownMapCursorLandmark], a
	pop af
	ld [wTownMapPlayerIconLandmark], a
	ret

; 91d9b

.LeftRightInput: ; 91d9b
	ld a, [hl]
	and D_LEFT
	jr nz, .left
	ld a, [hl]
	and D_RIGHT
	jr nz, .right
	ret

.left
	ld a, [wTownMapCursorLandmark]
	and a ; cp JOHTO_REGION ; min
	ret z

	dec a
	ld [wTownMapCursorLandmark], a
	jr .update

.right
	ld a, [wTownMapCursorLandmark]
	cp ORANGE_REGION ; max
	ret z
	cp KANTO_REGION
	jr z, .check_seen_orange_island
	ld a, [StatusFlags]
	bit 6, a ; ENGINE_CREDITS_SKIP
	ret z
	jr .go_right
.check_seen_orange_island
	ld a, [StatusFlags2]
	bit 3, a ; ENGINE_SEEN_SHAMOUTI_ISLAND
	ret z
.go_right

	ld a, [wTownMapCursorLandmark]
	inc a
	ld [wTownMapCursorLandmark], a

.update
	call .UpdateGFX
	jp .GetAndPlaceNest

.UpdateGFX:
	call ClearSprites
	farcall _Pokedex_JustWhiteOutBG
	ld a, [wTownMapCursorLandmark]
	cp KANTO_REGION
	jr z, .KantoGFX
	cp ORANGE_REGION
	jr z, .OrangeGFX
	call FillJohtoMap
	call .PlaceString_MonsNest
	call TownMapPals
	call TownMapJohtoFlips
.FinishGFX
	hlbgcoord 0, 0
	call TownMapBGUpdate
	ld b, CGB_POKEDEX_AREA_PALS
	call GetCGBLayout
	call SetPalettes
	xor a
	ld [hBGMapMode], a
	ret

.KantoGFX:
	call FillKantoMap
	call .PlaceString_MonsNest
	call TownMapPals
	call TownMapKantoFlips
	jr .FinishGFX

.OrangeGFX:
	call FillOrangeMap
	call .PlaceString_MonsNest
	call TownMapPals
	call TownMapOrangeFlips
	jr .FinishGFX

; 91dcd

.BlinkNestIcons: ; 91dcd
	ld a, [hVBlankCounter]
	ld e, a
	and $f
	ret nz
	ld a, e
	and $10
	jr nz, .copy_sprites
	jp ClearSprites

.copy_sprites
	hlcoord 0, 0
	ld de, Sprites
	ld bc, SpritesEnd - Sprites
	jp CopyBytes

; 91de9

.PlaceString_MonsNest: ; 91de9
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH
	ld a, " "
	call ByteFill
	call GetPokemonName
	hlcoord 1, 0
	call PlaceString
	ld h, b
	ld l, c
	ld de, .String_SNest
	call PlaceString
; show left/right arrows for other regions if they're available
	ld a, [StatusFlags]
	bit 6, a ; ENGINE_CREDITS_SKIP
	ret z
	hlcoord 0, 0
	ld [hl], "◀"
	hlcoord 0, 0, AttrMap
	ld [hl], 0
	hlcoord 19, 0
	ld [hl], "▶"
	hlcoord 19, 0, AttrMap
	ld [hl], 0
	ret

; 91e16

.String_SNest:
	db "'s Nest@"
; 91e1e

.GetAndPlaceNest: ; 91e1e
	ld a, [wTownMapCursorLandmark]
	ld e, a
	farcall FindNest ; load nest landmarks into TileMap[0,0]
	decoord 0, 0
	ld hl, Sprites
.nestloop
	ld a, [de]
	and a
	jr z, .done_nest
	push de
	ld e, a
	push hl
	farcall GetLandmarkCoords
	pop hl
	; load into OAM
	ld a, d
	sub 4
	ld [hli], a
	ld a, e
	sub 4
	ld [hli], a
	ld a, $7f ; nest icon in this context
	ld [hli], a
	xor a
	ld [hli], a
	; next
	pop de
	inc de
	jr .nestloop

.done_nest
	ld hl, Sprites
	decoord 0, 0
	ld bc, SpritesEnd - Sprites
	jp CopyBytes

; 91e5a

.HideNestsShowPlayer: ; 91e5a
	call .CheckPlayerLocation
	ret c
	ld a, [wTownMapPlayerIconLandmark]
	ld e, a
	farcall GetLandmarkCoords
	ld c, e
	ld b, d
	ld de, .PlayerOAM
	ld hl, Sprites
.ShowPlayerLoop:
	ld a, [de]
	cp $80
	jr z, .clear_oam
	add b
	ld [hli], a
	inc de
	ld a, [de]
	add c
	ld [hli], a
	inc de
	ld a, [de]
	add $78 ; where the player's sprite is loaded
	ld [hli], a
	inc de
	push bc
	ld c, PAL_OW_RED
	ld a, [PlayerGender]
	bit 0, a
	jr z, .got_gender
	ld c, PAL_OW_GREEN
.got_gender
	ld a, c
	ld [hli], a
	pop bc
	jr .ShowPlayerLoop

.clear_oam
	ld hl, Sprites + 4 * 4
	ld bc, SpritesEnd - (Sprites + 4 * 4)
	xor a
	jp ByteFill

; 91e9c

.PlayerOAM: ; 91e9c
	db -1 * 8, -1 * 8,  0 ; top left
	db -1 * 8,  0 * 8,  1 ; top right
	db  0 * 8, -1 * 8,  2 ; bottom left
	db  0 * 8,  0 * 8,  3 ; bottom right
	db $80 ; terminator
; 91ea9

.CheckPlayerLocation: ; 91ea9
; Don't show the player's sprite if you're
; not in the same region as what's currently
; on the screen.
	ld a, [wTownMapPlayerIconLandmark]
	cp SHAMOUTI_LANDMARK
	jr nc, .player_in_orange
	cp KANTO_LANDMARK
	jr nc, .player_in_kanto
	ld a, [wTownMapCursorLandmark]
	and a ; cp JOHTO_REGION
	jr nz, .clear
.ok
	and a
	ret

.player_in_kanto
	ld a, [wTownMapCursorLandmark]
	cp KANTO_REGION
	jr nz, .clear
	jr .ok

.player_in_orange
	ld a, [wTownMapCursorLandmark]
	cp ORANGE_REGION
	jr nz, .clear
	jr .ok

.clear
	ld hl, Sprites
	ld bc, SpritesEnd - Sprites
	xor a
	call ByteFill
	scf
	ret

; 91ed0

.GetPlayerOrFastShipIcon: ; 91ed0
	ld a, [wTownMapPlayerIconLandmark]
	cp FAST_SHIP
	jr z, .FastShip
	cp SINJOH_RUINS
	jr z, .Sinjoh
	cp MYSTRI_STAGE
	jr z, .Sinjoh
	farjp GetPlayerIcon

.FastShip:
	ld de, FastShipGFX
	ld b, BANK(FastShipGFX)
	ret

.Sinjoh:
	ld de, SinjohRuinsArrowGFX
	ld b, BANK(SinjohRuinsArrowGFX)
	ret

; 91ee4

TownMapBGUpdate: ; 91ee4
; Update BG Map tiles and attributes

; BG Map address
	ld a, l
	ld [hBGMapAddress], a
	ld a, h
	ld [hBGMapAddress + 1], a
; BG Map mode 2 (palettes)
	ld a, 2
	ld [hBGMapMode], a
; The BG Map is updated in thirds, so we wait
; 3 frames to update the whole screen's palettes.
	ld c, 3
	call DelayFrames
; Update BG Map tiles
	call WaitBGMap
; Turn off BG Map update
	xor a
	ld [hBGMapMode], a
	ret

; 91eff

FillJohtoMap: ; 91eff
	ld de, JohtoMap
	jr FillTownMap

FillOrangeMap:
	ld de, OrangeMap
	call FillTownMap
	eventflagcheck EVENT_VISITED_FARAWAY_ISLAND
	ret nz
	ld a, $a
	hlcoord 1, 12
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	hlcoord 5, 13
	ld [hl], a
	hlcoord 2, 14
	ld [hli], a
	ld [hli], a
	inc hl
	ld [hl], a
	hlcoord 2, 15
	ld [hli], a
	ld [hli], a
	inc hl
	ld [hl], a
	hlcoord 5, 16
	ld [hl], a
	ret

FillKantoMap: ; 91f04
	ld de, KantoMap
FillTownMap: ; 91f07
	hlcoord 0, 0
.loop
	ld a, [de]
	cp -1
	ret z
	; [de] == yxTTTTTT
	ld a, [de]
	and %00111111
	; a == 00TTTTTT
	ld [hli], a
	inc de
	jr .loop

; 91f13

TownMapPals: ; 91f13
; Assign palettes based on tile ids
	hlcoord 0, 0
	decoord 0, 0, AttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
.loop
	ld a, [hli]
	push hl
	cp $40 ; tiles in PokegearGFX (after TownMapGFX) use palette 0
	jr nc, .pal0
	call GetNextTownMapTilePalette
	jr .update
.pal0
	xor a
.update
	pop hl
	ld [de], a
.skip
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret
; 91f7b

GetNextTownMapTilePalette:
; The palette data is condensed to nybbles, least-significant first.
	ld hl, .PalMap
	srl a
	jr c, .odd
; Even-numbered tile ids take the bottom nybble...
	add l
	ld l, a
	ld a, h
	adc 0
	ld h, a
	ld a, [hl]
	and %111
	ret

.odd
; ...and odd ids take the top.
	add l
	ld l, a
	ld a, h
	adc 0
	ld h, a
	ld a, [hl]
	swap a
	and %111
	ret

.PalMap:
townmappals: MACRO
rept _NARG / 2
	dn \2, \1
	shift
	shift
endr
endm
	townmappals 1, 0, 3, 3, 4, 4, 6, 6, 2, 2, 2, 2, 2, 1, 7, 7
	townmappals 1, 1, 3, 3, 4, 4, 6, 6, 2, 2, 2, 2, 2, 1, 7, 7
	townmappals 1, 1, 3, 3, 4, 0, 6, 6, 6, 5, 5, 1, 1, 1, 7, 7
	townmappals 1, 1, 0, 0, 0, 0, 6, 6, 0, 0, 0, 0, 4, 2, 7, 4

TownMapJohtoFlips:
	decoord 0, 0, JohtoMap
	jr TownMapFlips

TownMapKantoFlips:
	decoord 0, 0, KantoMap
	jr TownMapFlips

TownMapOrangeFlips:
	decoord 0, 0, OrangeMap
TownMapFlips:
	hlcoord 0, 0, AttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
.loop
	; [de] == YXtttttt
	ld a, [de]
	and %11000000
	srl a
	; a == 0YX00000
	or [hl]
	ld [hli], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

TownMapMon: ; 91f7b
; Draw the FlyMon icon at town map location in

; Get FlyMon species
	ld a, [CurPartyMon]
	ld hl, PartySpecies
	ld e, a
	ld d, $0
	add hl, de
	ld a, [hl]
	ld [wd265], a
; Get FlyMon icon
	ld e, 8 ; starting tile in VRAM
	farcall PokegearFlyMap_GetMonIcon
; Animation/palette
	depixel 0, 0
	ld a, SPRITE_ANIM_INDEX_PARTY_MON
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_TILE_ID
	add hl, bc
	ld [hl], $8
	ld hl, SPRITEANIMSTRUCT_ANIM_SEQ_ID
	add hl, bc
	ld [hl], SPRITE_ANIM_SEQ_NULL
	ret

; 91fa6

TownMapPlayerIcon: ; 91fa6
; Draw the player icon at town map location in a
	push af
	farcall GetPlayerIcon
; Standing icon
	ld hl, VTiles0 tile $10
	ld c, 4 ; # tiles
	call Request2bpp
; Walking icon
	ld hl, $c0
	add hl, de
	ld d, h
	ld e, l
	ld hl, VTiles0 tile $14
	ld c, 4 ; # tiles
	call Request2bpp
; Animation/palette
	depixel 0, 0
	ld b, SPRITE_ANIM_INDEX_RED_WALK ; Male
	ld a, [PlayerGender]
	bit 0, a
	jr z, .got_gender
	ld b, SPRITE_ANIM_INDEX_BLUE_WALK ; Female
.got_gender
	ld a, b
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_TILE_ID
	add hl, bc
	ld [hl], $10
	pop af
	ld e, a
	push bc
	farcall GetLandmarkCoords
	pop bc
	ld hl, SPRITEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], e
	ld hl, SPRITEANIMSTRUCT_YCOORD
	add hl, bc
	ld [hl], d
	ret

; 0x91ff2

LoadTownMapGFX: ; 91ff2
	ld hl, TownMapGFX
	ld de, VTiles2
	lb bc, BANK(TownMapGFX), $40
	jp DecompressRequest2bpp

; 91fff

JohtoMap: ; 91fff
INCBIN "gfx/town_map/johto.bin"
; 92168

KantoMap: ; 92168
INCBIN "gfx/town_map/kanto.bin"
; 922d1

OrangeMap:
INCBIN "gfx/town_map/orange.bin"

PokedexNestIconGFX: ; 922d1
INCBIN "gfx/town_map/dexmap_nest_icon.2bpp"

TownMapCursorGFX: ; 914dd
INCBIN "gfx/town_map/cursor.2bpp.lz"
; 9150d
