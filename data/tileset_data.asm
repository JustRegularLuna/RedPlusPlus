INCLUDE "constants.asm"

tilecoll: MACRO
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Generic Tileset Data", ROMX

GenericKantoTilesetGFX::
INCBIN "gfx/tilesets/pallet_cinnabar.2bpp.generic.lz"

GenericJohtoTilesetGFX::
INCBIN "gfx/tilesets/new_bark_cherrygrove.2bpp.generic.lz"

GenericExtraGFX::
INCBIN "gfx/tilesets/pallet_cinnabar.2bpp.extra.lz"


SECTION "Tileset Data 1", ROMX

Tileset00GFX::
TilesetPalletCinnabarGFX::
INCBIN "gfx/tilesets/pallet_cinnabar.2bpp.unique.lz"
Tileset00Meta::
TilesetPalletCinnabarMeta::
INCBIN "data/tilesets/pallet_cinnabar_metatiles.bin"
Tileset00Coll::
TilesetPalletCinnabarColl::
INCLUDE "data/tilesets/pallet_cinnabar_collision.asm"
Tileset00Attr::
TilesetPalletCinnabarAttr::
INCBIN "data/tilesets/pallet_cinnabar_attributes.bin"


SECTION "Tileset Data 2", ROMX

TilesetViridianGFX::
INCBIN "gfx/tilesets/viridian.2bpp.unique.lz"
TilesetViridianMeta::
INCBIN "data/tilesets/viridian_metatiles.bin"
TilesetViridianColl::
INCLUDE "data/tilesets/viridian_collision.asm"
TilesetViridianAttr::
INCBIN "data/tilesets/viridian_attributes.bin"


SECTION "Tileset Data 3", ROMX

TilesetPewterGFX::
INCBIN "gfx/tilesets/pewter.2bpp.unique.lz"
TilesetPewterMeta::
INCBIN "data/tilesets/pewter_metatiles.bin"
TilesetPewterColl::
INCLUDE "data/tilesets/pewter_collision.asm"
TilesetPewterAttr::
INCBIN "data/tilesets/pewter_attributes.bin"


SECTION "Tileset Data 4", ROMX

TilesetCeruleanGFX::
INCBIN "gfx/tilesets/cerulean.2bpp.unique.lz"
TilesetCeruleanMeta::
INCBIN "data/tilesets/cerulean_metatiles.bin"
TilesetCeruleanColl::
INCLUDE "data/tilesets/cerulean_collision.asm"
TilesetCeruleanAttr::
INCBIN "data/tilesets/cerulean_attributes.bin"


SECTION "Tileset Data 5", ROMX

TilesetVermilionGFX::
INCBIN "gfx/tilesets/vermilion.2bpp.unique.lz"
TilesetVermilionMeta::
INCBIN "data/tilesets/vermilion_metatiles.bin"
TilesetVermilionColl::
INCLUDE "data/tilesets/vermilion_collision.asm"
TilesetVermilionAttr::
INCBIN "data/tilesets/vermilion_attributes.bin"


SECTION "Tileset Data 6", ROMX

TilesetCeladonGFX::
INCBIN "gfx/tilesets/celadon.2bpp.unique.lz"
TilesetCeladonMeta::
INCBIN "data/tilesets/celadon_metatiles.bin"
TilesetCeladonColl::
INCLUDE "data/tilesets/celadon_collision.asm"
TilesetCeladonAttr::
INCBIN "data/tilesets/celadon_attributes.bin"


SECTION "Tileset Data 7", ROMX

TilesetLavenderGFX::
INCBIN "gfx/tilesets/lavender.2bpp.unique.lz"
TilesetLavenderMeta::
INCBIN "data/tilesets/lavender_metatiles.bin"
TilesetLavenderColl::
INCLUDE "data/tilesets/lavender_collision.asm"
TilesetLavenderAttr::
INCBIN "data/tilesets/lavender_attributes.bin"


SECTION "Tileset Data 8", ROMX

