LoadBlindingFlashPalette:: ; 49409
	ld a, $5
	ld de, UnknBGPals palette PAL_BG_TEXT
	ld hl, BlindingFlashPalette
	ld bc, 1 palettes
	jp FarCopyWRAM
; 49418

BlindingFlashPalette: ; 49418
if DEF(NOIR)
	GRAYSCALE 31, 17, 06, 00
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR
else
	RGB 31,31,31, 08,19,28, 05,05,16, 00,00,00
endc
; 49420

LoadSpecialMapPalette: ; 494ac
	GLOBAL GenericMart_BlockData
	call GetMapHeaderTimeOfDayNybble
	cp PALETTE_DARK
	jr nz, .not_dark
	ld a, [StatusFlags]
	bit 2, a ; Flash
	jp z, .do_nothing
.not_dark

	ld a, [wTileset]

	ld hl, PokeComPalette
	cp TILESET_PC_POKECOM_CENTER
	jp z, .load_eight_bg_palettes
	ld hl, BattleTowerPalette
	cp TILESET_PC_BATTLE_TOWER_INSIDE
	jp z, .load_eight_bg_palettes
	ld hl, GatePalette
	cp TILESET_PC_GATE
	jp z, .load_eight_bg_palettes
	ld hl, HotelPalette
	cp TILESET_PC_HOTEL
	jp z, .load_eight_bg_palettes
	ld hl, QuietCavePalette
	cp TILESET_PC_QUIET_CAVE
	jp z, .load_eight_bg_palettes
	ld hl, RuinsPalette
	cp TILESET_PC_RUINS_OF_ALPH
	jp z, .load_eight_bg_palettes
	cp TILESET_PC_ALPH_WORD_ROOM
	jp z, .load_eight_bg_palettes

	ld hl, CeladonPalette
	cp TILESET_CELADON
	jp z, .load_eight_time_of_day_bg_palettes
	ld hl, FuchsiaPalette
	cp TILESET_FUCHSIA
	jp z, .load_eight_time_of_day_bg_palettes
	ld hl, SaffronPalette
	cp TILESET_SAFFRON
	jp z, .load_eight_time_of_day_bg_palettes
	ld hl, SafariZonePalette
	cp TILESET_SAFARI_ZONE
	jp z, .load_eight_time_of_day_bg_palettes

	ld hl, FarawayIslandPalette
	cp TILESET_PC_FARAWAY_ISLAND
	jp z, .load_eight_time_of_day_bg_palettes
	ld hl, ShamoutiIslandPalette
	cp TILESET_PC_SHAMOUTI_ISLAND
	jp z, .load_eight_time_of_day_bg_palettes
	ld hl, ValenciaIslandPalette
	cp TILESET_PC_VALENCIA_ISLAND
	jp z, .load_eight_time_of_day_bg_palettes

	cp TILESET_FOREST
	jp z, .tileset_forest
	cp TILESET_NEW_BARK_CHERRYGROVE
	jp z, .tileset_new_bark_cherrygrove

	cp TILESET_PC_POKECENTER
	jp z, .pokecenter
	cp TILESET_PC_ICE_PATH
	jp z, .ice_path_or_hall_of_fame
	cp TILESET_PC_RADIO_TOWER
	jp z, .radio_towers
	cp TILESET_PC_GYM
	jp z, .maybe_elite_room
	cp TILESET_PC_MAGNET_TRAIN
	jp z, .maybe_viridian_gym
	cp TILESET_PC_CHAMPIONS_ROOM
	jp z, .maybe_lances_room
	cp TILESET_PC_PORT
	jp z, .maybe_cerulean_gym
	cp TILESET_PC_GAME_CORNER
	jp z, .maybe_saffron_gym
	cp TILESET_PC_UNDERGROUND
	jp z, .maybe_fuchsia_gym
	cp TILESET_PC_LAB
	jp z, .maybe_lab_or_dragon_shrine
	cp TILESET_PC_TUNNEL
	jp z, .maybe_lightning_island_or_magnet_tunnel
	cp TILESET_PC_SPROUT_TOWER
	jp z, .maybe_mystri_or_tower
	cp TILESET_PC_POKEMON_MANSION
	jp z, .maybe_cinnabar_lab
	cp TILESET_PC_MUSEUM
	jp z, .maybe_goldenrod_museum
	cp TILESET_PC_CELADON_MANSION
	jp z, .maybe_celadon_mansion_roof
	cp TILESET_PC_MART
	jp z, .maybe_goldenrod_dept_store_roof
	cp TILESET_PC_LIGHTHOUSE
	jp z, .maybe_olivine_lighthouse_roof
	cp TILESET_PC_HOME_DECOR_STORE
	jp z, .maybe_celadon_home_decor_store_4f
	cp TILESET_PC_JOHTO_TRADITIONAL
	jp z, .maybe_special_johto_1
	cp TILESET_PC_FOREST
	jp z, .maybe_special_forest
	cp TILESET_PC_CAVE
	jp z, .maybe_special_cave

	call GetOvercastIndex
	and a
	jp z, .maybe_sinjoh_ruins
	ld hl, OvercastBGPalette
	jp .load_eight_time_of_day_bg_palettes

