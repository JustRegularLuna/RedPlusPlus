scene_var: MACRO
; db group, map
; dw address
	map_id \1
	dw \2
ENDM

MapTriggers::
	scene_var PALLET_TOWN, wPalletTownTrigger
	db -1
