CutGrassBlockPointers:
; Which tileset are we in?
	dbw TILESET_PALLET_CINNABAR, .pallet_cinnabar
	dbw TILESET_VIRIDIAN, .viridian
	dbw TILESET_PEWTER, .pewter
	dbw TILESET_CERULEAN, .cerulean
	dbw TILESET_VERMILION, .vermilion
	dbw TILESET_CELADON, .celadon
	dbw TILESET_LAVENDER, .lavender
	dbw TILESET_CYCLING_ROAD, .cycling_road
	dbw TILESET_FUCHSIA, .fuchsia
	dbw TILESET_SAFFRON, .saffron
	dbw TILESET_SAFARI_ZONE, .safari_zone
	dbw TILESET_INDIGO, .indigo
	dbw TILESET_FOREST, .forest
	dbw TILESET_NEW_BARK_CHERRYGROVE, .new_bark_cherrygrove
	dbw TILESET_VIOLET_MAHOGANY, .violet_mahogany
	dbw TILESET_AZALEA_BLACKTHORN, .azalea_blackthorn
	dbw TILESET_GOLDENROD, .goldenrod
	dbw TILESET_ECRUTEAK, .ecruteak
	dbw TILESET_OLIVINE_CIANWOOD, .olivine_cianwood
	dbw TILESET_NATIONAL_PARK, .national_park
	dbw TILESET_SHRINES_RUINS_OUTSIDE, .shrines_ruins_outside
	dbw TILESET_PC_FOREST, .pc_forest
	dbw TILESET_PC_SHAMOUTI_ISLAND, .shamouti_island
	dbw TILESET_PC_VALENCIA_ISLAND, .valencia_island
	dbw TILESET_PC_FARAWAY_ISLAND, .faraway_island
	db -1

; Which meta tile are we facing, and which should we replace it with?

.lavender
	db $dc, $0b
	db $de, $02
.pallet_cinnabar
.viridian
.pewter
.cerulean
.vermilion
.celadon
.cycling_road
.fuchsia
.saffron
	db $03, $02
	db -1

.safari_zone
	db $03, $02
	db $10, $02
	db $11, $02
	db $12, $02
	db $13, $02
	db $14, $02
	db $15, $02
	db $16, $02
	db $17, $02
	db $5f, $88
	db $60, $1a
	db $61, $1b
	db $62, $48
	db $63, $89
	db -1

.indigo
	db $03, $02
	db $38, $3b
	db $3a, $43
	db -1

.forest
	db $03, $02
	db $04, $02
	db $05, $02
	db $13, $58
	db $16, $14
	db $1a, $18
	db $1e, $1c
	db $1f, $1d
	db $40, $5c
	db $42, $5a
	db $46, $5b
	db $48, $14
	db $49, $14
	db $4b, $15
	db $4d, $5d
	db $50, $02
	db $51, $59
	db $52, $09
	db $53, $2d
	db $54, $08
	db $55, $09
	db $56, $0a
	db $57, $20
	db -1

.new_bark_cherrygrove
	db $96, $02
	db $97, $02
	db $f6, $56
	db $f7, $57
.violet_mahogany
.azalea_blackthorn
.goldenrod
.ecruteak
	db $03, $02
	db $74, $24
	db $75, $23
	db $76, $0b
	db $77, $1b
	db -1

.olivine_cianwood
	db $03, $02
	db $76, $0b
	db -1

.national_park
	db $03, $02
	db $07, $03
	db $0b, $03
	db -1

.shrines_ruins_outside
	db $03, $02
	db $11, $0b
	db $a6, $c8
	db $b6, $c9
	db $b7, $ca
	db $bb, $a8
	db -1

.shamouti_island
	db $95, $4c
.valencia_island
	db $03, $02
	db -1

.pc_forest
	db $03, $01
	db $07, $05
	db $13, $11
	db $17, $19
	db $3b, $37
	db $4b, $47
	db $57, $0b
	db -1

.faraway_island
	db $03, $02
	db $08, $74
	db $09, $75
	db $0a, $76
	db $0b, $77
	db $0c, $02
	db $0d, $02
	db $0e, $02
	db $0f, $02
	db -1
