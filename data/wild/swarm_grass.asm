; swarms in grass

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, WOBBUFFET
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, WOBBUFFET
	db 4, WOBBUFFET
	db 4, WOBBUFFET
	; day
	db 3, GEODUDE
	db 3, WOBBUFFET
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, WOBBUFFET
	db 4, WOBBUFFET
	db 4, WOBBUFFET
	; nite
	db 3, GEODUDE
	db 3, WOBBUFFET
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, WOBBUFFET
	db 4, WOBBUFFET
	db 4, WOBBUFFET

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; day
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; nite
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, HOOTHOOT
	db 10, DITTO
	db 10, DITTO

	db -1 ; end