.do_nothing
	and a
	ret
; 494f2

.pokecenter
	ld a, [MapGroup]
	cp GROUP_POKECENTER_2F
	jr nz, .ok
	ld a, [MapNumber]
	cp MAP_POKECENTER_2F
	jr nz, .ok
	ld a, [BackupMapGroup]
	cp GROUP_SHAMOUTI_POKECENTER_1F
	jr nz, .normal_pokecenter
	ld a, [BackupMapNumber]
	cp MAP_SHAMOUTI_POKECENTER_1F
	jr nz, .normal_pokecenter
	jr .shamouti_pokecenter
.ok
	ld a, [MapGroup]
	cp GROUP_SHAMOUTI_POKECENTER_1F
	jr nz, .normal_pokecenter
	ld a, [MapNumber]
	cp MAP_SHAMOUTI_POKECENTER_1F
	jr nz, .normal_pokecenter
.shamouti_pokecenter
	ld hl, ShamoutiPokeCenterPalette
	jp .load_eight_bg_palettes

.normal_pokecenter
	ld hl, PokeCenterPalette
.load_eight_bg_palettes
	ld a, $5
	ld de, UnknBGPals
	ld bc, 8 palettes
	call FarCopyWRAM

; replace green with Poké Mart blue for maps using Mart.blk
	ld a, [MapBlockDataBank]
	cp BANK(GenericMart_BlockData)
	jr nz, .not_mart
	ld a, [MapBlockDataPointer]
	cp GenericMart_BlockData % $100
	jr nz, .not_mart
	ld a, [MapBlockDataPointer + 1]
	cp GenericMart_BlockData / $100
	jr nz, .not_mart
	ld hl, MartBluePalette
	ld a, $5
	ld de, UnknBGPals palette PAL_BG_GREEN
	ld bc, 1 palettes
	call FarCopyWRAM
.not_mart

	scf
	ret

.ice_path_or_hall_of_fame
	ld hl, LancesRoomPalette
	ld a, [wPermission] ; permission
	and 7
	cp INDOOR ; Hall of Fame
	jp z, .load_eight_bg_palettes
	ld hl, IcePathPalette
	jp .load_eight_bg_palettes

.radio_towers
	ld hl, RadioTowerPalette
	jp .load_eight_bg_palettes

.maybe_elite_room
	ld a, [MapGroup]
	cp GROUP_WILLS_ROOM ; same as GROUP_KOGAS_ROOM, GROUP_BRUNOS_ROOM, and GROUP_KARENS_ROOM
	jp nz, .do_nothing
	ld a, [MapNumber]
	ld hl, WillsRoomPalette
	cp MAP_WILLS_ROOM
	jp z, .load_eight_bg_palettes
	ld hl, KogasRoomPalette
	cp MAP_KOGAS_ROOM
	jp z, .load_eight_bg_palettes
	ld hl, BrunosRoomPalette
	cp MAP_BRUNOS_ROOM
	jp z, .load_eight_bg_palettes
	ld hl, KarensRoomPalette
	cp MAP_KARENS_ROOM
	jp z, .load_eight_bg_palettes
	jp .do_nothing

.maybe_lances_room
	ld a, [MapGroup]
	cp GROUP_LANCES_ROOM
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_LANCES_ROOM
	jp nz, .do_nothing
	ld hl, LancesRoomPalette
	jp .load_eight_bg_palettes

.maybe_cerulean_gym
	ld a, [MapGroup]
	cp GROUP_CERULEAN_GYM
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_CERULEAN_GYM
	jp nz, .do_nothing
	ld hl, CeruleanGymPalette
	jp .load_eight_bg_palettes

