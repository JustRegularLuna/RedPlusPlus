overworld_sprite: MACRO
; pointer, bank, type, palette
	dab \1
	db \2, \3
ENDM

SpriteHeaders:
	overworld_sprite RedSpriteGFX, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite RedBikeSpriteGFX, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite RedSurfSpriteGFX, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite LeafSpriteGFX, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite LeafBikeSpriteGFX, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite LeafSurfSpriteGFX, WALKING_SPRITE, PAL_OW_GREEN
