trainerclass: MACRO
	enum \1
const_value = 1
ENDM

; trainer groups
	enum_start
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_LYRA
	const PHONECONTACT_BUENA

	trainerclass RED ; 1

	trainerclass LEAF ; 2

	trainerclass PROF_OAK ; 3

NUM_TRAINER_CLASSES EQU __enum__