.maybe_saffron_gym
	ld hl, GameCornerPalette
	ld a, [MapGroup]
	cp GROUP_SAFFRON_GYM
	jp nz, .load_eight_bg_palettes
	ld a, [MapNumber]
	cp MAP_SAFFRON_GYM
	jp nz, .load_eight_bg_palettes
	ld hl, SaffronGymPalette
	jp .load_eight_bg_palettes

.maybe_fuchsia_gym
	ld a, [MapGroup]
	cp GROUP_FUCHSIA_GYM
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_FUCHSIA_GYM
	jp nz, .do_nothing
	ld hl, FuchsiaGymPalette
	jp .load_eight_bg_palettes

.maybe_lab_or_dragon_shrine
	ld a, [MapGroup]
	cp GROUP_OAKS_LAB
	jp nz, .not_oaks_lab
	ld a, [MapNumber]
	cp MAP_OAKS_LAB
	jp nz, .not_oaks_lab
	ld hl, OaksLabPalette
	jp .load_eight_bg_palettes

.not_oaks_lab
	ld a, [MapGroup]
	cp GROUP_IVYS_LAB
	jp nz, .not_ivys_lab
	ld a, [MapNumber]
	cp MAP_IVYS_LAB
	jp nz, .not_ivys_lab
	ld hl, IvysLabPalette
	jp .load_eight_bg_palettes

.not_ivys_lab
	ld a, [MapGroup]
	cp GROUP_DRAGON_SHRINE
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_DRAGON_SHRINE
	jp nz, .do_nothing
	ld hl, DragonShrinePalette
	jp .load_eight_bg_palettes

.maybe_lightning_island_or_magnet_tunnel
	ld a, [MapGroup]
	cp GROUP_LIGHTNING_ISLAND
	jr nz, .not_lightning_island
	ld a, [MapNumber]
	cp MAP_LIGHTNING_ISLAND
	jr nz, .not_lightning_island
	ld hl, LightningIslandPalette
	jp .load_eight_bg_palettes

.not_lightning_island
	ld a, [MapGroup]
	cp GROUP_MAGNET_TUNNEL_INSIDE
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_MAGNET_TUNNEL_INSIDE
	jp nz, .do_nothing
	ld hl, MagnetTunnelPalette
	jp .load_eight_bg_palettes

.maybe_viridian_gym
	ld a, [MapGroup]
	cp GROUP_VIRIDIAN_GYM
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_VIRIDIAN_GYM
	jp nz, .do_nothing
	ld hl, ViridianGymPalette
	jp .load_eight_bg_palettes

.maybe_mystri_or_tower
	ld a, [MapGroup]
	cp GROUP_MYSTRI_STAGE
	jr nz, .maybe_embedded_tower
	ld a, [MapNumber]
	cp MAP_MYSTRI_STAGE
	jr nz, .maybe_embedded_tower
	ld hl, MystriStagePalette
	jp .load_eight_bg_palettes

.maybe_embedded_tower
	ld a, [MapGroup]
	cp GROUP_EMBEDDED_TOWER
	jr nz, .maybe_tin_tower_roof
	ld a, [MapNumber]
	cp MAP_EMBEDDED_TOWER
	jr nz, .maybe_tin_tower_roof
	ld hl, EmbeddedTowerPalette
	jp .load_eight_bg_palettes

.maybe_tin_tower_roof
	ld a, [MapGroup]
	cp GROUP_TIN_TOWER_ROOF
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_TIN_TOWER_ROOF
	jp nz, .do_nothing
	ld hl, TinTowerRoofPalette
	jp .load_eight_time_of_day_bg_palettes

.maybe_cinnabar_lab
	ld a, [MapGroup]
	cp GROUP_CINNABAR_LAB
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_CINNABAR_LAB
	jp nz, .do_nothing
	ld hl, CinnabarLabPalette
	jp .load_eight_bg_palettes

.maybe_goldenrod_museum
	ld a, [MapGroup]
	cp GROUP_GOLDENROD_MUSEUM_1F
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_GOLDENROD_MUSEUM_1F
	ld hl, GoldenrodMuseumPalette
	jp z, .load_eight_bg_palettes
	cp MAP_GOLDENROD_MUSEUM_2F
	jp z, .load_eight_bg_palettes
	jp .do_nothing

.maybe_celadon_mansion_roof
	ld a, [MapGroup]
	cp GROUP_CELADON_MANSION_ROOF
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_CELADON_MANSION_ROOF
	jp nz, .do_nothing
	ld hl, CeladonMansionRoofPalette
	jp .load_eight_time_of_day_bg_palettes