TilesetCyclingRoadGFX::
INCBIN "gfx/tilesets/cycling_road.2bpp.unique.lz"
TilesetCyclingRoadMeta::
INCBIN "data/tilesets/cycling_road_metatiles.bin"
TilesetCyclingRoadColl::
INCLUDE "data/tilesets/cycling_road_collision.asm"
TilesetCyclingRoadAttr::
INCBIN "data/tilesets/cycling_road_attributes.bin"


SECTION "Tileset Data 9", ROMX

TilesetFuchsiaGFX::
INCBIN "gfx/tilesets/fuchsia.2bpp.unique.lz"
TilesetFuchsiaMeta::
INCBIN "data/tilesets/fuchsia_metatiles.bin"
TilesetFuchsiaColl::
INCLUDE "data/tilesets/fuchsia_collision.asm"
TilesetFuchsiaAttr::
INCBIN "data/tilesets/fuchsia_attributes.bin"


SECTION "Tileset Data 10", ROMX

TilesetSafariZoneGFX::
INCBIN "gfx/tilesets/safari_zone.2bpp.lz"
TilesetSafariZoneMeta::
INCBIN "data/tilesets/safari_zone_metatiles.bin"
TilesetSafariZoneColl::
INCLUDE "data/tilesets/safari_zone_collision.asm"
TilesetSafariZoneAttr::
INCBIN "data/tilesets/safari_zone_attributes.bin"


SECTION "Tileset Data 11", ROMX

TilesetSaffronGFX::
INCBIN "gfx/tilesets/saffron.2bpp.unique.lz"
TilesetSaffronMeta::
INCBIN "data/tilesets/saffron_metatiles.bin"
TilesetSaffronColl::
INCLUDE "data/tilesets/saffron_collision.asm"
TilesetSaffronAttr::
INCBIN "data/tilesets/saffron_attributes.bin"


SECTION "Tileset Data 12", ROMX

TilesetIndigoGFX::
INCBIN "gfx/tilesets/indigo.2bpp.unique.lz"
TilesetIndigoMeta::
INCBIN "data/tilesets/indigo_metatiles.bin"
TilesetIndigoColl::
INCLUDE "data/tilesets/indigo_collision.asm"
TilesetIndigoAttr::
INCBIN "data/tilesets/indigo_attributes.bin"


SECTION "Tileset Data 13", ROMX

TilesetForestGFX::
INCBIN "gfx/tilesets/forest.2bpp.unique.lz"
TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin"
TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"
TilesetForestAttr::
INCBIN "data/tilesets/forest_attributes.bin"


SECTION "Tileset Data 14", ROMX

TilesetNewBarkCherrygroveGFX::
INCBIN "gfx/tilesets/new_bark_cherrygrove.2bpp.unique.lz"
TilesetNewBarkCherrygroveMeta::
INCBIN "data/tilesets/new_bark_cherrygrove_metatiles.bin"
TilesetNewBarkCherrygroveColl::
INCLUDE "data/tilesets/new_bark_cherrygrove_collision.asm"
TilesetNewBarkCherrygroveAttr::
INCBIN "data/tilesets/new_bark_cherrygrove_attributes.bin"


SECTION "Tileset Data 15", ROMX

TilesetVioletMahoganyGFX::
INCBIN "gfx/tilesets/violet_mahogany.2bpp.unique.lz"
TilesetVioletMahoganyMeta::
INCBIN "data/tilesets/violet_mahogany_metatiles.bin"
TilesetVioletMahoganyColl::
INCLUDE "data/tilesets/violet_mahogany_collision.asm"
TilesetVioletMahoganyAttr::
INCBIN "data/tilesets/violet_mahogany_attributes.bin"


SECTION "Tileset Data 16", ROMX

TilesetAzaleaBlackthornGFX::
INCBIN "gfx/tilesets/azalea_blackthorn.2bpp.unique.lz"
TilesetAzaleaBlackthornMeta::
INCBIN "data/tilesets/azalea_blackthorn_metatiles.bin"
TilesetAzaleaBlackthornColl::
INCLUDE "data/tilesets/azalea_blackthorn_collision.asm"
TilesetAzaleaBlackthornAttr::
INCBIN "data/tilesets/azalea_blackthorn_attributes.bin"


