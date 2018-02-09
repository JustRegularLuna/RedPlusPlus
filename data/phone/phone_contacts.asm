phone: MACRO
	db  \1, \2 ; trainer
	map_id \3 ; map
	db  \4
	dba \5 ; script 1
	db  \6
	dba \7 ; script 2
ENDM

PhoneContacts:
	phone TRAINER_NONE, PHONE_00,              N_A,                       0, UnusedPhoneScript,   0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,      KRISS_HOUSE_1F,            7, MomPhoneScript,      0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BIKESHOP, OAKS_LAB,                  0, UnusedPhoneScript,   0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       7, BillPhoneScript1,    0, BillPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_ELM,      ELMS_LAB,                  7, ElmPhoneScript1,     0, ElmPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_LYRA,     LYRAS_HOUSE_1F,            7, LyraPhoneScript,     0, LyraPhoneScript2
	phone TRAINER_NONE, 1,                     NATIONAL_PARK,             7, JackPhoneScript1,    7, JackPhoneScript2
	phone TRAINER_NONE, 1,                     NATIONAL_PARK,             7, BeverlyPhoneScript1, 7, BeverlyPhoneScript2
	phone TRAINER_NONE, 1,                     OLIVINE_LIGHTHOUSE_2F,     7, HueyPhoneScript1,    7, HueyPhoneScript2
	phone TRAINER_NONE, PHONE_00,              N_A,                       0, UnusedPhoneScript,   0, UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0, UnusedPhoneScript,   0, UnusedPhoneScript
	phone TRAINER_NONE, 1,                     ROUTE_26,                  7, GavenPhoneScript1,   7, GavenPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_26,                  7, BethPhoneScript1,    7, BethPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_27,                  7, JosePhoneScript1,    7, JosePhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_27,                  7, ReenaPhoneScript1,   7, ReenaPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_30,                  7, JoeyPhoneScript1,    7, JoeyPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_31,                  7, WadePhoneScript1,    7, WadePhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_32,                  7, RalphPhoneScript1,   7, RalphPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_32,                  7, LizPhoneScript1,     7, LizPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_33,                  7, AnthonyPhoneScript1, 7, AnthonyPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_34,                  7, ToddPhoneScript1,    7, ToddPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_34,                  7, GinaPhoneScript1,    7, GinaPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_35,                  7, IrwinPhoneScript1,   7, IrwinPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_35,                  7, ArniePhoneScript1,   7, ArniePhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_36,                  7, AlanPhoneScript1,    7, AlanPhoneScript2
	phone TRAINER_NONE, PHONE_00,              N_A,                       0, UnusedPhoneScript,   0, UnusedPhoneScript
	phone TRAINER_NONE, 1,                     ROUTE_38,                  7, DanaPhoneScript1,    7, DanaPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_38,                  7, ChadPhoneScript1,    7, ChadPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_39,                  7, DerekPhoneScript1,   7, DerekPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_42,                  7, TullyPhoneScript1,   7, TullyPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_43,                  7, BrentPhoneScript1,   7, BrentPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_43,                  7, TiffanyPhoneScript1, 7, TiffanyPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_44,                  7, VancePhoneScript1,   7, VancePhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_44,                  7, WiltonPhoneScript1,  7, WiltonPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_45,                  7, KenjiPhoneScript1,   7, KenjiPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_45,                  7, ParryPhoneScript1,   7, ParryPhoneScript2
	phone TRAINER_NONE, 1,                     ROUTE_46,                  7, ErinPhoneScript1,    7, ErinPhoneScript2
	phone TRAINER_NONE, PHONECONTACT_BUENA,    GOLDENROD_DEPT_STORE_ROOF, 7, BuenaPhoneScript1,   7, BuenaPhoneScript2