.maybe_goldenrod_dept_store_roof
	ld hl, MartPalette
	ld a, [MapGroup]
	cp GROUP_GOLDENROD_DEPT_STORE_ROOF
	jp nz, .load_eight_bg_palettes
	ld a, [MapNumber]
	cp MAP_GOLDENROD_DEPT_STORE_ROOF
	jp nz, .load_eight_bg_palettes
	ld hl, GoldenrodDeptStoreRoofPalette
	jp .load_eight_time_of_day_bg_palettes

.maybe_olivine_lighthouse_roof
	ld a, [MapGroup]
	cp GROUP_OLIVINE_LIGHTHOUSE_ROOF
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_OLIVINE_LIGHTHOUSE_ROOF
	jp nz, .do_nothing
	ld hl, GoldenrodDeptStoreRoofPalette
	jp .load_eight_time_of_day_bg_palettes

.maybe_celadon_home_decor_store_4f
	ld a, [MapGroup]
	cp GROUP_CELADON_HOME_DECOR_STORE_4F
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_CELADON_HOME_DECOR_STORE_4F
	jp nz, .do_nothing
	ld hl, CeladonHomeDecorStore4FPalette
	jp .load_eight_bg_palettes

.maybe_sinjoh_ruins
	ld a, [MapGroup]
	cp GROUP_SINJOH_RUINS
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_SINJOH_RUINS
	jp nz, .do_nothing
	ld hl, SinjohRuinsPalette
	jp .load_eight_time_of_day_bg_palettes

.maybe_special_johto_1
	ld hl, VioletEcruteakPalette
	ld a, [MapGroup]
	cp GROUP_VIOLET_CITY
	jr nz, .not_violet_city
	ld a, [MapNumber]
	cp MAP_VIOLET_CITY
	jp z, .load_eight_time_of_day_bg_palettes
.not_violet_city
	ld a, [MapGroup]
	cp GROUP_ECRUTEAK_CITY
	jr nz, .not_ecruteak_city
	ld a, [MapNumber]
	cp MAP_ECRUTEAK_CITY
	jp z, .load_eight_time_of_day_bg_palettes
.not_ecruteak_city
	ld hl, BellchimeTrailPalette
	ld a, [MapGroup]
	cp GROUP_BELLCHIME_TRAIL
	jr nz, .not_bellchime_trail
	ld a, [MapNumber]
	cp MAP_BELLCHIME_TRAIL
	jp z, .load_eight_time_of_day_bg_palettes
.not_bellchime_trail
	jp .do_nothing

.tileset_forest
	ld a, [MapGroup]
	cp GROUP_VIRIDIAN_FOREST
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_VIRIDIAN_FOREST
	jp nz, .do_nothing
	ld hl, ViridianForestPalette
	jp .load_eight_bg_palettes

.tileset_new_bark_cherrygrove
	ld a, [MapGroup]
	cp GROUP_CHERRYGROVE_CITY
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_CHERRYGROVE_CITY
	jp nz, .do_nothing
	ld hl, CherrygroveCityPalette
	jp .load_eight_time_of_day_bg_palettes

.maybe_special_forest
	ld a, [MapGroup]
	cp GROUP_YELLOW_FOREST
	jr nz, .not_yellow_forest
	ld a, [MapNumber]
	cp MAP_YELLOW_FOREST
	jr nz, .not_yellow_forest
	ld hl, YellowForestPalette
	jp .load_eight_time_of_day_bg_palettes

.not_yellow_forest
	ld a, [MapGroup]
	cp GROUP_MURKY_SWAMP
	jr nz, .not_murky_swamp
	ld a, [MapNumber]
	cp MAP_MURKY_SWAMP
	jr nz, .not_murky_swamp
	ld hl, MurkySwampPalette
	jp .load_eight_bg_palettes

.not_murky_swamp
	ld a, [MapGroup]
	cp GROUP_HIDDEN_TREE_GROTTO
	jp nz, .do_nothing
	ld a, [MapNumber]
	cp MAP_HIDDEN_TREE_GROTTO
	jp nz, .do_nothing
	ld hl, HiddenTreeGrottoPalette
	jp .load_eight_bg_palettes

.maybe_special_cave
	ld a, [MapGroup]
	cp GROUP_HIDDEN_CAVE_GROTTO
	jr nz, .not_hidden_cave_grotto
	ld a, [MapNumber]
	cp MAP_HIDDEN_CAVE_GROTTO
	jr nz, .not_hidden_cave_grotto
	ld hl, HiddenCaveGrottoPalette
	jp .load_eight_bg_palettes

