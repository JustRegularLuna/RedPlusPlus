Pokepic:: ; 244e3
	ld hl, PokepicMenuDataHeader
	call CopyMenuDataHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	ld a, [IsCurMonInParty]
	and a
	jr nz, .partymon
	farcall LoadPokemonPalette
	ld a, 1
	ld [MonVariant], a
	jr .got_palette
.partymon
	farcall LoadPartyMonPalette
	ld hl, PartyMon1Form
	ld a, [CurPartyMon]
	farcall GetPartyLocation
	farcall GetVariant
.got_palette
	call UpdateTimePals
	xor a
	ld [hBGMapMode], a
	ld a, [CurPartySpecies]
	ld [CurSpecies], a
	call GetBaseData
	ld de, VTiles1
	predef GetFrontpic
_Displaypic:
	ld a, [wMenuBorderTopCoord]
	inc a
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	inc a
	ld c, a
	call Coord2Tile
	ld a, $80
	ld [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	jp WaitBGMap

Trainerpic::
	ld hl, PokepicMenuDataHeader
	call CopyMenuDataHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	farcall LoadTrainerPalette
	call UpdateTimePals
	xor a
	ld [hBGMapMode], a
	ld a, [TrainerClass]
	ld de, VTiles1
	farcall GetTrainerPic
	jr _Displaypic

Paintingpic::
	ld hl, PokepicMenuDataHeader
	call CopyMenuDataHeader
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	farcall LoadPaintingPalette
	call UpdateTimePals
	xor a
	ld [hBGMapMode], a
	ld a, [TrainerClass]
	ld de, VTiles1
	farcall GetPaintingPic
	jr _Displaypic

ClosePokepic:: ; 24528
	ld hl, PokepicMenuDataHeader
	call CopyMenuDataHeader
	call ClearMenuBoxInterior
	call WaitBGMap
	call GetMemCGBLayout
	xor a
	ld [hBGMapMode], a
	call OverworldTextModeSwitch
	call ApplyTilemap
	call UpdateSprites
	jp LoadStandardFont

PokepicMenuDataHeader: ; 0x24547
	db $40 ; flags
	db 04, 06 ; start coords
	db 12, 14 ; end coords
	dw NULL
	db 1 ; default option
