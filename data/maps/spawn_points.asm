spawn: MACRO
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints: ; 0x152ab
	spawn REDS_HOUSE_2F,               3,  6

	spawn PALLET_TOWN,                 5,  6
	spawn VIRIDIAN_CITY,              23, 26
	spawn PEWTER_CITY,                13, 30
	spawn ROUTE_3_NORTH,              11,  6
	spawn CERULEAN_CITY,              21, 16
	spawn ROUTE_10_NORTH,             15, 34
	spawn VERMILION_CITY,             15,  4
	spawn LAVENDER_TOWN,               3,  6
	spawn SAFFRON_CITY,               14, 34
	spawn CELADON_CITY,               41, 12
	spawn FUCHSIA_CITY,               19, 28
	spawn CINNABAR_ISLAND,            19, 18
	spawn INDIGO_PLATEAU,              9,  6

	spawn NEW_BARK_TOWN,              17,  6
	spawn CHERRYGROVE_CITY,           29,  4
	spawn VIOLET_CITY,                31, 30
	spawn ROUTE_32,                   15, 78
	spawn AZALEA_TOWN,                15, 12
	spawn CIANWOOD_CITY,              25, 44
	spawn GOLDENROD_CITY,             19, 28
	spawn OLIVINE_CITY,               13, 18
	spawn ECRUTEAK_CITY,              23, 28
	spawn MAHOGANY_TOWN,              15, 16
	spawn LAKE_OF_RAGE,               21, 29
	spawn BLACKTHORN_CITY,            23, 32
	spawn SILVER_CAVE_OUTSIDE,        23, 14
	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2
	spawn N_A,                        -1, -1