.not_hidden_cave_grotto
	ld a, [MapGroup]
	ld b, a
	ld a, [MapNumber]
	ld c, a
	call GetWorldMapLocation
	ld hl, DimCavePalette
	cp DIM_CAVE
	jp z, .load_eight_bg_palettes
	ld hl, CinnabarVolcanoPalette
	cp CINNABAR_VOLCANO
	jp z, .load_eight_bg_palettes
	ld hl, CeruleanCavePalette
	cp CERULEAN_CAVE
	jp z, .load_eight_bg_palettes
	ld hl, SilverCavePalette
	cp SILVER_CAVE
	jp z, .load_eight_bg_palettes
	ld hl, DarkCavePalette
	cp MT_MORTAR
	jp z, .load_eight_bg_palettes
	cp DARK_CAVE
	jp z, .load_eight_bg_palettes
	ld hl, WhirlIslandsPalette
	cp WHIRL_ISLANDS
	jp z, .load_eight_bg_palettes
	ld hl, ScaryCavePalette
	cp SCARY_CAVE
	jp z, .load_eight_bg_palettes
	cp NAVEL_ROCK
	jp nz, .do_nothing
	ld hl, NavelRockPalette
	ld a, [MapGroup]
	cp GROUP_NAVEL_ROCK_ROOF
	jp nz, .load_eight_bg_palettes
	ld a, [MapNumber]
	cp MAP_NAVEL_ROCK_ROOF
	jp nz, .load_eight_bg_palettes
.load_eight_time_of_day_bg_palettes
	ld a, [TimeOfDayPal]
	and 3
	ld bc, 8 palettes
	call AddNTimes
	ld a, $5
	ld de, UnknBGPals
	ld bc, 8 palettes
	call FarCopyWRAM
	scf
	ret

PokeComPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/pokecom.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/pokecom.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

BattleTowerPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/battle_tower.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/battle_tower.pal"
else
rept 5
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

IcePathPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/ice_path.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/ice_path.pal"
else
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

GatePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/gate.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/gate.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

HotelPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/hotel.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/hotel.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

QuietCavePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/quiet_cave.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/quiet_cave.pal"
else
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

RuinsPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/ruins.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/ruins.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CeladonPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/celadon.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/celadon.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

FuchsiaPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/fuchsia.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/fuchsia.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

SaffronPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/saffron.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/saffron.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

SafariZonePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/safari_zone.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/safari_zone.pal"
else
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

PokeCenterPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/pokecenter.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/pokecenter.pal"
else
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

ShamoutiPokeCenterPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/shamouti_pokecenter.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/shamouti_pokecenter.pal"
else
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

FarawayIslandPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/faraway_island.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/faraway_island.pal"
else
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 6
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

ShamoutiIslandPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/shamouti_island.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/shamouti_island.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

ValenciaIslandPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/valencia_island.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/valencia_island.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

RadioTowerPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/radio_tower.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/radio_tower.pal"
else
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

WillsRoomPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/wills_room.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/wills_room.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

KogasRoomPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/kogas_room.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/kogas_room.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

BrunosRoomPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/brunos_room.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/brunos_room.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

KarensRoomPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/karens_room.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/karens_room.pal"
else
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

LancesRoomPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/lances_room.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/lances_room.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CeruleanGymPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/cerulean_gym.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/cerulean_gym.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

SaffronGymPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/saffron_gym.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/saffron_gym.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

ViridianGymPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/viridian_gym.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/viridian_gym.pal"
else
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

FuchsiaGymPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/fuchsia_gym.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/fuchsia_gym.pal"
else
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

GameCornerPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/game_corner.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/game_corner.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

OaksLabPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/oaks_lab.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/oaks_lab.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

IvysLabPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/ivys_lab.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/ivys_lab.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

DragonShrinePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/dragon_shrine.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/dragon_shrine.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

LightningIslandPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/lightning_island.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/lightning_island.pal"
else
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

MagnetTunnelPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/magnet_tunnel.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/magnet_tunnel.pal"
else
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

MystriStagePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/mystri_stage.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/mystri_stage.pal"
else
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

EmbeddedTowerPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/embedded_tower.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/embedded_tower.pal"
else
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

TinTowerRoofPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/tin_tower_roof.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/tin_tower_roof.pal"
else
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CinnabarLabPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/cinnabar_lab.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/cinnabar_lab.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

GoldenrodMuseumPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/goldenrod_museum.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/goldenrod_museum.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CeladonMansionRoofPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/celadon_mansion_roof.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/celadon_mansion_roof.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

MartPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/mart.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/mart.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

GoldenrodDeptStoreRoofPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/goldenrod_dept_store_roof.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/goldenrod_dept_store_roof.pal"
else
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 6
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CeladonHomeDecorStore4FPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/celadon_home_decor_store_4f.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/celadon_home_decor_store_4f.pal"
else
rept 4
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

SinjohRuinsPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/sinjoh_ruins.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/sinjoh_ruins.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

VioletEcruteakPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/violet_ecruteak.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/violet_ecruteak.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

BellchimeTrailPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/bellchime_trail.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/bellchime_trail.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

ViridianForestPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/viridian_forest.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/viridian_forest.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CherrygroveCityPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/cherrygrove_city.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/cherrygrove_city.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

YellowForestPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/yellow_forest.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/yellow_forest.pal"
else
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

MurkySwampPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/murky_swamp.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/murky_swamp.pal"
else
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

HiddenTreeGrottoPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/hidden_tree_grotto.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/hidden_tree_grotto.pal"
else
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

HiddenCaveGrottoPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/hidden_cave_grotto.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/hidden_cave_grotto.pal"
else
rept 7
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

DimCavePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/dim_cave.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/dim_cave.pal"
else
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

WhirlIslandsPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/whirl_islands.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/whirl_islands.pal"
else
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

ScaryCavePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/scary_cave.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/scary_cave.pal"
else
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CinnabarVolcanoPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/cinnabar_volcano.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/cinnabar_volcano.pal"
else
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

CeruleanCavePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/cerulean_cave.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/cerulean_cave.pal"
else
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

SilverCavePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/silver_cave.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/silver_cave.pal"
else
rept 4
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

DarkCavePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/dark_cave.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/dark_cave.pal"
else
rept 4
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
rept 2
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

NavelRockPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/navel_rock.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/navel_rock.pal"
else
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 5
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 5
	MONOCHROME_RGB_FOUR
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
	MONOCHROME_RGB_FOUR_NIGHT
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
rept 5
	MONOCHROME_RGB_FOUR_NIGHT
endr
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

OvercastBGPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/bg_overcast.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/bg_overcast.pal"
else
INCLUDE "gfx/tilesets/palettes/monochrome/ob.pal"
endc

OvercastOBPalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/ob_overcast.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/ob_overcast.pal"
else
INCLUDE "gfx/tilesets/palettes/monochrome/ob_overcast.pal"
endc

MartBluePalette:
if DEF(NOIR)
	GRAYSCALE 25, 18, 13, 07
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR
else
	RGB 20,27,28, 06,22,25, 04,17,19, 07,07,07
endc

LinkTrade_Layout_FillBox: ; 49336
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
; 49346

InitLinkTradePalMap: ; 49856
	hlcoord 0, 0, AttrMap
	lb bc, 16, 2
	ld a, $4
	call LinkTrade_Layout_FillBox
	ld a, $3
	ldcoord_a 0, 1, AttrMap
	ldcoord_a 0, 14, AttrMap
	hlcoord 2, 0, AttrMap
	lb bc, 8, 18
	ld a, $5
	call LinkTrade_Layout_FillBox
	hlcoord 2, 8, AttrMap
	lb bc, 8, 18
	ld a, $6
	call LinkTrade_Layout_FillBox
	hlcoord 0, 16, AttrMap
	lb bc, 2, SCREEN_WIDTH
	ld a, $4
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 1, AttrMap
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 1, AttrMap
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 9, AttrMap
	call LinkTrade_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 9, AttrMap
	call LinkTrade_Layout_FillBox
	ld a, $2
	hlcoord 2, 16, AttrMap
	ld [hli], a
	ld a, $7
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $2
	ld [hl], a
	hlcoord 2, 17, AttrMap
	ld a, $3
	ld bc, 6
	jp ByteFill
; 49811

LoadLinkTradePalette: ; 49811
	ld a, $5
	ld de, UnknBGPals palette 2
	ld hl, LinkTradePalette
	ld bc, 6 palettes
	call FarCopyWRAM
	farjp ApplyPals
; 49826

LinkTradePalette:
if DEF(NOIR)
INCLUDE "gfx/tilesets/palettes/noir/link_trade.pal"
elif !DEF(MONOCHROME)
INCLUDE "gfx/tilesets/palettes/link_trade.pal"
else
rept 8
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
endr
endc