SECTION "Tileset Data 17", ROMX

TilesetGoldenrodGFX::
INCBIN "gfx/tilesets/goldenrod.2bpp.unique.lz"
TilesetGoldenrodMeta::
INCBIN "data/tilesets/goldenrod_metatiles.bin"
TilesetGoldenrodColl::
INCLUDE "data/tilesets/goldenrod_collision.asm"
TilesetGoldenrodAttr::
INCBIN "data/tilesets/goldenrod_attributes.bin"


SECTION "Tileset Data 18", ROMX

TilesetEcruteakGFX::
INCBIN "gfx/tilesets/ecruteak.2bpp.unique.lz"
TilesetEcruteakMeta::
INCBIN "data/tilesets/ecruteak_metatiles.bin"
TilesetEcruteakColl::
INCLUDE "data/tilesets/ecruteak_collision.asm"
TilesetEcruteakAttr::
INCBIN "data/tilesets/ecruteak_attributes.bin"


SECTION "Tileset Data 19", ROMX

TilesetOlivineCianwoodGFX::
INCBIN "gfx/tilesets/olivine_cianwood.2bpp.unique.lz"
TilesetOlivineCianwoodMeta::
INCBIN "data/tilesets/olivine_cianwood_metatiles.bin"
TilesetOlivineCianwoodColl::
INCLUDE "data/tilesets/olivine_cianwood_collision.asm"
TilesetOlivineCianwoodAttr::
INCBIN "data/tilesets/olivine_cianwood_attributes.bin"


SECTION "Tileset Data 20", ROMX

TilesetBattleTowerOutsideGFX::
INCBIN "gfx/tilesets/battle_tower_outside.2bpp.unique.lz"
TilesetBattleTowerOutsideMeta::
INCBIN "data/tilesets/battle_tower_outside_metatiles.bin"
TilesetBattleTowerOutsideColl::
INCLUDE "data/tilesets/battle_tower_outside_collision.asm"
TilesetBattleTowerOutsideAttr::
INCBIN "data/tilesets/battle_tower_outside_attributes.bin"


SECTION "Tileset Data 21", ROMX

TilesetNationalParkGFX::
INCBIN "gfx/tilesets/national_park.2bpp.unique.lz"
TilesetNationalParkMeta::
INCBIN "data/tilesets/national_park_metatiles.bin"
TilesetNationalParkColl::
INCLUDE "data/tilesets/national_park_collision.asm"
TilesetNationalParkAttr::
INCBIN "data/tilesets/national_park_attributes.bin"


SECTION "Tileset Data 22", ROMX

TilesetShrinesRuinsOutsideGFX::
INCBIN "gfx/tilesets/shrines_ruins_outside.2bpp.unique.lz"
TilesetShrinesRuinsOutsideMeta::
INCBIN "data/tilesets/shrines_ruins_outside_metatiles.bin"
TilesetShrinesRuinsOutsideColl::
INCLUDE "data/tilesets/shrines_ruins_outside_collision.asm"
TilesetShrinesRuinsOutsideAttr::
INCBIN "data/tilesets/shrines_ruins_outside_attributes.bin"


SECTION "Tileset Data 23", ROMX

TilesetPokeCenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"
TilesetPokeCenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"
TilesetPokeCenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"
TilesetPokeCenterAttr::
INCBIN "data/tilesets/pokecenter_attributes.bin"


SECTION "Tileset Data 24", ROMX

TilesetLabGFX::
INCBIN "gfx/tilesets/lab.2bpp.lz"
TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin"
TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"
TilesetLabAttr::
INCBIN "data/tilesets/lab_attributes.bin"


SECTION "Tileset Data 25", ROMX

