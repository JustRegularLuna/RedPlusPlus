specialcall: MACRO
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	specialcall SpecialCallOnlyWhenOutside, PHONE_OAK, ElmPhoneScript2 ; SPECIALCALL_POKERUS