LoadSpecialMapOBPalette:
	call GetOvercastIndex
	and a
	jr z, .not_overcast
	ld hl, OvercastOBPalette
	ld a, [TimeOfDayPal]
	and 3
	ld bc, 8 palettes
	call AddNTimes
	ld a, $5
	ld de, UnknOBPals
	ld bc, 8 palettes
	jp FarCopyWRAM

.not_overcast
	ld a, [MapGroup]
	cp GROUP_CERULEAN_CITY
	jr z, .maybe_cerulean
	cp GROUP_MOUNT_MOON_SQUARE
	jr z, .maybe_mount_moon_square
.not_cable_car:
	ld a, [wTileset]
	cp TILESET_PC_SHAMOUTI_ISLAND
	jr nz, .not_shamouti_island
.load_bg_tree_palette
	ld hl, UnknBGPals palette PAL_BG_GREEN
.load_tree_palette:
	ld de, UnknOBPals palette PAL_OW_TREE
.load_single_palette:
	ld bc, 1 palettes
.load_ob_palettes:
	ld a, $5
	jp FarCopyWRAM

.maybe_cerulean:
	ld a, [MapNumber]
	cp MAP_ROUTE_4
	jr z, .cable_car
	cp MAP_CERULEAN_CITY
	jr nz, .not_cable_car
.cable_car:
	ld hl, UnknBGPals palette PAL_BG_GRAY
	ld de, UnknOBPals palette PAL_OW_PURPLE
	jp .load_single_palette

.maybe_mount_moon_square:
	ld a, [MapNumber]
	cp MAP_MOUNT_MOON_SQUARE
	jr z, .cable_car
	jr .not_cable_car

.not_shamouti_island:
	cp TILESET_SAFFRON
	jr nz, .not_saffron
	ld hl, UnknBGPals palette PAL_BG_YELLOW
	jp .load_rock_palette

.not_saffron:
	cp TILESET_PC_FARAWAY_ISLAND
	jr nz, .not_faraway
	ld hl, UnknBGPals palette PAL_BG_GREEN
	jr .load_tree_palette

.not_faraway:
	ld a, [MapGroup]
	cp GROUP_VIRIDIAN_FOREST
	jr nz, .not_viridian_forest
	ld a, [MapNumber]
	cp MAP_VIRIDIAN_FOREST
	jr z, .load_bg_tree_palette

.not_viridian_forest:
	ld a, [MapGroup]
	cp GROUP_MURKY_SWAMP
	jr nz, .not_murky_swamp
	ld a, [MapNumber]
	cp MAP_MURKY_SWAMP
	jr z, .load_bg_tree_palette

.not_murky_swamp:
	ld a, [MapGroup]
	cp GROUP_VERMILION_GYM
	jr nz, .not_vermilion_gym
	ld a, [MapNumber]
	cp MAP_VERMILION_GYM
	jr nz, .not_vermilion_gym
	ld hl, VermilionGymOBPalette_Tree
	jr .load_tree_palette

.not_vermilion_gym:
	ld a, [MapGroup]
	cp GROUP_LIGHTNING_ISLAND
	jr nz, .not_lightning_island
	ld a, [MapNumber]
	cp MAP_LIGHTNING_ISLAND
	jr nz, .not_lightning_island
	ld hl, LightningIslandOBPalette_Tree
	jr .load_tree_palette

.not_lightning_island:
	ld a, [MapGroup]
	cp GROUP_ROCK_TUNNEL_2F
	jr nz, .not_rock_tunnel_2f
	ld a, [MapNumber]
	cp MAP_ROCK_TUNNEL_2F
	jr nz, .not_rock_tunnel_2f
	ld hl, RockTunnelOBPalette_Tree
	jp .load_tree_palette

.not_rock_tunnel_2f:
	ld a, [MapGroup]
	cp GROUP_LYRAS_HOUSE_2F
	jr nz, .not_lyras_house_2f
	ld a, [MapNumber]
	cp MAP_LYRAS_HOUSE_2F
	jr nz, .not_lyras_house_2f
	ld hl, LyrasHouse2FOBPalette_Rock
	jr .load_rock_palette

