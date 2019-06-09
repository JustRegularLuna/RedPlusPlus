OutdoorSprites: ; 144b8
; Valid sprite IDs for each map group.
; Maximum 9 walking sprites per group.
	dw OutdoorSprites_Special
	dw OutdoorSprites_Pallet
	dw OutdoorSprites_Viridian
	dw OutdoorSprites_Pewter
	dw OutdoorSprites_MountMoonSquare
	dw OutdoorSprites_Cerulean
	dw OutdoorSprites_CeruleanCape
	dw OutdoorSprites_Route10
	dw OutdoorSprites_Route5
	dw OutdoorSprites_Vermilion
	dw OutdoorSprites_Celadon
	dw OutdoorSprites_Lavender
	dw OutdoorSprites_SilenceBridge
	dw OutdoorSprites_CyclingRoad
	dw OutdoorSprites_Fuchsia
	dw OutdoorSprites_Route19
	dw OutdoorSprites_Saffron
	dw OutdoorSprites_Cinnabar
	dw OutdoorSprites_CeriseEast
	dw OutdoorSprites_Indigo
	dw OutdoorSprites_Route26
	dw OutdoorSprites_CeriseWest
	dw OutdoorSprites_NewBark
	dw OutdoorSprites_Cherrygrove
	dw OutdoorSprites_Route32
	dw OutdoorSprites_Violet
	dw OutdoorSprites_RuinsOfAlph
	dw OutdoorSprites_Azalea
	dw OutdoorSprites_StormyBeach
	dw OutdoorSprites_Goldenrod
	dw OutdoorSprites_Ecruteak
	dw OutdoorSprites_GoldenrodHarbor
	dw OutdoorSprites_NationalPark
	dw OutdoorSprites_Route39
	dw OutdoorSprites_Olivine
	dw OutdoorSprites_BattleTower
	dw OutdoorSprites_Route41
	dw OutdoorSprites_Cianwood
	dw OutdoorSprites_BridgeRoutes
	dw OutdoorSprites_Mahogany
	dw OutdoorSprites_LakeOfRage
	dw OutdoorSprites_Blackthorn
	dw OutdoorSprites_SilverCave
	dw OutdoorSprites_Shamouti
	dw OutdoorSprites_ShamoutiShrine
	dw OutdoorSprites_ShamoutiCoast
	dw OutdoorSprites_Valencia
	dw OutdoorSprites_NavelFaraway
	dw OutdoorSprites_KantoGates
	dw OutdoorSprites_KantoDungeons
	dw OutdoorSprites_JohtoGates
	dw OutdoorSprites_JohtoDungeons
	dw OutdoorSprites_IslandGates
	dw OutdoorSprites_IslandDungeons

OutdoorSprites_Pallet:
OutdoorSprites_Cinnabar:
OutdoorSprites_CeriseEast:
	db SPRITE_OAK
	db SPRITE_GIRL
	db SPRITE_FISHER2
	db SPRITE_BUG_CATCHER
	db SPRITE_CLERK
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Viridian:
	db SPRITE_BUG_CATCHER
	db SPRITE_GAMBLER
	db SPRITE_GIRL
	db SPRITE_FISHER2
	db SPRITE_BLUE
	db SPRITE_MAP_AMBER_LYING_OLD_MAN
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Pewter:
	db SPRITE_LASS
	db SPRITE_BLACK_HAIR_BOY_1
	db SPRITE_BLACK_HAIR_BOY_2
	db SPRITE_BUG_CATCHER
	db SPRITE_GIRL
	db SPRITE_ZIGZAGOON
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_MountMoonSquare:
	db SPRITE_PEARL_METEORITE_LODESTONE
	db SPRITE_SECRET_BASE
	db SPRITE_CABLE_CAR_SILPH
	db 0 ; end

OutdoorSprites_Cerulean:
OutdoorSprites_CeruleanCape:
OutdoorSprites_Route10:
OutdoorSprites_Route5:
	db SPRITE_BLUE
	db SPRITE_ROCKET
	db SPRITE_BLACK_HAIR_BOY_1
	db SPRITE_BLACK_HAIR_BOY_2
	db SPRITE_LASS
	db SPRITE_OFFICER_JENNY
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db SPRITE_CABLE_CAR_SILPH
	db SPRITE_SLOWBRO
	db 0 ; end

OutdoorSprites_Vermilion:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Celadon:
	db SPRITE_BIG_SNORLAX
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Lavender:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_SilenceBridge:
	db SPRITE_BIG_SNORLAX
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_CyclingRoad:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Fuchsia:
OutdoorSprites_Route19:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Saffron:
	db SPRITE_CABLE_CAR_SILPH
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Indigo:
	db 0 ; end

OutdoorSprites_Route26:
OutdoorSprites_CeriseWest:
	db SPRITE_MOLTRES
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_NewBark:
OutdoorSprites_Cherrygrove:
OutdoorSprites_Route32:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db SPRITE_SIGN_FENCE_TREETOP
	db 0 ; end

OutdoorSprites_Violet:
OutdoorSprites_Mahogany:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db SPRITE_SIGN_FENCE_TREETOP
	db 0 ; end

OutdoorSprites_RuinsOfAlph:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db SPRITE_SIGN_FENCE_TREETOP
	db 0 ; end

OutdoorSprites_Azalea:
	db SPRITE_BALL_CUT_FRUIT
	db 0 ; end

OutdoorSprites_StormyBeach:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db SPRITE_SIGN_FENCE_TREETOP
	db 0 ; end

OutdoorSprites_Goldenrod:
	db 0 ; end

OutdoorSprites_Ecruteak:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db SPRITE_SIGN_FENCE_TREETOP
	db 0 ; end

OutdoorSprites_GoldenrodHarbor:
OutdoorSprites_Route39:
OutdoorSprites_Olivine:
OutdoorSprites_Route41:
OutdoorSprites_Cianwood:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_BOULDER_ROCK_FOSSIL
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_NationalPark:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db SPRITE_SIGN_FENCE_TREETOP
	db 0 ; end

OutdoorSprites_BattleTower:
	db 0 ; end

OutdoorSprites_BridgeRoutes:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_LakeOfRage:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_Blackthorn:
	db SPRITE_BALL_CUT_FRUIT
	db SPRITE_SECRET_BASE
	db 0 ; end

OutdoorSprites_SilverCave:
	db SPRITE_BALL_CUT_FRUIT
	db 0 ; end

OutdoorSprites_Special:
OutdoorSprites_Shamouti:
OutdoorSprites_ShamoutiShrine:
OutdoorSprites_ShamoutiCoast:
OutdoorSprites_Valencia:
OutdoorSprites_NavelFaraway:
OutdoorSprites_KantoGates:
OutdoorSprites_KantoDungeons:
OutdoorSprites_JohtoGates:
OutdoorSprites_JohtoDungeons:
OutdoorSprites_IslandGates:
OutdoorSprites_IslandDungeons:
	db 0 ; end
