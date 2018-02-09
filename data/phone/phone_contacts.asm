phone: MACRO
	db  \1, \2 ; trainer
	map_id \3 ; map
	db  \4
	dba \5 ; script 1
	db  \6
	dba \7 ; script 2
ENDM

PhoneContacts:
	phone TRAINER_NONE, 0,                 N_A,           0, UnusedPhoneScript, 0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,  REDS_HOUSE_1F, 7, MomPhoneScript,    0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_OAK,  OAKS_LAB,      7, ElmPhoneScript1,   0, ElmPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_BILL, N_A,           7, BillPhoneScript1,  0, BillPhoneScript2