TilesetShrinesRuinsGFX::
INCBIN "gfx/tilesets/shrines_ruins.2bpp.lz"
TilesetShrinesRuinsMeta::
INCBIN "data/tilesets/shrines_ruins_metatiles.bin"
TilesetShrinesRuinsColl::
INCLUDE "data/tilesets/shrines_ruins_collision.asm"
TilesetShrinesRuinsAttr::
INCBIN "data/tilesets/shrines_ruins_attributes.bin"


SECTION "Tileset Data 26", ROMX

TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"
TilesetCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"
TilesetCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"
TilesetCaveAttr::
INCBIN "data/tilesets/cave_attributes.bin"

;------------------------------------


SECTION "PC Tileset Data 2", ROMX

TilesetHouse1GFX::
INCBIN "gfx/tilesets/house1.2bpp.lz"
TilesetHouse1Meta::
INCBIN "data/tilesets/house1_metatiles.bin"
TilesetHouse1Coll::
INCLUDE "data/tilesets/house1_collision.asm"

TilesetMuseumMeta::
INCBIN "data/tilesets/museum_metatiles.bin"
TilesetMuseumColl::
INCLUDE "data/tilesets/museum_collision.asm"

TilesetValenciaColl::
INCLUDE "data/tilesets/valencia_collision.asm"


SECTION "PC Tileset Data 3", ROMX

TilesetPortGFX::
INCBIN "gfx/tilesets/port.2bpp.lz"
TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin"
TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

TilesetMansionGFX::
INCBIN "gfx/tilesets/mansion.2bpp.lz"
TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin"
TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"
TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"
TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

TilesetGym1GFX::
INCBIN "gfx/tilesets/gym1.2bpp.lz"
TilesetGym1Meta::
INCBIN "data/tilesets/gym1_metatiles.bin"
TilesetGym1Coll::
INCLUDE "data/tilesets/gym1_collision.asm"


SECTION "PC Tileset Data 4", ROMX

TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"
TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"
TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetHouse3GFX::
INCBIN "gfx/tilesets/house3.2bpp.lz"
TilesetHouse3Meta::
INCBIN "data/tilesets/house3_metatiles.bin"
TilesetHouse3Coll::
INCLUDE "data/tilesets/house3_collision.asm"

TilesetGym2GFX::
INCBIN "gfx/tilesets/gym2.2bpp.lz"
TilesetGym2Meta::
INCBIN "data/tilesets/gym2_metatiles.bin"
TilesetGym2Coll::
INCLUDE "data/tilesets/gym2_collision.asm"


SECTION "PC Tileset Data 5", ROMX

TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"
TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"
TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

TilesetLighthouseGFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.lz"
TilesetLighthouseMeta::
INCBIN "data/tilesets/lighthouse_metatiles.bin"
TilesetLighthouseColl::
INCLUDE "data/tilesets/lighthouse_collision.asm"

TilesetIcePathGFX::
INCBIN "gfx/tilesets/ice_path.2bpp.lz"
TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin"
TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"


SECTION "PC Tileset Data 6", ROMX

TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"
TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"
TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"
TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"
TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

TilesetRadioTowerGFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"
TilesetRadioTowerMeta::
INCBIN "data/tilesets/radio_tower_metatiles.bin"
TilesetRadioTowerColl::
INCLUDE "data/tilesets/radio_tower_collision.asm"

TilesetWarehouseMeta::
INCBIN "data/tilesets/warehouse_metatiles.bin"
TilesetWarehouseColl::
INCLUDE "data/tilesets/warehouse_collision.asm"


SECTION "PC Tileset Data 7", ROMX

TilesetRuinsMeta::
INCBIN "data/tilesets/ruins_metatiles.bin"
TilesetRuinsColl::
INCLUDE "data/tilesets/ruins_collision.asm"


SECTION "PC Tileset Data 8", ROMX

TilesetPCCaveGFX::
INCBIN "gfx/tilesets/pc_cave.2bpp.lz"
TilesetQuietCaveGFX::
INCBIN "gfx/tilesets/quiet_cave.2bpp.lz"
TilesetPCCaveMeta::
TilesetQuietCaveMeta::
INCBIN "data/tilesets/pc_cave_metatiles.bin"

