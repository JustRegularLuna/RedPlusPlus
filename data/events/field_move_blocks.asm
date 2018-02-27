CutGrassBlockPointers:
; Which tileset are we in?
	dbw TILESET_PALLET_CINNABAR, .pallet_cinnabar
	dbw TILESET_VIRIDIAN, .viridian
	dbw TILESET_PEWTER, .pewter
	dbw TILESET_VERMILION, .vermilion
	dbw TILESET_LAVENDER, .lavender
	dbw TILESET_CELADON, .celadon
	dbw TILESET_FUCHSIA, .fuchsia
	dbw TILESET_SAFFRON, .saffron
	dbw TILESET_ROUTES, .routes
	dbw TILESET_CERULEAN, .cerulean
	dbw TILESET_INDIGO, .indigo
	dbw TILESET_FOREST, .forest
	dbw TILESET_SAFARI_ZONE, .safari_zone
	dbw TILESET_PC_JOHTO_TRADITIONAL, .johto_traditional
	dbw TILESET_PC_JOHTO_MODERN, .johto_modern
	dbw TILESET_PC_JOHTO_OVERCAST, .johto_overcast
	dbw TILESET_PC_PARK, .park
	dbw TILESET_PC_FOREST, .pc_forest
	dbw TILESET_PC_SHAMOUTI_ISLAND, .shamouti_island
	dbw TILESET_PC_VALENCIA_ISLAND, .valencia_island
	dbw TILESET_PC_FARAWAY_ISLAND, .faraway_island
	db -1

; Which meta tile are we facing, and which should we replace it with?

.routes
	db $c4, $0b
	db $c6, $02
.pallet_cinnabar
.viridian
.pewter
.cerulean
.vermilion
.lavender
.celadon
.fuchsia
.saffron
	db $03, $02
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

.shamouti_island
	db $95, $4c
.johto_traditional
.johto_modern
.johto_overcast
.valencia_island
	db $03, $02
	db -1

.park
	db $03, $04
	db $13, $03
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

WhirlpoolBlockPointers:
	dbw TILESET_PC_JOHTO_TRADITIONAL, .johto_traditional
	dbw TILESET_PC_JOHTO_MODERN, .johto_modern
	dbw TILESET_PC_JOHTO_OVERCAST, .johto_overcast
	db -1

.johto_traditional
.johto_overcast
	db $07, $07
	db -1

.johto_modern
	db $83, $83
	db -1
