scene_var: MACRO
; db group, map
; dw address
	map_id \1
	dw \2
ENDM

MapTriggers::
	scene_var PALLET_TOWN, wPalletTownTrigger
	scene_var VIRIDIAN_CITY, wViridianCityTrigger
	scene_var PEWTER_CITY, wPewterCityTrigger
	scene_var CERULEAN_CITY, wCeruleanCityTrigger
	scene_var ROUTE_22, wRoute22Trigger
	scene_var REDS_HOUSE_2F, wRedsHouse2FTrigger
	scene_var OAKS_LAB, wOaksLabTrigger
	scene_var VIRIDIAN_MART, wViridianMartTrigger
	scene_var PEWTER_MUSEUM_OF_SCIENCE_1F, wPewterMuseumTrigger
	scene_var MOUNT_MOON_B2F, wMtMoonB2FTrigger
	scene_var ROUTE_18_WEST, wAlways0Trigger
	scene_var ROUTE_24, wRoute24Trigger
	scene_var ROUTE_47, wRoute47Trigger
	db -1