TilesetPCCaveColl::
TilesetQuietCaveColl::
INCLUDE "data/tilesets/pc_cave_collision.asm"

TilesetPCForestGFX::
INCBIN "gfx/tilesets/pc_forest.2bpp.lz"
TilesetPCForestMeta::
INCBIN "data/tilesets/pc_forest_metatiles.bin"
TilesetPCForestColl::
INCLUDE "data/tilesets/pc_forest_collision.asm"

TilesetValenciaGFX::
INCBIN "gfx/tilesets/valencia.2bpp.lz"


SECTION "PC Tileset Data 10", ROMX

TilesetHouse2GFX::
INCBIN "gfx/tilesets/house2.2bpp.lz"
TilesetHouse2Meta::
INCBIN "data/tilesets/house2_metatiles.bin"
TilesetHouse2Coll::
INCLUDE "data/tilesets/house2_collision.asm"


SECTION "PC Tileset Data 11", ROMX

TilesetGym3GFX::
INCBIN "gfx/tilesets/gym3.2bpp.lz"
TilesetGym3Meta::
INCBIN "data/tilesets/gym3_metatiles.bin"
TilesetGym3Coll::
INCLUDE "data/tilesets/gym3_collision.asm"

TilesetWarehouseGFX::
INCBIN "gfx/tilesets/warehouse.2bpp.lz"

TilesetPokemonMansionGFX::
INCBIN "gfx/tilesets/pokemon_mansion.2bpp.lz"
TilesetPokemonMansionMeta::
INCBIN "data/tilesets/pokemon_mansion_metatiles.bin"
TilesetPokemonMansionColl::
INCLUDE "data/tilesets/pokemon_mansion_collision.asm"


SECTION "PC Tileset Data 12", ROMX

TilesetBattleTowerGFX::
INCBIN "gfx/tilesets/battle_tower.2bpp.lz"
TilesetBattleTowerMeta::
INCBIN "data/tilesets/battle_tower_metatiles.bin"
TilesetBattleTowerColl::
INCLUDE "data/tilesets/battle_tower_collision.asm"

TilesetTunnelGFX::
INCBIN "gfx/tilesets/tunnel.2bpp.lz"
TilesetTunnelMeta::
INCBIN "data/tilesets/tunnel_metatiles.bin"
TilesetTunnelColl::
INCLUDE "data/tilesets/tunnel_collision.asm"

TilesetDecorGFX::
INCBIN "gfx/tilesets/decor.2bpp.lz"
TilesetDecorMeta::
INCBIN "data/tilesets/decor_metatiles.bin"
TilesetDecorColl::
INCLUDE "data/tilesets/decor_collision.asm"

TilesetShamoutiGFX::
INCBIN "gfx/tilesets/shamouti.2bpp.lz"
TilesetShamoutiMeta::
INCBIN "data/tilesets/shamouti_metatiles.bin"
TilesetShamoutiColl::
INCLUDE "data/tilesets/shamouti_collision.asm"


SECTION "PC Tileset Data 13", ROMX

TilesetMuseumGFX::
INCBIN "gfx/tilesets/museum.2bpp.lz"

TilesetHotelGFX::
INCBIN "gfx/tilesets/hotel.2bpp.lz"
TilesetHotelMeta::
INCBIN "data/tilesets/hotel_metatiles.bin"
TilesetHotelColl::
INCLUDE "data/tilesets/hotel_collision.asm"


SECTION "PC Tileset Data 14", ROMX

TilesetPCLabGFX::
INCBIN "gfx/tilesets/pc_lab.2bpp.lz"
TilesetPCLabMeta::
INCBIN "data/tilesets/pc_lab_metatiles.bin"
TilesetPCLabColl::
INCLUDE "data/tilesets/pc_lab_collision.asm"

