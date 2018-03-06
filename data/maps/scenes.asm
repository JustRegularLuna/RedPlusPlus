scene_var: MACRO
; db group, map
; dw address
	map_id \1
	dw \2
ENDM

MapTriggers::
	scene_var PALLET_TOWN, wPalletTownTrigger
	scene_var ROUTE_18_WEST, wAlways0Trigger
	scene_var ROUTE_24, wRoute24Trigger
	db -1
