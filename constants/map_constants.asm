newgroup: MACRO
const_value = const_value + 1
	enum_start 1
ENDM

map_const: MACRO
GROUP_\1 EQU const_value
	enum MAP_\1
\1_WIDTH  EQU \2
\1_HEIGHT EQU \3
ENDM

GROUP_N_A  EQU -1
MAP_N_A    EQU -1

GROUP_NONE EQU 0
MAP_NONE   EQU 0

; map group ids
	const_def

	newgroup ; 1

	map_const POKECENTER_2F,       6,  4 ;  1
	map_const TRADE_CENTER,        5,  4 ;  2
	map_const COLOSSEUM,           5,  4 ;  3
	map_const HIDDEN_TREE_GROTTO,  5,  9 ;  4
	map_const HIDDEN_CAVE_GROTTO, 20, 45 ;  5

	newgroup ;  2

	map_const PALLET_TOWN,           10, 10 ;  1
	map_const ROUTE_1,               12, 22 ;  2
	map_const REDS_HOUSE_1F,          4,  4 ;  3
	map_const REDS_HOUSE_2F,          4,  4 ;  4
	map_const BLUES_HOUSE_1F,         4,  4 ;  5
	map_const BLUES_HOUSE_2F,         4,  4 ;  6
	map_const OAKS_LAB,               5,  6 ;  7

	newgroup ;  3

	map_const VIRIDIAN_CITY,                  18, 17 ;  1
	map_const ROUTE_2_SOUTH,                  13, 17 ;  2
	map_const ROUTE_22,                       18, 12 ;  3
	map_const VIRIDIAN_POKECENTER_1F,          6,  4 ;  4
	map_const VIRIDIAN_MART,                   6,  4 ;  5
	map_const VIRIDIAN_GYM,                    7, 23 ;  6
	map_const VIRIDIAN_SCHOOL_HOUSE,           4,  5 ;  7
	map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE,  4,  4 ;  8

	newgroup ;  4

	map_const PEWTER_CITY,                 20, 21 ;  1
	map_const ROUTE_2_NORTH,               13, 18 ;  2
	map_const ROUTE_3_SOUTH,               36, 10 ;  3
	map_const ROUTE_3_NORTH,               12,  9 ;  4
	map_const PEWTER_POKECENTER_1F,         6,  4 ;  5
	map_const PEWTER_MART,                  6,  4 ;  6
	map_const PEWTER_GYM,                   5,  7 ;  7
	map_const PEWTER_NIDORAN_SPEECH_HOUSE,  4,  4 ;  8
	map_const PEWTER_SNOOZE_SPEECH_HOUSE,   4,  4 ;  9
	map_const PEWTER_MUSEUM_OF_SCIENCE_1F, 10,  4 ; 10
	map_const PEWTER_MUSEUM_OF_SCIENCE_2F,  7,  4 ; 11
	map_const ROUTE_2_TRADE_HOUSE,          4,  4 ; 12
	map_const ROUTE_3_POKECENTER_1F,        6,  4 ; 13

	newgroup ;  5

	map_const MOUNT_MOON_SQUARE,    15,  9 ;  1
	map_const MOUNT_MOON_GIFT_SHOP,  4,  4 ;  2

	newgroup ;  6

	map_const CERULEAN_CITY,                    21, 17 ;  1
	map_const ROUTE_4,                          34, 11 ;  2
	map_const ROUTE_9,                          28, 11 ;  3
	map_const ROUTE_24,                         15, 20 ;  4
	map_const CERULEAN_POKECENTER_1F,            6,  4 ;  5
	map_const CERULEAN_MART,                     6,  4 ;  6
	map_const CERULEAN_GYM,                      5,  8 ;  7
	map_const CERULEAN_BIKE_SHOP,                4,  4 ;  8
	map_const CERULEAN_BURGLED_HOUSE,            4,  4 ;  9
	map_const CERULEAN_BERRY_POWDER_HOUSE,       4,  4 ; 10
	map_const CERULEAN_GYM_BADGE_SPEECH_HOUSE,   4,  4 ; 11
	map_const CERULEAN_TRADE_SPEECH_HOUSE,       4,  4 ; 12
	map_const CERULEAN_COUPLE_HOUSE,             4,  4 ; 13
	map_const CERULEAN_WATER_SHOW_SPEECH_HOUSE,  4,  4 ; 14
	map_const CERULEAN_ZIG_HOUSE,                4,  4 ; 15

	newgroup ;  7

	map_const ROUTE_25,      16, 20 ;  1
	map_const CERULEAN_CAPE, 27, 19 ;  2
	map_const BILLS_HOUSE,    4,  4 ;  3

	newgroup ;  8

	map_const ROUTE_10_NORTH,         12, 30 ;  1
	map_const ROUTE_10_POKECENTER_1F,  6,  4 ;  2

	newgroup ;  9

	map_const ROUTE_5,                          14, 17 ;  1
	map_const ROUTE_5_CLEANSE_TAG_SPEECH_HOUSE,  4,  4 ;  2

	newgroup ; 10

	map_const VERMILION_CITY,                             22, 18 ;  1
	map_const ROUTE_6,                                    14, 16 ;  2
	map_const ROUTE_11,                                   27, 13 ;  3
	map_const VERMILION_PORT,                             10, 13 ;  4
	map_const VERMILION_POKECENTER_1F,                     6,  4 ;  5
	map_const VERMILION_MART,                              6,  4 ;  6
	map_const VERMILION_GYM,                               5,  9 ;  7
	map_const POKEMON_FAN_CLUB,                            5,  4 ;  8
	map_const VERMILION_HOUSE_FISHING_SPEECH_HOUSE,        4,  4 ;  9
	map_const VERMILION_MAGNET_TRAIN_SPEECH_HOUSE,         4,  4 ; 10
	map_const VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE,  4,  4 ; 11
	map_const VERMILION_POLLUTION_SPEECH_HOUSE,            4,  4 ; 12
	map_const VERMILION_S_S_ANNE_SPEECH_HOUSE,             4,  4 ; 13

	newgroup ; 11

	map_const CELADON_CITY,                         25, 23 ;  1
	map_const ROUTE_7,                               9, 23 ;  2
	map_const ROUTE_16_EAST,                        10, 18 ;  3
	map_const CELADON_POKECENTER_1F,                 6,  4 ;  4
	map_const CELADON_GYM,                           5,  9 ;  5
	map_const EUSINES_HOUSE,                         4,  4 ;  6
	map_const CELADON_OLD_MAN_SPEECH_HOUSE,          4,  4 ;  7
	map_const CELADON_DEVELOPMENT_SPEECH_HOUSE,      4,  4 ;  8
	map_const CELADON_DEPT_STORE_1F,                 8,  4 ;  9
	map_const CELADON_DEPT_STORE_2F,                 8,  4 ; 10
	map_const CELADON_DEPT_STORE_3F,                 8,  4 ; 11
	map_const CELADON_DEPT_STORE_4F,                 8,  4 ; 12
	map_const CELADON_DEPT_STORE_5F,                 8,  4 ; 13
	map_const CELADON_DEPT_STORE_6F,                 8,  4 ; 14
	map_const CELADON_DEPT_STORE_ELEVATOR,           2,  2 ; 15
	map_const CELADON_MANSION_1F,                    4,  5 ; 16
	map_const CELADON_MANSION_2F,                    4,  5 ; 17
	map_const CELADON_MANSION_3F,                    4,  5 ; 18
	map_const CELADON_MANSION_ROOF,                  4,  7 ; 19
	map_const CELADON_MANSION_ROOF_HOUSE,            4,  4 ; 20
	map_const CELADON_GAME_CORNER,                  10,  7 ; 21
	map_const CELADON_GAME_CORNER_PRIZE_ROOM,        4,  4 ; 22
	map_const CELADON_CAFE,                          6,  4 ; 23
	map_const CELADON_CHIEF_HOUSE,                   4,  4 ; 24
	map_const CELADON_HOTEL_1F,                      9,  4 ; 25
	map_const CELADON_HOTEL_2F,                      9,  2 ; 26
	map_const CELADON_HOTEL_ROOM_1,                  3,  3 ; 27
	map_const CELADON_HOTEL_ROOM_2,                  3,  3 ; 28
	map_const CELADON_HOTEL_ROOM_3,                  3,  3 ; 29
	map_const CELADON_HOTEL_POOL,                    7,  4 ; 30
	map_const CELADON_UNIVERSITY_1F,                15, 10 ; 31
	map_const CELADON_UNIVERSITY_2F,                13,  7 ; 32
	map_const CELADON_UNIVERSITY_LIBRARY_1F,         7,  6 ; 33
	map_const CELADON_UNIVERSITY_LIBRARY_2F,         7,  6 ; 34
	map_const CELADON_UNIVERSITY_PRINCIPALS_OFFICE,  3,  4 ; 35
	map_const CELADON_UNIVERSITY_WESTWOODS_OFFICE,   3,  3 ; 36
	map_const CELADON_UNIVERSITY_WILLOWS_OFFICE,     3,  3 ; 37
	map_const CELADON_UNIVERSITY_LOUNGE,             4,  6 ; 38
	map_const CELADON_UNIVERSITY_CAFETERIA,          8,  4 ; 39
	map_const CELADON_UNIVERSITY_HYPER_TEST_ROOM,    4,  6 ; 40
	map_const CELADON_UNIVERSITY_POOL,               8,  5 ; 41
	map_const CELADON_UNIVERSITY_CLASSROOM_1,        4,  6 ; 42
	map_const CELADON_UNIVERSITY_CLASSROOM_2,        4,  6 ; 43
	map_const CELADON_UNIVERSITY_CLASSROOM_3,        4,  6 ; 44
	map_const CELADON_UNIVERSITY_CLASSROOM_4,        4,  6 ; 45
	map_const CELADON_HOME_DECOR_STORE_1F,           5,  4 ; 46
	map_const CELADON_HOME_DECOR_STORE_2F,           5,  4 ; 47
	map_const CELADON_HOME_DECOR_STORE_3F,           5,  4 ; 48
	map_const CELADON_HOME_DECOR_STORE_4F,           5,  4 ; 49

	newgroup ; 12

	map_const LAVENDER_TOWN,              11, 11 ;  1
	map_const ROUTE_8,                    26, 11 ;  2
	map_const ROUTE_10_SOUTH,             11, 11 ;  3
	map_const LAVENDER_POKECENTER_1F,      6,  4 ;  4
	map_const LAVENDER_MART,               6,  4 ;  5
	map_const MR_FUJIS_HOUSE,              5,  4 ;  6
	map_const LAVENDER_NAME_RATER,         4,  4 ;  7
	map_const LAVENDER_TOWN_SPEECH_HOUSE,  4,  4 ;  8

	newgroup ; 13

	map_const ROUTE_12_NORTH,           15,  9 ;  1
	map_const ROUTE_12_SOUTH,           13, 44 ;  2
	map_const ROUTE_13,                 40,  9 ;  3
	map_const ROUTE_14,                 10, 18 ;  4
	map_const ROUTE_15,                 25,  9 ;  5
	map_const ROUTE_12_SUPER_ROD_HOUSE,  4,  4 ;  6

	newgroup ; 14

	map_const ROUTE_16_MIDDLE,               10, 12 ;  1
	map_const ROUTE_16_WEST,                 25, 15 ;  2
	map_const ROUTE_18_WEST,                 16, 12 ;  3
	map_const URAGA_CHANNEL_EAST,            23,  9 ;  4
	map_const ROUTE_16_FUCHSIA_SPEECH_HOUSE,  4,  4 ;  5
	map_const PSYCHIC_INVERS_HOUSE,           4,  4 ;  6

	newgroup ; 15

	map_const FUCHSIA_CITY,                  25, 18 ;  1
	map_const ROUTE_18_EAST,                 10,  9 ;  2
	map_const FUCHSIA_POKECENTER_1F,          6,  4 ;  3
	map_const FUCHSIA_MART,                   6,  4 ;  4
	map_const FUCHSIA_GYM,                    5,  9 ;  5
	map_const SAFARI_ZONE_WARDENS_HOME,       5,  4 ;  6
	map_const FUCHSIA_BILL_SPEECH_HOUSE,      4,  4 ;  7
	map_const FUCHSIA_SAFARI_BALL_HOUSE,      4,  4 ;  8
	map_const SAFARI_ZONE_HUB,               22, 18 ;  9
	map_const SAFARI_ZONE_EAST,              22, 19 ; 10
	map_const SAFARI_ZONE_NORTH,             27, 22 ; 11
	map_const SAFARI_ZONE_WEST,              23, 19 ; 12
	map_const SAFARI_ZONE_HUB_REST_HOUSE,     4,  4 ; 13
	map_const SAFARI_ZONE_EAST_REST_HOUSE,    4,  4 ; 14
	map_const SAFARI_ZONE_NORTH_REST_HOUSE,   4,  4 ; 15
	map_const SAFARI_ZONE_WEST_REST_HOUSE_1,  4,  4 ; 16
	map_const SAFARI_ZONE_WEST_REST_HOUSE_2,  4,  4 ; 17

	newgroup ; 16

	map_const ROUTE_19,                      10, 34 ;  1
	map_const ROUTE_19_BEACH_HOUSE,           4,  4 ;  2

	newgroup ; 17

	map_const SAFFRON_CITY,                25, 22 ;  1
	map_const SAFFRON_POKECOM_CENTER_1F,   16,  8 ;  2
	map_const SAFFRON_POKECOM_CENTER_2F,    8,  4 ;  3
	map_const SAFFRON_MART,                 6,  4 ;  4
	map_const SAFFRON_GYM,                 10,  9 ;  5
	map_const FIGHTING_DOJO,                5,  6 ;  6
	map_const MR_PSYCHICS_HOUSE,            4,  4 ;  7
	map_const COPYCATS_HOUSE_1F,            4,  4 ;  8
	map_const COPYCATS_HOUSE_2F,            4,  3 ;  9
	map_const POKEMON_TRAINER_FAN_CLUB,     4,  5 ; 10
	map_const SAFFRON_HITMONTOP_KID_HOUSE,  4,  4 ; 11
	map_const SAFFRON_BOOK_SPEECH_HOUSE,    4,  4 ; 12
	map_const SAFFRON_ORRE_SPEECH_HOUSE,    4,  4 ; 13
	map_const SAFFRON_RICH_SPEECH_HOUSE,    4,  4 ; 14

	newgroup ; 18

	map_const CINNABAR_ISLAND,           16, 16 ;  1
	map_const ROUTE_20,                  50, 10 ;  2
	map_const ROUTE_21,                  12, 41 ;  3
	map_const URAGA_CHANNEL_WEST,        23,  9 ;  4
	map_const CINNABAR_POKECENTER_1F,     6,  4 ;  5
	map_const SEAFOAM_GYM,               12, 12 ;  6
	map_const CINNABAR_LAB_ENTRANCE,     10,  4 ;  7
	map_const CINNABAR_LAB_MEETING_ROOM,  4,  4 ;  8
	map_const CINNABAR_LAB_DEV_ROOM,      4,  4 ;  9
	map_const CINNABAR_LAB_TESTING_ROOM,  4, 4  ; 10

	newgroup ; 19

	map_const CERISE_ISLAND_EAST, 26, 17 ;  1

	newgroup ; 20

	map_const INDIGO_PLATEAU,               10, 12 ;  1
	map_const ROUTE_23,                     10, 72 ;  2
	map_const INDIGO_PLATEAU_POKECENTER_1F,  8,  8 ;  3
	map_const WILLS_ROOM,                    5,  9 ;  4
	map_const KOGAS_ROOM,                    5,  9 ;  5
	map_const BRUNOS_ROOM,                   5,  9 ;  6
	map_const KARENS_ROOM,                   5,  9 ;  7
	map_const LANCES_ROOM,                   5, 12 ;  8
	map_const HALL_OF_FAME,                  5,  7 ;  9

	newgroup ; 21

	map_const ROUTE_26,                            13, 54 ;  1
	map_const ROUTE_27_EAST,                       40, 11 ;  2
	map_const ROUTE_26_HEAL_SPEECH_HOUSE,           4,  4 ;  3
	map_const ROUTE_26_DAY_OF_WEEK_SIBLINGS_HOUSE,  4,  4 ;  4
	map_const ROUTE_27_REST_HOUSE,                  4,  4 ;  5

	newgroup ; 22

	map_const CERISE_ISLAND_WEST, 26, 17 ;  1

	newgroup ; 23

	map_const NEW_BARK_TOWN,         11, 11 ;  1
	map_const ROUTE_27_WEST,         15,  9 ;  2
	map_const ROUTE_29,              30, 11 ;  3
	map_const KRISS_HOUSE_1F,         5,  4 ;  4
	map_const KRISS_HOUSE_2F,         4,  3 ;  5
	map_const LYRAS_HOUSE_1F,         5,  4 ;  6
	map_const LYRAS_HOUSE_2F,         4,  3 ;  7
	map_const ELMS_HOUSE,             4,  4 ;  8
	map_const KRISS_NEIGHBORS_HOUSE,  4,  4 ;  9
	map_const ELMS_LAB,               5,  6 ; 10

	newgroup ; 24

	map_const CHERRYGROVE_CITY,                   20, 12 ;  1
	map_const ROUTE_30,                           17, 29 ;  2
	map_const ROUTE_31,                           22,  9 ;  3
	map_const CHERRYGROVE_BAY,                    15, 25 ;  4
	map_const CHERRYGROVE_POKECENTER_1F,           6,  4 ;  5
	map_const CHERRYGROVE_MART,                    6,  4 ;  6
	map_const GUIDE_GENTS_HOUSE,                   4,  4 ;  7
	map_const CHERRYGROVE_GYM_SPEECH_HOUSE,        4,  4 ;  8
	map_const CHERRYGROVE_EVOLUTION_SPEECH_HOUSE,  4,  4 ;  9
	map_const ROUTE_30_BERRY_SPEECH_HOUSE,         4,  4 ; 10
	map_const MR_POKEMONS_HOUSE,                   4,  4 ; 11

	newgroup ; 25

	map_const ROUTE_32,               12, 46 ;  1
	map_const ROUTE_32_COAST,         15, 36 ;  2
	map_const ROUTE_32_POKECENTER_1F,  6,  4 ;  3
	map_const ROUTE_32_COAST_HOUSE,    4,  4 ;  4

	newgroup ; 26

	map_const VIOLET_CITY,                  20, 20 ;  1
	map_const VIOLET_OUTSKIRTS,             20,  9 ;  2
	map_const VIOLET_POKECENTER_1F,          6,  4 ;  3
	map_const VIOLET_MART,                   6,  4 ;  4
	map_const VIOLET_GYM,                    5,  8 ;  5
	map_const EARLS_POKEMON_ACADEMY,         4,  8 ;  6
	map_const VIOLET_NICKNAME_SPEECH_HOUSE,  4,  4 ;  7
	map_const VIOLET_ONIX_TRADE_HOUSE,       4,  4 ;  8

	newgroup ; 27

	map_const RUINS_OF_ALPH_OUTSIDE,         15, 24 ;  1
	map_const RUINS_OF_ALPH_RESEARCH_CENTER,  4,  4 ;  2

	newgroup ; 28

	map_const AZALEA_TOWN,          20, 13 ;  1
	map_const ROUTE_33,             10, 12 ;  2
	map_const AZALEA_POKECENTER_1F,  6,  4 ;  3
	map_const AZALEA_MART,           6,  4 ;  4
	map_const AZALEA_GYM,            5,  8 ;  5
	map_const KURTS_HOUSE,           8,  4 ;  6
	map_const CHARCOAL_KILN,         5,  4 ;  7

	newgroup ; 29

	map_const ROUTE_34,       10, 29 ;  1
	map_const ROUTE_34_COAST,  9, 34 ;  2
	map_const STORMY_BEACH,   22, 12 ;  3
	map_const DAYCARE,         4,  4 ;  4

	newgroup ; 30

	map_const GOLDENROD_CITY,                             24, 18 ;  1
	map_const GOLDENROD_POKECENTER_1F,                     6,  4 ;  2
	map_const GOLDENROD_GYM,                              10,  9 ;  3
	map_const GOLDENROD_HAPPINESS_RATER,                   4,  4 ;  4
	map_const GOLDENROD_BILLS_HOUSE,                       4,  4 ;  5
	map_const GOLDENROD_HP_UP_HOUSE,                       4,  4 ;  6
	map_const GOLDENROD_NET_BALL_HOUSE,                    4,  4 ;  7
	map_const GOLDENROD_MUSEUM_1F,                         7,  4 ;  8
	map_const GOLDENROD_MUSEUM_2F,                         7,  4 ;  9
	map_const GOLDENROD_MAGNET_TRAIN_STATION,             10,  9 ; 10
	map_const GOLDENROD_FLOWER_SHOP,                       4,  4 ; 11
	map_const GOLDENROD_PP_SPEECH_HOUSE,                   4,  4 ; 12
	map_const GOLDENROD_NAME_RATER,                        4,  4 ; 13
	map_const GOLDENROD_DEPT_STORE_1F,                     8,  4 ; 14
	map_const GOLDENROD_DEPT_STORE_2F,                     8,  4 ; 15
	map_const GOLDENROD_DEPT_STORE_3F,                     8,  4 ; 16
	map_const GOLDENROD_DEPT_STORE_4F,                     8,  4 ; 17
	map_const GOLDENROD_DEPT_STORE_5F,                     8,  4 ; 18
	map_const GOLDENROD_DEPT_STORE_6F,                     8,  4 ; 19
	map_const GOLDENROD_DEPT_STORE_ELEVATOR,               2,  2 ; 20
	map_const GOLDENROD_DEPT_STORE_ROOF,                   8,  6 ; 21
	map_const GOLDENROD_GAME_CORNER,                      10,  7 ; 22

	newgroup ; 31

	map_const ECRUTEAK_CITY,               20, 18 ;  1
	map_const ROUTE_35,                    14, 18 ;  2
	map_const ROUTE_36,                    24, 10 ;  3
	map_const ROUTE_37,                    10, 10 ;  4
	map_const BELLCHIME_TRAIL,             12,  9 ;  5
	map_const ECRUTEAK_SHRINE_OUTSIDE,      6,  9 ;  6
	map_const ECRUTEAK_POKECENTER_1F,       6,  4 ;  7
	map_const ECRUTEAK_MART,                6,  4 ;  8
	map_const ECRUTEAK_GYM,                 5,  9 ;  9
	map_const ECRUTEAK_HOUSE,              10,  9 ; 10
	map_const WISE_TRIOS_ROOM,              4,  4 ; 11
	map_const DANCE_THEATRE,                6,  7 ; 12
	map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,  4,  4 ; 13
	map_const ECRUTEAK_ITEMFINDER_HOUSE,    4,  4 ; 14
	map_const VALERIES_HOUSE,               4,  4 ; 15
	map_const ECRUTEAK_CHERISH_BALL_HOUSE,  4,  4 ; 16
	map_const ECRUTEAK_DESTINY_KNOT_HOUSE,  4,  4 ; 17
	map_const ECRUTEAK_SHRINE_INSIDE,       6,  6 ; 18

	newgroup ; 32

	map_const GOLDENROD_HARBOR, 20, 18 ;  1

	newgroup ; 33

	map_const NATIONAL_PARK,             21, 27 ;  1
	map_const NATIONAL_PARK_BUG_CONTEST, 21, 27 ;  2

	newgroup ; 34

	map_const ROUTE_38,           20, 18 ;  1
	map_const ROUTE_39,           12, 23 ;  2
	map_const ROUTE_39_BARN,       4,  4 ;  3
	map_const ROUTE_39_FARMHOUSE,  4,  4 ;  4

	newgroup ; 35

	map_const OLIVINE_CITY,                    31, 16 ;  1
	map_const ROUTE_35_COAST,                  24, 14 ;  2
	map_const OLIVINE_PORT,                    10, 16 ;  3
	map_const OLIVINE_POKECENTER_1F,            6,  4 ;  4
	map_const OLIVINE_MART,                     6,  4 ;  5
	map_const OLIVINE_GYM,                      5,  8 ;  6
	map_const OLIVINE_PORT_PASSAGE,             4, 15 ;  7
	map_const OLIVINE_CAFE,                     5,  4 ;  8
	map_const OLIVINE_TIMS_HOUSE,               4,  4 ;  9
	map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE,  4,  4 ; 10
	map_const OLIVINE_GOOD_ROD_HOUSE,           4,  4 ; 11

	newgroup ; 36

	map_const BATTLE_TOWER_OUTSIDE,     13, 13 ;  1
	map_const BATTLE_TOWER_1F,          11,  7 ;  2
	map_const BATTLE_TOWER_2F,          11,  5 ;  3
	map_const BATTLE_TOWER_ELEVATOR,     2,  2 ;  4
	map_const BATTLE_TOWER_HALLWAY,     11,  2 ;  5
	map_const BATTLE_TOWER_BATTLE_ROOM,  4,  4 ;  6

	newgroup ; 37

	map_const ROUTE_41, 32, 27 ;  1

	newgroup ; 38

	map_const CIANWOOD_CITY,               16, 27 ;  1
	map_const ROUTE_40,                    10, 20 ;  2
	map_const CIANWOOD_POKECENTER_1F,       6,  4 ;  3
	map_const CIANWOOD_GYM,                 5,  9 ;  4
	map_const CIANWOOD_PHARMACY,            4,  4 ;  5
	map_const MANIAS_HOUSE,                 4,  4 ;  6
	map_const STATS_JUDGES_HOUSE,           4,  4 ;  7
	map_const CIANWOOD_CITY_PHOTO_STUDIO,   4,  4 ;  8
	map_const CIANWOOD_LUGIA_SPEECH_HOUSE,  4,  4 ;  9

	newgroup ; 39

	map_const ROUTE_17, 10, 67 ;  1
	map_const ROUTE_45, 13, 46 ;  2
	map_const ROUTE_47, 39, 19 ;  3
	map_const ROUTE_48, 18, 11 ;  4

	newgroup ; 40

	map_const MAHOGANY_TOWN,                      10, 12 ;  1
	map_const ROUTE_42,                           30,  9 ;  2
	map_const ROUTE_44,                           31, 11 ;  3
	map_const MAHOGANY_POKECENTER_1F,              6,  4 ;  4
	map_const MAHOGANY_GYM,                        5,  9 ;  5
	map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,  4,  4 ;  6

	newgroup ; 41

	map_const LAKE_OF_RAGE,                    20, 18 ;  1
	map_const ROUTE_43,                        10, 26 ;  2
	map_const LAKE_OF_RAGE_MAGIKARP_HOUSE,      4,  4 ;  3
	map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,  4,  4 ;  4

	newgroup ; 42

	map_const BLACKTHORN_CITY,                23, 20 ;  1
	map_const ROUTE_46,                       12, 19 ;  2
	map_const BLACKTHORN_POKECENTER_1F,        6,  4 ;  3
	map_const BLACKTHORN_MART,                 6,  4 ;  4
	map_const BLACKTHORN_GYM_1F,               5,  9 ;  5
	map_const BLACKTHORN_GYM_2F,               5,  9 ;  6
	map_const MOVE_DELETERS_HOUSE,             4,  4 ;  7
	map_const BLACKTHORN_DRAGON_SPEECH_HOUSE,  4,  4 ;  8
	map_const BLACKTHORN_EMYS_HOUSE,           4,  4 ;  9

	newgroup ; 43

	map_const SILVER_CAVE_OUTSIDE,          20, 16 ;  1
	map_const ROUTE_28,                     20, 11 ;  2
	map_const SILVER_CAVE_POKECENTER_1F,     6,  4 ;  3
	map_const ROUTE_28_FAMOUS_SPEECH_HOUSE,  4,  4 ;  4

	newgroup ; 44

	map_const SHAMOUTI_ISLAND,           18, 15 ;  1
	map_const BEAUTIFUL_BEACH,           21, 15 ;  2
	map_const ROCKY_BEACH,               20, 15 ;  3
	map_const SHAMOUTI_POKECENTER_1F,     6,  4 ;  4
	map_const SHAMOUTI_HOTEL_1F,          9,  4 ;  5
	map_const SHAMOUTI_HOTEL_2F,          9,  2 ;  6
	map_const SHAMOUTI_HOTEL_3F,          9,  2 ;  7
	map_const SHAMOUTI_HOTEL_ROOM_2A,     3,  3 ;  8
	map_const SHAMOUTI_HOTEL_ROOM_2B,     3,  3 ;  9
	map_const SHAMOUTI_HOTEL_ROOM_3B,     3,  3 ; 10
	map_const SHAMOUTI_HOTEL_ROOM_3C,     3,  3 ; 11
	map_const SHAMOUTI_HOTEL_RESTAURANT,  9,  4 ; 12
	map_const SHAMOUTI_TOURIST_CENTER,    4,  4 ; 13
	map_const SHAMOUTI_MERCHANT,          4,  4 ; 14
	map_const SHAMOUTI_HOUSE,             4,  4 ; 15
	map_const BEAUTIFUL_BEACH_VILLA,      6,  4 ; 16
	map_const ROCKY_BEACH_HOUSE,          4,  4 ; 17

	newgroup ; 45

	map_const SHAMOUTI_SHRINE_RUINS, 12, 17 ;  1

	newgroup ; 46

	map_const WARM_BEACH,       12, 13 ;  1
	map_const SHAMOUTI_COAST,   48, 10 ;  2
	map_const WARM_BEACH_SHACK,  4,  4 ;  3
	map_const WARM_BEACH_HOUSE,  4,  4 ;  4

	newgroup ; 47

	map_const VALENCIA_ISLAND, 14, 12 ;  1
	map_const ROUTE_49,        20, 11 ;  2
	map_const IVYS_LAB,         5,  6 ;  3
	map_const IVYS_HOUSE,       4,  4 ;  4
	map_const VALENCIA_HOUSE,   4,  4 ;  5
	map_const VALENCIA_PORT,   11,  9 ;  6

	newgroup ; 48

	map_const NAVEL_ROCK_OUTSIDE, 13, 16 ;  1
	map_const FARAWAY_ISLAND,     17, 23 ;  2

	newgroup ; 49

	map_const ROUTE_1_VIRIDIAN_GATE,          5,  4 ;  3
	map_const VIRIDIAN_FOREST_VIRIDIAN_GATE,  5,  4 ; 16
	map_const VIRIDIAN_FOREST_PEWTER_GATE,    5,  4 ; 17
	map_const ROUTE_2_GATE,                   5,  4 ; 13
	map_const ROUTE_5_SAFFRON_CITY_GATE,      5,  4 ; 14
	map_const ROUTE_5_UNDERGROUND_ENTRANCE,   4,  4 ; 13
	map_const ROUTE_6_SAFFRON_GATE,           5,  4 ; 11
	map_const ROUTE_6_UNDERGROUND_ENTRANCE,   4,  4 ; 12
	map_const ROUTE_7_SAFFRON_GATE,           5,  4 ; 38
	map_const ROUTE_8_SAFFRON_GATE,           5,  4 ;  2
	map_const ROUTE_11_GATE,                  5,  5 ; 13
	map_const ROUTE_11_GATE_2F,               4,  4 ; 14
	map_const ROUTE_12_GATE,                  5,  5 ;  5
	map_const ROUTE_12_GATE_2F,               4,  4 ;  6
	map_const ROUTE_15_FUCHSIA_GATE,          5,  5 ; 10
	map_const ROUTE_15_FUCHSIA_GATE_2F,       4,  4 ; 11
	map_const ROUTE_16_17_GATE,               5,  5 ; 36
	map_const ROUTE_16_17_GATE_2F,            4,  4 ; 37
	map_const ROUTE_16_GATE,                  5,  4 ; 35
	map_const ROUTE_18_GATE,                  5,  5 ; 39
	map_const ROUTE_18_GATE_2F,               4,  4 ; 40
	map_const ROUTE_19_FUCHSIA_GATE,          5,  4 ; 12
	map_const SAFARI_ZONE_FUCHSIA_GATE,       5,  4 ;  9
	map_const POKEMON_LEAGUE_GATE,           11,  9 ; 14

	newgroup ; 50

	map_const VIRIDIAN_FOREST,                        21, 28 ;  1
	map_const MOUNT_MOON_1F,                          20, 18 ;  2
	map_const MOUNT_MOON_B1F,                         18, 13 ;  3
	map_const MOUNT_MOON_B2F,                         23, 19 ;  4
	map_const FAST_SHIP_1F,                           16,  9 ;  5
	map_const FAST_SHIP_B1F,                          14,  7 ;  6
	map_const FAST_SHIP_CABINS_NNW_NNE_NE,             4, 16 ;  7
	map_const FAST_SHIP_CABINS_SW_SSW_NW,              4, 16 ;  8
	map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,  5, 17 ;  9
	map_const DIGLETTS_CAVE,                          21, 19 ; 10
	map_const UNDERGROUND,                             3, 18 ; 11
	map_const POWER_PLANT,                            10,  9 ; 12
	map_const ROCK_TUNNEL_1F,                         15, 14 ; 13
	map_const ROCK_TUNNEL_B1F,                        15, 14 ; 14
	map_const ROCK_TUNNEL_2F,                         15, 14 ; 15
	map_const DIM_CAVE_1F,                            17, 18 ; 16
	map_const DIM_CAVE_2F,                            17, 18 ; 17
	map_const DIM_CAVE_3F,                            16, 17 ; 18
	map_const DIM_CAVE_4F,                            16, 16 ; 19
	map_const DIM_CAVE_5F,                            17, 17 ; 20
	map_const SILPH_CO_1F,                             8,  4 ; 21
	map_const SILPH_CO_2F,                             8,  4 ; 22
	map_const SILPH_CO_3F,                             8,  4 ; 23
	map_const SEAFOAM_ISLANDS_1F,                     17, 18 ; 24
	map_const SEAFOAM_ISLANDS_B1F,                    20, 10 ; 25
	map_const SEAFOAM_ISLANDS_B2F,                    20, 10 ; 26
	map_const SEAFOAM_ISLANDS_B3F,                    20, 10 ; 27
	map_const SEAFOAM_ISLANDS_B4F,                    20, 10 ; 28
	map_const POKEMON_MANSION_1F,                     15, 14 ; 29
	map_const POKEMON_MANSION_B1F,                    17, 16 ; 30
	map_const CINNABAR_VOLCANO_1F,                    14, 14 ; 31
	map_const CINNABAR_VOLCANO_B1F,                   18, 18 ; 32
	map_const CINNABAR_VOLCANO_B2F,                   14, 14 ; 33
	map_const VICTORY_ROAD_1F,                        12, 13 ; 34
	map_const VICTORY_ROAD_2F,                        14, 11 ; 35
	map_const VICTORY_ROAD_3F,                        12,  9 ; 36
	map_const CERULEAN_CAVE_1F,                       17, 12 ; 37
	map_const CERULEAN_CAVE_2F,                       17, 11 ; 38
	map_const CERULEAN_CAVE_B1F,                      17, 11 ; 39

	newgroup ; 51

	map_const ROUTE_29_46_GATE,             5,  4 ;  1
	map_const ROUTE_31_VIOLET_GATE,         5,  4 ;  2
	map_const ROUTE_32_RUINS_OF_ALPH_GATE,  5,  4 ;  3
	map_const ILEX_FOREST_AZALEA_GATE,      5,  4 ;  4
	map_const ROUTE_34_ILEX_FOREST_GATE,    5,  4 ;  5
	map_const GOLDENROD_HARBOR_GATE,        5,  4 ;  6
	map_const ROUTE_35_GOLDENROD_GATE,      5,  4 ;  7
	map_const ROUTE_35_NATIONAL_PARK_GATE, 10,  4 ;  8
	map_const ROUTE_36_RUINS_OF_ALPH_GATE,  5,  4 ;  9
	map_const ROUTE_36_NATIONAL_PARK_GATE,  5,  4 ; 10
	map_const ROUTE_36_VIOLET_GATE,         5,  4 ; 11
	map_const ROUTE_38_ECRUTEAK_GATE,       5,  4 ; 12
	map_const ROUTE_40_BATTLE_TOWER_GATE,   5,  4 ; 13
	map_const CLIFF_EDGE_GATE,             10, 11 ; 14
	map_const YELLOW_FOREST_GATE,           5,  4 ; 15
	map_const ROUTE_42_ECRUTEAK_GATE,       5,  4 ; 16
	map_const ROUTE_43_MAHOGANY_GATE,       5,  4 ; 17
	map_const ROUTE_43_GATE,                5,  4 ; 18

	newgroup ; 52

	map_const TOHJO_FALLS,                            15,  9 ;  1
	map_const GIOVANNIS_CAVE,                         10, 24 ;  2
	map_const DARK_CAVE_VIOLET_ENTRANCE,              20, 18 ;  3
	map_const DARK_CAVE_BLACKTHORN_ENTRANCE,          15, 15 ;  4
	map_const SPROUT_TOWER_1F,                         8,  8 ;  5
	map_const SPROUT_TOWER_2F,                         8,  8 ;  6
	map_const SPROUT_TOWER_3F,                         8,  8 ;  7
	map_const RUINS_OF_ALPH_HO_OH_CHAMBER,             4,  5 ;  8
	map_const RUINS_OF_ALPH_KABUTO_CHAMBER,            4,  5 ;  9
	map_const RUINS_OF_ALPH_OMANYTE_CHAMBER,           4,  5 ; 10
	map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER,        4,  5 ; 11
	map_const RUINS_OF_ALPH_ENTRANCE_CHAMBER,          4,  4 ; 12
	map_const RUINS_OF_ALPH_INNER_CHAMBER,            10, 14 ; 13
	map_const UNION_CAVE_1F,                          10, 24 ; 14
	map_const UNION_CAVE_B1F_NORTH,                   10, 13 ; 15
	map_const UNION_CAVE_B1F_SOUTH,                   10, 18 ; 16
	map_const UNION_CAVE_B2F,                         10, 18 ; 17
	map_const SLOWPOKE_WELL_B1F,                      10,  9 ; 18
	map_const SLOWPOKE_WELL_B2F,                      10,  9 ; 19
	map_const ILEX_FOREST,                            20, 26 ; 20
	map_const MURKY_SWAMP,                            23, 19 ; 21
	map_const WAREHOUSE_ENTRANCE,                      9, 18 ; 22
	map_const UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 13, 14 ; 23
	map_const GOLDENROD_DEPT_STORE_B1F,               10,  9 ; 24
	map_const UNDERGROUND_WAREHOUSE,                  10,  9 ; 25
	map_const RADIO_TOWER_1F,                          9,  4 ; 26
	map_const RADIO_TOWER_2F,                          9,  4 ; 27
	map_const RADIO_TOWER_3F,                          9,  4 ; 28
	map_const RADIO_TOWER_4F,                          9,  4 ; 29
	map_const RADIO_TOWER_5F,                          9,  4 ; 30
	map_const BURNED_TOWER_1F,                         8,  8 ; 31
	map_const BURNED_TOWER_B1F,                       10,  9 ; 32
	map_const TIN_TOWER_1F,                            8,  8 ; 33
	map_const TIN_TOWER_2F,                            8,  8 ; 34
	map_const TIN_TOWER_3F,                            8,  8 ; 35
	map_const TIN_TOWER_4F,                            8,  8 ; 36
	map_const TIN_TOWER_5F,                            8,  8 ; 37
	map_const TIN_TOWER_6F,                            8,  8 ; 38
	map_const TIN_TOWER_7F,                            8,  8 ; 39
	map_const TIN_TOWER_8F,                            8,  8 ; 40
	map_const TIN_TOWER_9F,                            8,  8 ; 41
	map_const TIN_TOWER_10F,                           8,  8 ; 42
	map_const TIN_TOWER_ROOF,                          7,  9 ; 43
	map_const OLIVINE_LIGHTHOUSE_1F,                  10,  9 ; 44
	map_const OLIVINE_LIGHTHOUSE_2F,                  10,  9 ; 45
	map_const OLIVINE_LIGHTHOUSE_3F,                  10,  9 ; 46
	map_const OLIVINE_LIGHTHOUSE_4F,                  10,  9 ; 47
	map_const OLIVINE_LIGHTHOUSE_5F,                  10,  9 ; 48
	map_const OLIVINE_LIGHTHOUSE_6F,                  10,  9 ; 49
	map_const OLIVINE_LIGHTHOUSE_ROOF,                10, 10 ; 50
	map_const WHIRL_ISLAND_NW,                        17, 18 ; 51
	map_const WHIRL_ISLAND_NE,                        10,  9 ; 52
	map_const WHIRL_ISLAND_SW,                        10,  9 ; 53
	map_const WHIRL_ISLAND_CAVE,                      20, 45 ; 54
	map_const WHIRL_ISLAND_SE,                         5,  9 ; 55
	map_const WHIRL_ISLAND_B1F,                       20, 18 ; 56
	map_const WHIRL_ISLAND_B2F,                       10, 18 ; 57
	map_const WHIRL_ISLAND_LUGIA_CHAMBER,             10,  9 ; 58
	map_const CLIFF_CAVE,                              6, 18 ; 59
	map_const YELLOW_FOREST,                          29, 26 ; 60
	map_const QUIET_CAVE_1F,                          18, 18 ; 61
	map_const QUIET_CAVE_B1F,                         18, 18 ; 62
	map_const QUIET_CAVE_B2F,                         18, 18 ; 63
	map_const QUIET_CAVE_B3F,                         18, 18 ; 64
	map_const EMBEDDED_TOWER,                          7, 12 ; 65
	map_const MOUNT_MORTAR_1F_OUTSIDE,                20, 18 ; 66
	map_const MOUNT_MORTAR_1F_INSIDE,                 20, 25 ; 67
	map_const MOUNT_MORTAR_2F_INSIDE,                 20, 18 ; 68
	map_const MOUNT_MORTAR_B1F,                       20, 18 ; 69
	map_const MAHOGANY_MART_1F,                        4,  4 ; 70
	map_const TEAM_ROCKET_BASE_B1F,                   15,  9 ; 71
	map_const TEAM_ROCKET_BASE_B2F,                   15,  9 ; 72
	map_const TEAM_ROCKET_BASE_B3F,                   15,  9 ; 73
	map_const ICE_PATH_1F,                            20, 15 ; 74
	map_const ICE_PATH_B1F,                           10, 18 ; 75
	map_const ICE_PATH_B2F_MAHOGANY_SIDE,             10,  9 ; 76
	map_const ICE_PATH_B2F_BLACKTHORN_SIDE,            5,  9 ; 77
	map_const ICE_PATH_B3F,                           10,  5 ; 78
	map_const DRAGONS_DEN_1F,                         20, 45 ; 79
	map_const DRAGONS_DEN_B1F,                        20, 18 ; 80
	map_const DRAGON_SHRINE,                           5,  5 ; 81
	map_const SILVER_CAVE_ROOM_1,                     10, 18 ; 82
	map_const SILVER_CAVE_ROOM_2,                     15, 17 ; 83
	map_const SILVER_CAVE_ROOM_3,                     10, 17 ; 84
	map_const SILVER_CAVE_ITEM_ROOMS,                 20, 18 ; 85

	newgroup ; 53

	map_const SEAGALLOP_FERRY_VERMILION_GATE,  7,  6 ;  1
	map_const SEAGALLOP_FERRY_NAVEL_GATE,      7,  6 ;  2
	map_const SEAGALLOP_FERRY_SHAMOUTI_GATE,   7,  6 ;  3

	newgroup ; 54

	map_const NOISY_FOREST,          22, 20 ;  1
	map_const SHAMOUTI_TUNNEL,       18, 10 ;  2
	map_const FIRE_ISLAND,           13, 16 ;  3
	map_const FIRE_ISLAND_ROOF,       6,  6 ;  4
	map_const ICE_ISLAND,            13, 16 ;  5
	map_const ICE_ISLAND_ROOF,        6,  6 ;  6
	map_const LIGHTNING_ISLAND,      13, 16 ;  7
	map_const LIGHTNING_ISLAND_ROOF,  6,  6 ;  8
	map_const NAVEL_ROCK_INSIDE,     20, 45 ;  9
	map_const NAVEL_ROCK_ROOF,        8, 11 ; 10
	map_const FARAWAY_JUNGLE,        14, 12 ; 11