TilesetFarawayGFX::
INCBIN "gfx/tilesets/faraway.2bpp.lz"
TilesetFarawayMeta::
INCBIN "data/tilesets/faraway_metatiles.bin"
TilesetFarawayColl::
INCLUDE "data/tilesets/faraway_collision.asm"

TilesetValenciaMeta::
INCBIN "data/tilesets/valencia_metatiles.bin"


SECTION "PC Tileset Data 15", ROMX

TilesetRuinsGFX::
INCBIN "gfx/tilesets/ruins.2bpp.lz"


SECTION "PC Tileset Data 17", ROMX

TilesetShamoutiAttr::
INCBIN "data/tilesets/shamouti_attributes.bin"

TilesetValenciaAttr::
INCBIN "data/tilesets/valencia_attributes.bin"

TilesetFarawayAttr::
INCBIN "data/tilesets/faraway_attributes.bin"


SECTION "PC Tileset Data 18", ROMX

TilesetHouse1Attr::
INCBIN "data/tilesets/house1_attributes.bin"

TilesetHouse2Attr::
INCBIN "data/tilesets/house2_attributes.bin"

TilesetHouse3Attr::
INCBIN "data/tilesets/house3_attributes.bin"


SECTION "PC Tileset Data 19", ROMX

TilesetMartAttr::
INCBIN "data/tilesets/mart_attributes.bin"

TilesetGateAttr::
INCBIN "data/tilesets/gate_attributes.bin"


SECTION "PC Tileset Data 20", ROMX

TilesetGym1Attr::
INCBIN "data/tilesets/gym1_attributes.bin"

TilesetGym2Attr::
INCBIN "data/tilesets/gym2_attributes.bin"

TilesetGym3Attr::
INCBIN "data/tilesets/gym3_attributes.bin"


SECTION "PC Tileset Data 21", ROMX

TilesetPortAttr::
INCBIN "data/tilesets/port_attributes.bin"

TilesetPCLabAttr::
INCBIN "data/tilesets/pc_lab_attributes.bin"

TilesetFacilityAttr::
INCBIN "data/tilesets/facility_attributes.bin"

TilesetMansionAttr::
INCBIN "data/tilesets/mansion_attributes.bin"


SECTION "PC Tileset Data 22", ROMX

TilesetGameCornerAttr::
INCBIN "data/tilesets/game_corner_attributes.bin"

TilesetDecorAttr::
INCBIN "data/tilesets/decor_attributes.bin"

TilesetMuseumAttr::
INCBIN "data/tilesets/museum_attributes.bin"

TilesetHotelAttr::
INCBIN "data/tilesets/hotel_attributes.bin"


SECTION "PC Tileset Data 23", ROMX

TilesetTowerAttr::
INCBIN "data/tilesets/tower_attributes.bin"

TilesetBattleTowerAttr::
INCBIN "data/tilesets/battle_tower_attributes.bin"

TilesetRadioTowerAttr::
INCBIN "data/tilesets/radio_tower_attributes.bin"

TilesetLighthouseAttr::
INCBIN "data/tilesets/lighthouse_attributes.bin"

TilesetWarehouseAttr::
INCBIN "data/tilesets/warehouse_attributes.bin"


SECTION "PC Tileset Data 24", ROMX

TilesetPCCaveAttr::
TilesetQuietCaveAttr::
INCBIN "data/tilesets/pc_cave_attributes.bin"

TilesetIcePathAttr::
INCBIN "data/tilesets/ice_path_attributes.bin"

TilesetTunnelAttr::
INCBIN "data/tilesets/tunnel_attributes.bin"


SECTION "PC Tileset Data 25", ROMX

TilesetPCForestAttr::
INCBIN "data/tilesets/pc_forest_attributes.bin"


SECTION "PC Tileset Data 26", ROMX

TilesetRuinsAttr::
INCBIN "data/tilesets/ruins_attributes.bin"

TilesetPokemonMansionAttr::
INCBIN "data/tilesets/pokemon_mansion_attributes.bin"