.not_lyras_house_2f:
	ld a, [MapGroup]
	cp GROUP_GOLDENROD_POKECOM_CENTER_1F ; GROUP_GOLDENROD_POKECOM_CENTER_OFFICE, GROUP_GOLDENROD_MUSEUM_1F, GROUP_GOLDENROD_MUSEUM_2F
	jr nz, .not_goldenrod
	ld a, [MapNumber]
	cp MAP_GOLDENROD_POKECOM_CENTER_1F
	jr nz, .not_pokecom_center_1f
	ld hl, PokecomCenter1FOBPalette_Rock
	jr .load_rock_palette
.not_pokecom_center_1f
	cp MAP_GOLDENROD_POKECOM_CENTER_OFFICE
	jr nz, .not_pokecom_center_office
	ld hl, PokecomCenterOfficeOBPalette_Purple
	ld de, UnknOBPals palette PAL_OW_PURPLE
	jp .load_single_palette
.not_pokecom_center_office
	ld a, [wTileset]
	cp TILESET_PC_MUSEUM
	jr nz, .not_goldenrod
	ld hl, GoldenrodMuseumOBPalettes_TreeRock
	ld de, UnknOBPals palette PAL_OW_TREE
	ld bc, 2 palettes
	jp .load_ob_palettes

.not_goldenrod
	ld a, [MapGroup]
	cp GROUP_MOUNT_MOON_SQUARE
	jr nz, .not_mount_moon_square
	ld a, [MapNumber]
	cp MAP_MOUNT_MOON_SQUARE
	jr nz, .not_mount_moon_square
	ld hl, UnknBGPals palette PAL_BG_GRAY
	jr .load_rock_palette

.not_mount_moon_square:
	ld a, [MapGroup]
	cp GROUP_MAGNET_TUNNEL_INSIDE
	jr nz, .not_magnet_tunnel
	ld a, [MapNumber]
	cp MAP_MAGNET_TUNNEL_INSIDE
	jr nz, .not_magnet_tunnel
	ld hl, UnknBGPals palette PAL_BG_GRAY
	jr .load_rock_palette

.not_magnet_tunnel
	ld a, [MapGroup]
	ld b, a
	ld a, [MapNumber]
	ld c, a
	call GetWorldMapLocation
	cp CINNABAR_VOLCANO
	jr z, .load_bg_rock_palette
	cp DIM_CAVE
	jr z, .load_bg_rock_palette
	cp ICE_PATH
	jr z, .load_bg_rock_palette
	cp SEAFOAM_ISLANDS
	jr z, .load_bg_rock_palette
	cp WHIRL_ISLANDS
	ret z
.load_bg_rock_palette
	ld hl, UnknBGPals palette PAL_BG_BROWN
.load_rock_palette
	ld de, UnknOBPals palette PAL_OW_ROCK
	jp .load_single_palette

VermilionGymOBPalette_Tree:
if DEF(NOIR)
	GRAYSCALE 29, 31, 23, 10
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR_OW
else
	RGB 27,31,27, 31,31,30, 19,24,31, 05,10,27
endc

LightningIslandOBPalette_Tree:
if DEF(NOIR)
	GRAYSCALE 16, 31, 25, 19
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR_OW
else
	RGB 19,15,10, 31,31,31, 31,27,01, 31,16,01
endc

RockTunnelOBPalette_Tree:
if DEF(NOIR)
	GRAYSCALE 15, 30, 21, 10
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR_OW
else
	RGB 15,14,24, 31,30,31, 24,18,31, 12,08,18
endc

LyrasHouse2FOBPalette_Rock:
if DEF(NOIR)
	GRAYSCALE 28, 26, 13, 07
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR
else
	RGB 30,28,26, 30,28,02, 08,14,24, 07,07,07
endc

PokecomCenter1FOBPalette_Rock:
if DEF(NOIR)
	GRAYSCALE 28, 28, 14, 07
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR
else
	RGB 30,28,26, 30,28,26, 11,13,31, 07,07,07
endc

PokecomCenterOfficeOBPalette_Purple:
if DEF(NOIR)
	GRAYSCALE 28, 24, 14, 00
elif DEF(MONOCHROME)
	MONOCHROME_RGB_FOUR_OW
else
	RGB 28,31,16, 29,23,18, 07,17,21, 00,00,00
endc

GoldenrodMuseumOBPalettes_TreeRock:
if DEF(NOIR)
	GRAYSCALE 28, 28, 13, 07
	GRAYSCALE 28, 29, 25, 10
elif DEF(MONOCHROME)
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
else
	RGB 30,28,26, 30,28,26, 13,13,13, 07,07,07
	RGB 30,28,26, 31,28,28, 22,27,26, 09,10,10
endc
