RGB: MACRO
rept _NARG / 3
	dw palred (\1) + palgreen (\2) + palblue (\3)
	shift
	shift
	shift
endr
ENDM

GRAYSCALE: macro
rept _NARG
	RGB \1, \1, \1
	shift
endr
endm

palred   EQUS "(1 << 0) *"
palgreen EQUS "(1 << 5) *"
palblue  EQUS "(1 << 10) *"

palettes EQUS "* 8"
palette  EQUS "+ 8 *"

tiles EQUS "* $10"
tile  EQUS "+ $10 *"
