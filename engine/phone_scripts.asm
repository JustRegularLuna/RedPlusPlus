UnusedPhoneScript: ; 0xbcea5
	farwritetext UnusedPhoneText
	end

; Mom

MomPhoneScript: ; 0xbceaa
;	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
;	iftrue .bcec5
;	checkevent EVENT_LEARNED_TO_CATCH_POKEMON
;	iftrue MomPhoneLectureScript
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue MomPhoneNoGymQuestScript
;	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
;	iftrue MomPhoneNoPokedexScript
	jump MomPhoneNoPokemonScript

.bcec5 ; 0xbcec5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue MomPhoneHangUpScript
	farwritetext MomPhoneGreetingText
	buttonsound
	mapnametotext $0
	checkcode VAR_ROOFPALETTE
	ifequal $1, UnknownScript_0xbcee7
	ifequal $2, UnknownScript_0xbcf27
	jump UnknownScript_0xbcf2f

UnknownScript_0xbcedf: ; 0xbcedf
	farwritetext UnknownText_0x1b4021
	buttonsound
	jump UnknownScript_0xbcf37

UnknownScript_0xbcee7: ; 0xbcee7
	checkcode VAR_MAPGROUP
	ifequal GROUP_NEW_BARK_TOWN, .newbark
	ifequal GROUP_CHERRYGROVE_CITY, .cherrygrove
	ifequal GROUP_VIOLET_CITY, .violet
	ifequal GROUP_AZALEA_TOWN, .azalea
	ifequal GROUP_GOLDENROD_CITY, .goldenrod
	farwritetext MomPhoneGenericAreaText
	buttonsound
	jump UnknownScript_0xbcf37

.newbark ; 0xbcf05
	farwritetext MomPhoneNewBarkText
	buttonsound
	jump UnknownScript_0xbcf37

.cherrygrove ; 0xbcf0d
	farwritetext MomPhoneCherrygroveText
	buttonsound
	jump UnknownScript_0xbcf37

.violet ; 0xbcf15
	landmarktotext SPROUT_TOWER, 1
	jump UnknownScript_0xbcedf
.azalea ; 0xbcf1b
	landmarktotext SLOWPOKE_WELL, 1
	jump UnknownScript_0xbcedf
.goldenrod ; 0xbcf21
	landmarktotext RADIO_TOWER, 1
	jump UnknownScript_0xbcedf

UnknownScript_0xbcf27: ; 0xbcf27
	farwritetext UnknownText_0x1b411c
	buttonsound
	jump UnknownScript_0xbcf37

UnknownScript_0xbcf2f: ; 0xbcf2f
	farwritetext UnknownText_0x1b4150
	buttonsound
	jump UnknownScript_0xbcf37

UnknownScript_0xbcf37: ; 0xbcf37
	checkflag ENGINE_MOM_SAVING_MONEY
	iffalse UnknownScript_0xbcf49
	checkmoney $1, 0
	ifequal $0, UnknownScript_0xbcf55
	jump UnknownScript_0xbcf63

UnknownScript_0xbcf49: ; 0xbcf49
	checkmoney $1, 0
	ifequal $0, UnknownScript_0xbcf79
	jump UnknownScript_0xbcf6e

UnknownScript_0xbcf55: ; 0xbcf55
	readmoney $1, $0
	farwritetext UnknownText_0x1b41a7
	yesorno
	iftrue MomPhoneSaveMoneyScript
	jump MomPhoneWontSaveMoneyScript

UnknownScript_0xbcf63: ; 0xbcf63
	farwritetext UnknownText_0x1b41ea
	yesorno
	iftrue MomPhoneSaveMoneyScript
	jump MomPhoneWontSaveMoneyScript

UnknownScript_0xbcf6e: ; 0xbcf6e
	farwritetext UnknownText_0x1b420d
	yesorno
	iftrue MomPhoneSaveMoneyScript
	jump MomPhoneWontSaveMoneyScript

UnknownScript_0xbcf79: ; 0xbcf79
	readmoney $1, $0
	farwritetext UnknownText_0x1b4249
	yesorno
	iftrue MomPhoneSaveMoneyScript
	jump MomPhoneWontSaveMoneyScript

MomPhoneSaveMoneyScript: ; 0xbcf87
	setflag ENGINE_MOM_SAVING_MONEY
	farwritetext UnknownText_0x1b4289
	buttonsound
	jump MomPhoneHangUpScript

MomPhoneWontSaveMoneyScript: ; 0xbcf92
	clearflag ENGINE_MOM_SAVING_MONEY
	farwritetext MomPhoneWontSaveMoneyText
	buttonsound
	jump MomPhoneHangUpScript

MomPhoneHangUpScript: ; 0xbcf9d
	farwritetext MomPhoneHangUpText
	end

MomPhoneNoPokemonScript: ; 0xbcfa2
	farwritetext MomPhoneNoPokemonText
	end

MomPhoneNoPokedexScript: ; 0xbcfa7
	farwritetext MomPhoneNoPokedexText
	end

MomPhoneNoGymQuestScript: ; 0xbcfac
	farwritetext MomPhoneNoGymQuestText
	end

MomPhoneLectureScript: ; 0xbcfb1
;	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	setflag ENGINE_DST
	specialphonecall SPECIALCALL_NONE
	farwritetext MomPhoneLectureText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	jump MomPhoneWontSaveMoneyScript

; Bill

BillPhoneScript1: ; 0xbcfc5
	checktime 1 << DAY
	iftrue .daygreet
	checktime 1 << NITE
	iftrue .nitegreet
	farwritetext BillPhoneMornGreetingText
	buttonsound
	jump .main

.daygreet ; 0xbcfd7
	farwritetext BillPhoneDayGreetingText
	buttonsound
	jump .main

.nitegreet ; 0xbcfdf
	farwritetext BillPhoneNiteGreetingText
	buttonsound
	jump .main

.main ; 0xbcfe7
	farwritetext BillPhoneGenericText
	buttonsound
	checkcode VAR_BOXSPACE
	RAM2MEM $0
	ifequal $0, .full
	ifless $6, .nearlyfull
	farwritetext BillPhoneNotFullText
	end

.nearlyfull ; 0xbcffd
	farwritetext BillPhoneNearlyFullText
	end

.full ; 0xbd002
	farwritetext BillPhoneFullText
	jump BillPhoneScriptCheckForBoxes

BillPhoneScript2: ; 0xbd007
	farwritetext BillPhoneNewlyFullText
BillPhoneScriptCheckForBoxes:
	special BillBoxSwitchCheck
	ifequal 0, BillPhoneWholePCFull
	farwritetext BillWantNextBox
	farwritetext UnknownText_0x1c462a
	yesorno
	iffalse .refused
	special BillBoxSwitch
	jump .hang_up

.refused
	farwritetext BillCallMeToSwitch
.hang_up
	farwritetext BillThankYouText
	end

BillPhoneWholePCFull:
	farwritetext BillWholePCFullText
	waitbutton
	end

; Elm

ElmPhoneScript1: ; 0xbd00d
	checkcode VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_POKERUS, .pokerus
;	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
;	iftrue .discovery
;	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
;	iffalse .next
;	checkevent EVENT_TOGEPI_HATCHED
;	iftrue .egghatched
.next
;	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
;	iftrue .eggunhatched
;	checkevent EVENT_ELMS_AIDE_IN_LAB
;	iftrue .assistant
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue .checkingegg
;	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
;	iftrue .stolen
;	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
;	iftrue .sawmrpokemon
	farwritetext ElmPhoneStartText
	end

.sawmrpokemon ; 0xbd048
	farwritetext ElmPhoneSawMrPokemonText
	end

.stolen ; 0xbd04d
	farwritetext ElmPhonePokemonStolenText
	end

.checkingegg ; 0xbd052
	farwritetext ElmPhoneCheckingEggText
	end

.assistant ; 0xbd057
	farwritetext ElmPhoneAssistantText
	end

.eggunhatched ; 0xbd05c
	farwritetext ElmPhoneEggUnhatchedText
	end

.egghatched ; 0xbd061
	farwritetext ElmPhoneEggHatchedText
;	setevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	end

.discovery ; 0xbd069
	random $2
	ifequal $0, .nextdiscovery
	farwritetext ElmPhoneDiscovery1Text
	end

.nextdiscovery ; 0xbd074
	farwritetext ElmPhoneDiscovery2Text
	end

.pokerus ; 0xbd079
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

ElmPhoneScript2: ; 0xbd081
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

; Jack

JackPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_JACK
	iftrue UnknownScript_0xbd0f3
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_JACK_MONDAY_MORNING
	iftrue UnknownScript_0xbd0ef
	checkcode VAR_WEEKDAY
	ifnotequal MONDAY, UnknownScript_0xbd0ef
	checktime 1 << MORN
	iftrue UnknownScript_0xbd12a

UnknownScript_0xbd0ef:
	farjump UnknownScript_0xa08f8

UnknownScript_0xbd0f3:
	landmarktotext NATIONAL_PARK, $2
	farjump UnknownScript_0xa0a2d

JackPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd13b
	checkflag ENGINE_JACK
	iftrue UnknownScript_0xbd11e
	checkflag ENGINE_JACK_MONDAY_MORNING
	iftrue UnknownScript_0xbd11e
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd12d

UnknownScript_0xbd11e:
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd137
	farjump UnknownScript_0xa0000

UnknownScript_0xbd12a:
	setflag ENGINE_JACK_MONDAY_MORNING

UnknownScript_0xbd12d:
	landmarktotext NATIONAL_PARK, $2
	setflag ENGINE_JACK
	farjump UnknownScript_0xa0376

UnknownScript_0xbd137:
	farjump UnknownScript_0xa0584

UnknownScript_0xbd13b:
	farjump UnknownScript_0xa0654

; Beverly

BeverlyPhoneScript1:
	trainertotext 1, 1, $0
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue UnknownScript_0xbd151
	farjump UnknownScript_0xa0900

UnknownScript_0xbd151:
	landmarktotext NATIONAL_PARK, $2
	farjump UnknownScript_0xa0aa5

BeverlyPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue UnknownScript_0xbd16e
	farscall PhoneScript_Random4
	ifequal $0, UnknownScript_0xbd172

UnknownScript_0xbd16e:
	farjump UnknownScript_0xa0017

UnknownScript_0xbd172:
	setflag ENGINE_BEVERLY_HAS_NUGGET
	landmarktotext NATIONAL_PARK, $2
	farjump UnknownScript_0xa061e

; Huey

HueyPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_HUEY
	iftrue UnknownScript_0xbd1a2
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_HUEY_WEDNESDAY_NIGHT
	iftrue UnknownScript_0xbd19b
	checkcode VAR_WEEKDAY
	ifnotequal WEDNESDAY, UnknownScript_0xbd19b
	checktime 1 << NITE
	iftrue UnknownScript_0xbd1cd

UnknownScript_0xbd19b:
	special RandomPhoneMon
	farjump UnknownScript_0xa0908

UnknownScript_0xbd1a2:
	landmarktotext LIGHTHOUSE, $2
	farjump UnknownScript_0xa0a32

HueyPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_HUEY
	iftrue UnknownScript_0xbd1c9
	checkflag ENGINE_HUEY_WEDNESDAY_NIGHT
	iftrue UnknownScript_0xbd1c9
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd1d0
	ifequal $1, UnknownScript_0xbd1d0

UnknownScript_0xbd1c9:
	farjump PhoneScript_MonFlavorText

UnknownScript_0xbd1cd:
	setflag ENGINE_HUEY_WEDNESDAY_NIGHT

UnknownScript_0xbd1d0:
	landmarktotext LIGHTHOUSE, $2
	setflag ENGINE_HUEY
	farjump UnknownScript_0xa0376

; Gaven

GavenPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_GAVEN
	iftrue UnknownScript_0xbd1fd
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_GAVEN_THURSDAY_MORNING
	iftrue UnknownScript_0xbd1f9
	checkcode VAR_WEEKDAY
	ifnotequal THURSDAY, UnknownScript_0xbd1f9
	checktime 1 << MORN
	iftrue UnknownScript_0xbd22c

UnknownScript_0xbd1f9:
	farjump UnknownScript_0xa0910

UnknownScript_0xbd1fd:
	landmarktotext ROUTE_26, $2
	farjump UnknownScript_0xa0a37

GavenPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_GAVEN
	iftrue UnknownScript_0xbd220
	checkflag ENGINE_GAVEN_THURSDAY_MORNING
	iftrue UnknownScript_0xbd220
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd22f

UnknownScript_0xbd220:
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd239
	farjump UnknownScript_0xa0000

UnknownScript_0xbd22c:
	setflag ENGINE_GAVEN_THURSDAY_MORNING

UnknownScript_0xbd22f:
	landmarktotext ROUTE_26, $2
	setflag ENGINE_GAVEN
	farjump UnknownScript_0xa0376

UnknownScript_0xbd239:
	farjump UnknownScript_0xa0584

; Beth

BethPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_BETH
	iftrue UnknownScript_0xbd260
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_BETH_FRIDAY_AFTERNOON
	iftrue UnknownScript_0xbd25c
	checkcode VAR_WEEKDAY
	ifnotequal FRIDAY, UnknownScript_0xbd25c
	checktime 1 << DAY
	iftrue UnknownScript_0xbd287

UnknownScript_0xbd25c:
	farjump UnknownScript_0xa0918

UnknownScript_0xbd260:
	landmarktotext ROUTE_26, $2
	farjump UnknownScript_0xa0a3c

BethPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_BETH
	iftrue UnknownScript_0xbd283
	checkflag ENGINE_BETH_FRIDAY_AFTERNOON
	iftrue UnknownScript_0xbd283
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd28a

UnknownScript_0xbd283:
	farjump UnknownScript_0xa0017

UnknownScript_0xbd287:
	setflag ENGINE_BETH_FRIDAY_AFTERNOON

UnknownScript_0xbd28a:
	landmarktotext ROUTE_26, $2
	setflag ENGINE_BETH
	farjump UnknownScript_0xa037e

; Jose

JosePhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_JOSE
	iftrue UnknownScript_0xbd2bd
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_JOSE_SATURDAY_NIGHT
	iftrue UnknownScript_0xbd2b9
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue UnknownScript_0xbd2c4
	checkcode VAR_WEEKDAY
	ifnotequal SATURDAY, UnknownScript_0xbd2b9
	checktime 1 << NITE
	iftrue UnknownScript_0xbd301

UnknownScript_0xbd2b9:
	farjump UnknownScript_0xa0920

UnknownScript_0xbd2bd:
	landmarktotext ROUTE_27, $2
	farjump UnknownScript_0xa0a41

UnknownScript_0xbd2c4:
	landmarktotext ROUTE_27, $2
	farjump UnknownScript_0xa0a41

JosePhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_JOSE
	iftrue UnknownScript_0xbd2f5
	checkflag ENGINE_JOSE_SATURDAY_NIGHT
	iftrue UnknownScript_0xbd2f5
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue UnknownScript_0xbd2f5
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd304
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd312

UnknownScript_0xbd2f5:
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd30e
	farjump UnknownScript_0xa0000

UnknownScript_0xbd301:
	setflag ENGINE_JOSE_SATURDAY_NIGHT

UnknownScript_0xbd304:
	landmarktotext ROUTE_27, $2
	setflag ENGINE_JOSE
	farjump UnknownScript_0xa0376

UnknownScript_0xbd30e:
	farjump UnknownScript_0xa0584

UnknownScript_0xbd312:
	setflag ENGINE_JOSE_HAS_STAR_PIECE
	landmarktotext ROUTE_27, $2
	farjump UnknownScript_0xa05e6

; Reena

ReenaPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_REENA
	iftrue UnknownScript_0xbd33f
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_REENA_SUNDAY_MORNING
	iftrue UnknownScript_0xbd33b
	checkcode VAR_WEEKDAY
	ifnotequal SUNDAY, UnknownScript_0xbd33b
	checktime 1 << MORN
	iftrue UnknownScript_0xbd366

UnknownScript_0xbd33b:
	farjump UnknownScript_0xa0928

UnknownScript_0xbd33f:
	landmarktotext ROUTE_27, $2
	farjump UnknownScript_0xa0a46

ReenaPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_REENA
	iftrue UnknownScript_0xbd362
	checkflag ENGINE_REENA_SUNDAY_MORNING
	iftrue UnknownScript_0xbd362
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd369

UnknownScript_0xbd362:
	farjump UnknownScript_0xa0017

UnknownScript_0xbd366:
	setflag ENGINE_REENA_SUNDAY_MORNING

UnknownScript_0xbd369:
	landmarktotext ROUTE_27, $2
	setflag ENGINE_REENA
	farjump UnknownScript_0xa037e

; Joey

JoeyPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_JOEY
	iftrue UnknownScript_0xbd399
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_JOEY_MONDAY_AFTERNOON
	iftrue UnknownScript_0xbd392
	checkcode VAR_WEEKDAY
	ifnotequal MONDAY, UnknownScript_0xbd392
	checktime 1 << DAY
	iftrue UnknownScript_0xbd3c4

UnknownScript_0xbd392:
	special RandomPhoneMon
	farwritetext UnknownText_0x17571d
	buttonsound
	farjump PhoneScript_HangupText_Male

UnknownScript_0xbd399:
	landmarktotext ROUTE_30, $2
	farjump UnknownScript_0xa0a4b

JoeyPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_JOEY
	iftrue UnknownScript_0xbd3c0
	checkflag ENGINE_JOEY_MONDAY_AFTERNOON
	iftrue UnknownScript_0xbd3c0
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd3c7
	ifequal $1, UnknownScript_0xbd3c7

UnknownScript_0xbd3c0:
	farjump UnknownScript_0xa0000

UnknownScript_0xbd3c4:
	setflag ENGINE_JOEY_MONDAY_AFTERNOON

UnknownScript_0xbd3c7:
	landmarktotext ROUTE_30, $2
	setflag ENGINE_JOEY
	farjump UnknownScript_0xa0376

; Wade

WadePhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_WADE
	iftrue UnknownScript_0xbd41a
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_WADE_TUESDAY_NIGHT
	iftrue UnknownScript_0xbd3f6
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue UnknownScript_0xbd421
	checkcode VAR_WEEKDAY
	ifnotequal TUESDAY, UnknownScript_0xbd3f6
	checktime 1 << NITE
	iftrue UnknownScript_0xbd484

UnknownScript_0xbd3f6:
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd412
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue UnknownScript_0xbd412
	checkcode VAR_WEEKDAY
	ifequal TUESDAY, UnknownScript_0xbd416
	ifequal THURSDAY, UnknownScript_0xbd416
	ifequal SATURDAY, UnknownScript_0xbd416

UnknownScript_0xbd412:
	farjump UnknownScript_0xa0938

UnknownScript_0xbd416:
	farjump UnknownScript_0xa05a4

UnknownScript_0xbd41a:
	landmarktotext ROUTE_31, $2
	farjump UnknownScript_0xa0a50

UnknownScript_0xbd421:
	landmarktotext ROUTE_31, $2
	farjump UnknownScript_0xa0ab5

WadePhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd44c
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue UnknownScript_0xbd44c
	checkcode VAR_WEEKDAY
	ifequal TUESDAY, UnknownScript_0xbd480
	ifequal THURSDAY, UnknownScript_0xbd480
	ifequal SATURDAY, UnknownScript_0xbd480

UnknownScript_0xbd44c:
	checkflag ENGINE_WADE
	iftrue UnknownScript_0xbd474
	checkflag ENGINE_WADE_TUESDAY_NIGHT
	iftrue UnknownScript_0xbd474
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue UnknownScript_0xbd474
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd495
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse UnknownScript_0xbd474
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd487

UnknownScript_0xbd474:
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd491
	farjump UnknownScript_0xa0000

UnknownScript_0xbd480:
	farjump UnknownScript_0xa05a4

UnknownScript_0xbd484:
	setflag ENGINE_WADE_TUESDAY_NIGHT

UnknownScript_0xbd487:
	landmarktotext ROUTE_31, $2
	setflag ENGINE_WADE
	farjump UnknownScript_0xa0376

UnknownScript_0xbd491:
	farjump UnknownScript_0xa0584

UnknownScript_0xbd495:
	setflag ENGINE_WADE_HAS_ITEM
	landmarktotext ROUTE_31, $2
;	clearevent EVENT_WADE_HAS_ORAN_BERRY
;	clearevent EVENT_WADE_HAS_PECHA_BERRY
;	clearevent EVENT_WADE_HAS_CHERI_BERRY
;	clearevent EVENT_WADE_HAS_PERSIM_BERRY
	random $4
	ifequal $0, UnknownScript_0xbd4b9
	ifequal $1, UnknownScript_0xbd4bf
	ifequal $2, UnknownScript_0xbd4c5
	ifequal $3, UnknownScript_0xbd4cb

UnknownScript_0xbd4b9:
;	setevent EVENT_WADE_HAS_ORAN_BERRY
	jump UnknownScript_0xbd4ce

UnknownScript_0xbd4bf:
;	setevent EVENT_WADE_HAS_PECHA_BERRY
	jump UnknownScript_0xbd4ce

UnknownScript_0xbd4c5:
;	setevent EVENT_WADE_HAS_CHERI_BERRY
	jump UnknownScript_0xbd4ce

UnknownScript_0xbd4cb:
;	setevent EVENT_WADE_HAS_PERSIM_BERRY

UnknownScript_0xbd4ce:
	farjump UnknownScript_0xa05e6

; Ralph

RalphPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_RALPH
	iftrue Ralph_Rematch
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_RALPH_WEDNESDAY_MORNING
	iftrue Ralph_CheckSwarm
	checkcode VAR_WEEKDAY
	ifnotequal WEDNESDAY, Ralph_CheckSwarm
	checktime 1 << MORN
	iftrue Ralph_WednesdayMorning
Ralph_CheckSwarm:
	checkflag ENGINE_SPECIAL_WILDDATA
	iftrue Ralph_ReportSwarm
	farjump UnknownScript_0xa0940

Ralph_Rematch:
	landmarktotext ROUTE_32, $2
	farjump UnknownScript_0xa0a55

Ralph_ReportSwarm:
	landmarktotext ROUTE_32, $2
	farjump UnknownScript_0xa0af5

RalphPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse Ralph_CheckSwarm2
	checkflag ENGINE_RALPH
	iftrue Ralph_CheckSwarm2
	checkflag ENGINE_RALPH_WEDNESDAY_MORNING
	iftrue Ralph_CheckSwarm2
	farscall PhoneScript_Random2
	ifequal $0, Ralph_FightMe
Ralph_CheckSwarm2:
	farscall PhoneScript_Random5
	ifequal $0, Ralph_SetUpSwarm
	farjump UnknownScript_0xa0000

Ralph_WednesdayMorning:
	setflag ENGINE_RALPH_WEDNESDAY_MORNING
Ralph_FightMe:
	landmarktotext ROUTE_32, $2
	setflag ENGINE_RALPH
	farjump UnknownScript_0xa0376

Ralph_SetUpSwarm:
	checkflag ENGINE_SPECIAL_WILDDATA
	iftrue UnknownScript_0xbd55c
	setflag ENGINE_SPECIAL_WILDDATA
	pokenamemem CHINCHOU, $1
	landmarktotext ROUTE_32, $2
	writebyte FISHSWARM_QWILFISH
	special Special_ActivateFishingSwarm
	farjump UnknownScript_0xa05d6

UnknownScript_0xbd55c:
	farjump UnknownScript_0xa0000

; Liz

LizPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_LIZ
	iftrue UnknownScript_0xbd586
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_LIZ_THURSDAY_AFTERNOON
	iftrue UnknownScript_0xbd57f
	checkcode VAR_WEEKDAY
	ifnotequal THURSDAY, UnknownScript_0xbd57f
	checktime 1 << DAY
	iftrue UnknownScript_0xbd5c3

UnknownScript_0xbd57f:
	special RandomPhoneMon
	farjump UnknownScript_0xa0948

UnknownScript_0xbd586:
	landmarktotext ROUTE_32, $2
	farjump UnknownScript_0xa0a5a

LizPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_Random4
	ifequal $0, UnknownScript_0xbd5d0
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_LIZ
	iftrue UnknownScript_0xbd5a9
	checkflag ENGINE_LIZ_THURSDAY_AFTERNOON
	iftrue UnknownScript_0xbd5a9

UnknownScript_0xbd5a9:
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd5d4
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse UnknownScript_0xbd5bf
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd5c6

UnknownScript_0xbd5bf:
	farjump UnknownScript_0xa0017

UnknownScript_0xbd5c3:
	setflag ENGINE_LIZ_THURSDAY_AFTERNOON

UnknownScript_0xbd5c6:
	landmarktotext ROUTE_32, $2
	setflag ENGINE_LIZ
	farjump UnknownScript_0xa037e

UnknownScript_0xbd5d0:
	farjump UnknownScript_0xa047a

UnknownScript_0xbd5d4:
	random $9
	ifequal $0, UnknownScript_0xbd5fa
	ifequal $1, UnknownScript_0xbd600
	ifequal $2, UnknownScript_0xbd606
	ifequal $3, UnknownScript_0xbd60c
	ifequal $4, UnknownScript_0xbd612
	ifequal $5, UnknownScript_0xbd618
	ifequal $6, UnknownScript_0xbd61e
	ifequal $7, UnknownScript_0xbd624
	ifequal $8, UnknownScript_0xbd62a

UnknownScript_0xbd5fa:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd600:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd606:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd60c:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd612:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd618:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd61e:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd624:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd62a:
	trainerclassname 1, 1 ; TODO
	jump UnknownScript_0xbd630

UnknownScript_0xbd630:
	farjump UnknownScript_0xa06da

; Anthony

AnthonyPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_ANTHONY
	iftrue UnknownScript_0xbd65d
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_ANTHONY_FRIDAY_NIGHT
	iftrue UnknownScript_0xbd653
	checkcode VAR_WEEKDAY
	ifnotequal FRIDAY, UnknownScript_0xbd653
	checktime 1 << NITE
	iftrue UnknownScript_0xbd699

UnknownScript_0xbd653:
	checkflag ENGINE_DUNSPARCE_SWARM
	iftrue UnknownScript_0xbd664
	farjump UnknownScript_0xa0950

UnknownScript_0xbd65d:
	landmarktotext ROUTE_33, $2
	farjump UnknownScript_0xa0a5f

UnknownScript_0xbd664:
	landmarktotext ROUTE_33, $2
	farjump UnknownScript_0xa0afa

AnthonyPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse UnknownScript_0xbd68d
	checkflag ENGINE_ANTHONY
	iftrue UnknownScript_0xbd68d
	checkflag ENGINE_ANTHONY_FRIDAY_NIGHT
	iftrue UnknownScript_0xbd68d
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd69c

UnknownScript_0xbd68d:
	farscall PhoneScript_Random5
	ifequal $0, UnknownScript_0xbd6a6
	farjump UnknownScript_0xa0000

UnknownScript_0xbd699:
	setflag ENGINE_ANTHONY_FRIDAY_NIGHT

UnknownScript_0xbd69c:
	landmarktotext ROUTE_33, $2
	setflag ENGINE_ANTHONY
	farjump UnknownScript_0xa0376

UnknownScript_0xbd6a6:
	checkflag ENGINE_DUNSPARCE_SWARM
	iftrue UnknownScript_0xbd6bd
	setflag ENGINE_DUNSPARCE_SWARM
	pokenamemem WOBBUFFET, $1
	swarm SWARM_DUNSPARCE, DARK_CAVE_VIOLET_ENTRANCE
	landmarktotext DARK_CAVE, $2
	farjump UnknownScript_0xa05de

UnknownScript_0xbd6bd:
	farjump UnknownScript_0xa0000

; Todd

ToddPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_TODD
	iftrue UnknownScript_0xbd6ea
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_TODD_SATURDAY_MORNING
	iftrue UnknownScript_0xbd6e0
	checkcode VAR_WEEKDAY
	ifnotequal SATURDAY, UnknownScript_0xbd6e0
	checktime 1 << MORN
	iftrue UnknownScript_0xbd72b

UnknownScript_0xbd6e0:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue UnknownScript_0xbd6f1
	farjump UnknownScript_0xa0958

UnknownScript_0xbd6ea:
	landmarktotext ROUTE_34, $2
	farjump UnknownScript_0xa0a64

UnknownScript_0xbd6f1:
	farjump UnknownScript_0xa0b04

ToddPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_TODD
	iftrue UnknownScript_0xbd717
	checkflag ENGINE_TODD_SATURDAY_MORNING
	iftrue UnknownScript_0xbd717
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse UnknownScript_0xbd71f
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd72e

UnknownScript_0xbd717:
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd73c

UnknownScript_0xbd71f:
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd738
	farjump UnknownScript_0xa0000

UnknownScript_0xbd72b:
	setflag ENGINE_TODD_SATURDAY_MORNING

UnknownScript_0xbd72e:
	landmarktotext ROUTE_34, $2
	setflag ENGINE_TODD
	farjump UnknownScript_0xa0376

UnknownScript_0xbd738:
	farjump UnknownScript_0xa0584

UnknownScript_0xbd73c:
	setflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	farjump UnknownScript_0xa0644

; Gina

GinaPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_GINA
	iftrue UnknownScript_0xbd776
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_GINA_SUNDAY_AFTERNOON
	iftrue UnknownScript_0xbd768
	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue UnknownScript_0xbd77d
	checkcode VAR_WEEKDAY
	ifnotequal SUNDAY, UnknownScript_0xbd768
	checktime 1 << DAY
	iftrue UnknownScript_0xbd7cc

UnknownScript_0xbd768:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0xbd772
	farjump UnknownScript_0xa0960

UnknownScript_0xbd772:
	farjump UnknownScript_0xa05c6

UnknownScript_0xbd776:
	landmarktotext ROUTE_34, $2
	farjump UnknownScript_0xa0a69

UnknownScript_0xbd77d:
	landmarktotext ROUTE_34, $2
	farjump UnknownScript_0xa0abd

GinaPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0xbd7d9
	checkflag ENGINE_GINA
	iftrue UnknownScript_0xbd7c8
	checkflag ENGINE_GINA_SUNDAY_AFTERNOON
	iftrue UnknownScript_0xbd7c8
	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue UnknownScript_0xbd7c8
;	checkevent EVENT_GINA_GAVE_LEAF_STONE
;	iftrue UnknownScript_0xbd7b2
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd7dd

UnknownScript_0xbd7b2:
	farscall PhoneScript_Random11
	ifequal $0, UnknownScript_0xbd7dd
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse UnknownScript_0xbd7c8
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd7cf

UnknownScript_0xbd7c8:
	farjump UnknownScript_0xa0017

UnknownScript_0xbd7cc:
	setflag ENGINE_GINA_SUNDAY_AFTERNOON

UnknownScript_0xbd7cf:
	landmarktotext ROUTE_34, $2
	setflag ENGINE_GINA
	farjump UnknownScript_0xa037e

UnknownScript_0xbd7d9:
	farjump UnknownScript_0xa05c6

UnknownScript_0xbd7dd:
	setflag ENGINE_GINA_HAS_LEAF_STONE
	landmarktotext ROUTE_34, $2
	farjump UnknownScript_0xa061e

; Irwin

IrwinPhoneScript1:
	trainertotext 1, 1, $0
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0xbd7f9
	farjump UnknownScript_0xa09c8

UnknownScript_0xbd7f9:
	farjump UnknownScript_0xa05be

IrwinPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0xbd80f
	farjump UnknownScript_0xa0848

UnknownScript_0xbd80f:
	farjump UnknownScript_0xa05be

; Arnie

ArniePhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_ARNIE
	iftrue UnknownScript_0xbd83c
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_ARNIE_TUESDAY_MORNING
	iftrue UnknownScript_0xbd832
	checkcode VAR_WEEKDAY
	ifnotequal TUESDAY, UnknownScript_0xbd832
	checktime 1 << MORN
	iftrue UnknownScript_0xbd87a

UnknownScript_0xbd832:
	checkflag ENGINE_YANMA_SWARM
	iftrue UnknownScript_0xbd843
	farjump UnknownScript_0xa0968

UnknownScript_0xbd83c:
	landmarktotext ROUTE_35, $2
	farjump UnknownScript_0xa0a6e

UnknownScript_0xbd843:
	landmarktotext ROUTE_35, $2
	farjump UnknownScript_0xa0aff

ArniePhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_ARNIE
	iftrue UnknownScript_0xbd866
	checkflag ENGINE_ARNIE_TUESDAY_MORNING
	iftrue UnknownScript_0xbd866
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd87d

UnknownScript_0xbd866:
	farscall PhoneScript_Random5
	ifequal $0, UnknownScript_0xbd887
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd89e
	farjump UnknownScript_0xa0000

UnknownScript_0xbd87a:
	setflag ENGINE_ARNIE_TUESDAY_MORNING

UnknownScript_0xbd87d:
	landmarktotext ROUTE_35, $2
	setflag ENGINE_ARNIE
	farjump UnknownScript_0xa0376

UnknownScript_0xbd887: ; start swarm
	checkflag ENGINE_YANMA_SWARM
	iftrue UnknownScript_0xbd8a2
	setflag ENGINE_YANMA_SWARM
	pokenamemem YANMA, $1
	swarm SWARM_YANMA, ROUTE_35
	landmarktotext ROUTE_35, $2
	farjump UnknownScript_0xa05ce

UnknownScript_0xbd89e:
	farjump UnknownScript_0xa0584

UnknownScript_0xbd8a2:
	farjump UnknownScript_0xa0000

; Alan

AlanPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_ALAN
	iftrue UnknownScript_0xbd8cf
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_ALAN_WEDNESDAY_AFTERNOON
	iftrue UnknownScript_0xbd8cb
	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue UnknownScript_0xbd8d6
	checkcode VAR_WEEKDAY
	ifnotequal WEDNESDAY, UnknownScript_0xbd8cb
	checktime 1 << DAY
	iftrue UnknownScript_0xbd919

UnknownScript_0xbd8cb:
	farjump UnknownScript_0xa0970

UnknownScript_0xbd8cf:
	landmarktotext ROUTE_36, $2
	farjump UnknownScript_0xa0a73

UnknownScript_0xbd8d6:
	landmarktotext ROUTE_36, $2
	farjump UnknownScript_0xa0ac5

AlanPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_ALAN
	iftrue UnknownScript_0xbd915
	checkflag ENGINE_ALAN_WEDNESDAY_AFTERNOON
	iftrue UnknownScript_0xbd915
	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue UnknownScript_0xbd915
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd91c
;	checkevent EVENT_ALAN_GAVE_FIRE_STONE
;	iftrue UnknownScript_0xbd90d
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd926

UnknownScript_0xbd90d:
	farscall PhoneScript_Random11
	ifequal $0, UnknownScript_0xbd926

UnknownScript_0xbd915:
	farjump UnknownScript_0xa0000

UnknownScript_0xbd919:
	setflag ENGINE_ALAN_WEDNESDAY_AFTERNOON

UnknownScript_0xbd91c:
	landmarktotext ROUTE_36, $2
	setflag ENGINE_ALAN
	farjump UnknownScript_0xa0376

UnknownScript_0xbd926:
	setflag ENGINE_ALAN_HAS_FIRE_STONE
	landmarktotext ROUTE_36, $2
	farjump UnknownScript_0xa05e6

; Dana

DanaPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_DANA
	iftrue UnknownScript_0xbd959
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_DANA_THURSDAY_NIGHT
	iftrue UnknownScript_0xbd955
	checkflag ENGINE_DANA_HAS_THUNDERSTONE
	iftrue UnknownScript_0xbd960
	checkcode VAR_WEEKDAY
	ifnotequal THURSDAY, UnknownScript_0xbd955
	checktime 1 << NITE
	iftrue UnknownScript_0xbd9ab

UnknownScript_0xbd955:
	farjump UnknownScript_0xa0978

UnknownScript_0xbd959:
	landmarktotext ROUTE_38, $2
	farjump UnknownScript_0xa0a78

UnknownScript_0xbd960:
	landmarktotext ROUTE_38, $2
	farjump UnknownScript_0xa0acd

DanaPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_DANA
	iftrue UnknownScript_0xbd99f
	checkflag ENGINE_DANA_THURSDAY_NIGHT
	iftrue UnknownScript_0xbd99f
	checkflag ENGINE_DANA_HAS_THUNDERSTONE
	iftrue UnknownScript_0xbd99f
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd9ae
;	checkevent EVENT_DANA_GAVE_THUNDERSTONE
;	iftrue UnknownScript_0xbd997
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbd9bc

UnknownScript_0xbd997:
	farscall PhoneScript_Random11
	ifequal $0, UnknownScript_0xbd9bc

UnknownScript_0xbd99f:
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbd9b8
	farjump UnknownScript_0xa0017

UnknownScript_0xbd9ab:
	setflag ENGINE_DANA_THURSDAY_NIGHT

UnknownScript_0xbd9ae:
	landmarktotext ROUTE_38, $2
	setflag ENGINE_DANA
	farjump UnknownScript_0xa037e

UnknownScript_0xbd9b8:
	farjump UnknownScript_0xa0592

UnknownScript_0xbd9bc:
	setflag ENGINE_DANA_HAS_THUNDERSTONE
	landmarktotext ROUTE_38, $2
	farjump UnknownScript_0xa061e

; Chad

ChadPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_CHAD
	iftrue UnknownScript_0xbd9e9
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_CHAD_FRIDAY_MORNING
	iftrue UnknownScript_0xbd9e5
	checkcode VAR_WEEKDAY
	ifnotequal FRIDAY, UnknownScript_0xbd9e5
	checktime 1 << MORN
	iftrue UnknownScript_0xbda20

UnknownScript_0xbd9e5:
	farjump UnknownScript_0xa0980

UnknownScript_0xbd9e9:
	landmarktotext ROUTE_38, $2
	farjump UnknownScript_0xa0a7d

ChadPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbda31
	checkflag ENGINE_CHAD
	iftrue UnknownScript_0xbda14
	checkflag ENGINE_CHAD_FRIDAY_MORNING
	iftrue UnknownScript_0xbda14
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbda23

UnknownScript_0xbda14:
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbda2d
	farjump UnknownScript_0xa0000

UnknownScript_0xbda20:
	setflag ENGINE_CHAD_FRIDAY_MORNING

UnknownScript_0xbda23:
	landmarktotext ROUTE_38, $2
	setflag ENGINE_CHAD
	farjump UnknownScript_0xa0376

UnknownScript_0xbda2d:
	farjump UnknownScript_0xa0584

UnknownScript_0xbda31:
	farjump UnknownScript_0xa0754

DerekPhoneScript1:
	trainertotext 1, 1, $0
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_DEREK_HAS_NUGGET
	iftrue UnknownScript_0xbda67
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbda5f
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue UnknownScript_0xbda5f
	checkcode VAR_WEEKDAY
	ifequal TUESDAY, UnknownScript_0xbda63
	ifequal THURSDAY, UnknownScript_0xbda63
	ifequal SATURDAY, UnknownScript_0xbda63

UnknownScript_0xbda5f:
	farjump UnknownScript_0xa0988

UnknownScript_0xbda63:
	farjump UnknownScript_0xa05a4

UnknownScript_0xbda67:
	landmarktotext ROUTE_39, $2
	farjump UnknownScript_0xa0ad5

DerekPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbda92
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue UnknownScript_0xbda92
	checkcode VAR_WEEKDAY
	ifequal TUESDAY, UnknownScript_0xbda9e
	ifequal THURSDAY, UnknownScript_0xbda9e
	ifequal SATURDAY, UnknownScript_0xbda9e

UnknownScript_0xbda92:
	farscall PhoneScript_Random4
	ifequal $0, UnknownScript_0xbdaa2
	farjump UnknownScript_0xa0000

UnknownScript_0xbda9e:
	farjump UnknownScript_0xa05a4

UnknownScript_0xbdaa2:
	setflag ENGINE_DEREK_HAS_NUGGET
	landmarktotext ROUTE_39, $2
	farjump UnknownScript_0xa05e6

TullyPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_TULLY
	iftrue UnknownScript_0xbdad5
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_TULLY_SUNDAY_NIGHT
	iftrue UnknownScript_0xbdad1
	checkflag ENGINE_TULLY_HAS_WATER_STONE
	iftrue UnknownScript_0xbdadc
	checkcode VAR_WEEKDAY
	ifnotequal SUNDAY, UnknownScript_0xbdad1
	checktime 1 << NITE
	iftrue UnknownScript_0xbdb1f

UnknownScript_0xbdad1:
	farjump UnknownScript_0xa0990

UnknownScript_0xbdad5:
	landmarktotext ROUTE_42, $2
	farjump UnknownScript_0xa0a82

UnknownScript_0xbdadc:
	landmarktotext ROUTE_42, $2
	farjump UnknownScript_0xa0add

TullyPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_TULLY
	iftrue UnknownScript_0xbdb1b
	checkflag ENGINE_TULLY_SUNDAY_NIGHT
	iftrue UnknownScript_0xbdb1b
	checkflag ENGINE_TULLY_HAS_WATER_STONE
	iftrue UnknownScript_0xbdb1b
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbdb22
;	checkevent EVENT_TULLY_GAVE_WATER_STONE
;	iftrue UnknownScript_0xbdb13
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbdb2c

UnknownScript_0xbdb13:
	farscall PhoneScript_Random11
	ifequal $0, UnknownScript_0xbdb2c

UnknownScript_0xbdb1b:
	farjump UnknownScript_0xa0000

UnknownScript_0xbdb1f:
	setflag ENGINE_TULLY_SUNDAY_NIGHT

UnknownScript_0xbdb22:
	landmarktotext ROUTE_42, $2
	setflag ENGINE_TULLY
	farjump UnknownScript_0xa0376

UnknownScript_0xbdb2c:
	setflag ENGINE_TULLY_HAS_WATER_STONE
	landmarktotext ROUTE_42, $2
	farjump UnknownScript_0xa05e6

BrentPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_BRENT
	iftrue UnknownScript_0xbdb59
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_BRENT_MONDAY_MORNING
	iftrue UnknownScript_0xbdb55
	checkcode VAR_WEEKDAY
	ifnotequal MONDAY, UnknownScript_0xbdb55
	checktime 1 << MORN
	iftrue UnknownScript_0xbdb88

UnknownScript_0xbdb55:
	farjump UnknownScript_0xa0998

UnknownScript_0xbdb59:
	landmarktotext ROUTE_43, $2
	farjump UnknownScript_0xa0a87

BrentPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbdb95
	checkflag ENGINE_BRENT
	iftrue UnknownScript_0xbdb84
	checkflag ENGINE_BRENT_MONDAY_MORNING
	iftrue UnknownScript_0xbdb84
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbdb8b

UnknownScript_0xbdb84:
	farjump UnknownScript_0xa0000

UnknownScript_0xbdb88:
	setflag ENGINE_BRENT_MONDAY_MORNING

UnknownScript_0xbdb8b:
	landmarktotext ROUTE_43, $2
	setflag ENGINE_BRENT
	farjump UnknownScript_0xa0376

UnknownScript_0xbdb95:
	farjump UnknownScript_0xa07ce

TiffanyPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_TIFFANY
	iftrue UnknownScript_0xbdbc2
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_TIFFANY_TUESDAY_AFTERNOON
	iftrue UnknownScript_0xbdbbe
	checkflag ENGINE_TIFFANY_HAS_PINK_BOW
	iftrue UnknownScript_0xbdbc9
	checkcode VAR_WEEKDAY
	ifnotequal TUESDAY, UnknownScript_0xbdbbe
	checktime 1 << DAY
	iftrue UnknownScript_0xbdc14

UnknownScript_0xbdbbe:
	farjump UnknownScript_0xa09a0

UnknownScript_0xbdbc2:
	landmarktotext ROUTE_43, $2
	farjump UnknownScript_0xa0a8c

UnknownScript_0xbdbc9:
	landmarktotext ROUTE_43, $2
	farjump UnknownScript_0xa0ae5

TiffanyPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_Random4
	ifequal $0, UnknownScript_0xbdc21
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_TIFFANY
	iftrue UnknownScript_0xbdc10
	checkflag ENGINE_TIFFANY_TUESDAY_AFTERNOON
	iftrue UnknownScript_0xbdc10
	checkflag ENGINE_TIFFANY_HAS_PINK_BOW
	iftrue UnknownScript_0xbdc10
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbdc17
;	checkevent EVENT_TIFFANY_GAVE_PINK_BOW
;	iftrue UnknownScript_0xbdc08
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbdc69

UnknownScript_0xbdc08:
	farscall PhoneScript_Random11
	ifequal $0, UnknownScript_0xbdc69

UnknownScript_0xbdc10:
	farjump UnknownScript_0xa0017

UnknownScript_0xbdc14:
	setflag ENGINE_TIFFANY_TUESDAY_AFTERNOON

UnknownScript_0xbdc17:
	landmarktotext ROUTE_43, $2
	setflag ENGINE_TIFFANY
	farjump UnknownScript_0xa037e

UnknownScript_0xbdc21:
	random $6
	ifequal $0, UnknownScript_0xbdc3b
	ifequal $1, UnknownScript_0xbdc42
	ifequal $2, UnknownScript_0xbdc49
	ifequal $3, UnknownScript_0xbdc50
	ifequal $4, UnknownScript_0xbdc57
	ifequal $5, UnknownScript_0xbdc5e

UnknownScript_0xbdc3b:
	stringtotext Phone_GrandmaString, $1
	jump UnknownScript_0xbdc65

UnknownScript_0xbdc42:
	stringtotext Phone_GrandpaString, $1
	jump UnknownScript_0xbdc65

UnknownScript_0xbdc49:
	stringtotext Phone_MomString, $1
	jump UnknownScript_0xbdc65

UnknownScript_0xbdc50:
	stringtotext Phone_DadString, $1
	jump UnknownScript_0xbdc65

UnknownScript_0xbdc57:
	stringtotext Phone_SisterString, $1
	jump UnknownScript_0xbdc65

UnknownScript_0xbdc5e:
	stringtotext Phone_BrotherString, $1
	jump UnknownScript_0xbdc65

UnknownScript_0xbdc65:
	farjump UnknownScript_0xa047f

UnknownScript_0xbdc69:
	setflag ENGINE_TIFFANY_HAS_PINK_BOW
	landmarktotext ROUTE_43, $2
	farjump UnknownScript_0xa061e

; Vance

VancePhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_VANCE
	iftrue UnknownScript_0xbdc96
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_VANCE_WEDNESDAY_NIGHT
	iftrue UnknownScript_0xbdc92
	checkcode VAR_WEEKDAY
	ifnotequal WEDNESDAY, UnknownScript_0xbdc92
	checktime 1 << NITE
	iftrue UnknownScript_0xbdcc1

UnknownScript_0xbdc92:
	farjump UnknownScript_0xa09a8

UnknownScript_0xbdc96:
	landmarktotext ROUTE_44, $2
	farjump UnknownScript_0xa0a91

VancePhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_VANCE
	iftrue UnknownScript_0xbdcbd
	checkflag ENGINE_VANCE_WEDNESDAY_NIGHT
	iftrue UnknownScript_0xbdcbd
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbdcc4
	ifequal $1, UnknownScript_0xbdcc4

UnknownScript_0xbdcbd:
	farjump UnknownScript_0xa0000

UnknownScript_0xbdcc1:
	setflag ENGINE_VANCE_WEDNESDAY_NIGHT

UnknownScript_0xbdcc4:
	landmarktotext ROUTE_44, $2
	setflag ENGINE_VANCE
	farjump UnknownScript_0xa0376

WiltonPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_WILTON
	iftrue UnknownScript_0xbdcf7
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_WILTON_THRUSDAY_MORNING
	iftrue UnknownScript_0xbdcf3
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue UnknownScript_0xbdcfe
	checkcode VAR_WEEKDAY
	ifnotequal THURSDAY, UnknownScript_0xbdcf3
	checktime 1 << MORN
	iftrue UnknownScript_0xbdd33

UnknownScript_0xbdcf3:
	farjump UnknownScript_0xa09b0

UnknownScript_0xbdcf7:
	landmarktotext ROUTE_44, $2
	farjump UnknownScript_0xa0a96

UnknownScript_0xbdcfe:
	landmarktotext ROUTE_44, $2
	farjump UnknownScript_0xa0aed

WiltonPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_WILTON
	iftrue UnknownScript_0xbdd2f
	checkflag ENGINE_WILTON_THRUSDAY_MORNING
	iftrue UnknownScript_0xbdd2f
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue UnknownScript_0xbdd2f
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbdd36
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbdd40

UnknownScript_0xbdd2f:
	farjump UnknownScript_0xa0000

UnknownScript_0xbdd33:
	setflag ENGINE_WILTON_THRUSDAY_MORNING

UnknownScript_0xbdd36:
	landmarktotext ROUTE_44, $2
	setflag ENGINE_WILTON
	farjump UnknownScript_0xa0376

UnknownScript_0xbdd40:
	setflag ENGINE_WILTON_HAS_ITEM
	landmarktotext ROUTE_44, $2
;	clearevent EVENT_WILTON_HAS_ULTRA_BALL
;	clearevent EVENT_WILTON_HAS_GREAT_BALL
;	clearevent EVENT_WILTON_HAS_POKE_BALL
	random $5
	ifequal $0, UnknownScript_0xbdd5e
	random $3
	ifequal $0, UnknownScript_0xbdd64
	jump UnknownScript_0xbdd6a

UnknownScript_0xbdd5e:
;	setevent EVENT_WILTON_HAS_ULTRA_BALL
	jump UnknownScript_0xbdd6d

UnknownScript_0xbdd64:
;	setevent EVENT_WILTON_HAS_GREAT_BALL
	jump UnknownScript_0xbdd6d

UnknownScript_0xbdd6a:
;	setevent EVENT_WILTON_HAS_POKE_BALL

UnknownScript_0xbdd6d:
	farjump UnknownScript_0xa05e6

; Kenji

KenjiPhoneScript1:
	trainertotext 1, 1, $0
	farscall PhoneScript_AnswerPhone_Male
	farjump UnknownScript_0xa09ee

KenjiPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	farjump UnknownScript_0xa064c

; Parry

ParryPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_PARRY
	iftrue UnknownScript_0xbddac
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_PARRY_FRIDAY_AFTERNOON
	iftrue UnknownScript_0xbdda8
	checkcode VAR_WEEKDAY
	ifnotequal FRIDAY, UnknownScript_0xbdda8
	checktime 1 << DAY
	iftrue UnknownScript_0xbddd7

UnknownScript_0xbdda8:
	farjump UnknownScript_0xa09b8

UnknownScript_0xbddac:
	landmarktotext ROUTE_45, $2
	farjump UnknownScript_0xa0a9b

ParryPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_PARRY
	iftrue UnknownScript_0xbddd3
	checkflag ENGINE_PARRY_FRIDAY_AFTERNOON
	iftrue UnknownScript_0xbddd3
	farscall PhoneScript_Random2
	ifequal $0, UnknownScript_0xbddda
	ifequal $1, UnknownScript_0xbddda

UnknownScript_0xbddd3:
	farjump UnknownScript_0xa0000

UnknownScript_0xbddd7:
	setflag ENGINE_PARRY_FRIDAY_AFTERNOON

UnknownScript_0xbddda:
	landmarktotext ROUTE_45, $2
	setflag ENGINE_PARRY
	farjump UnknownScript_0xa0376

; Erin

ErinPhoneScript1:
	trainertotext 1, 1, $0
	checkflag ENGINE_ERIN
	iftrue UnknownScript_0xbde07
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_ERIN_SATURDAY_NIGHT
	iftrue UnknownScript_0xbde03
	checkcode VAR_WEEKDAY
	ifnotequal SATURDAY, UnknownScript_0xbde03
	checktime 1 << NITE
	iftrue UnknownScript_0xbde32

UnknownScript_0xbde03:
	farjump UnknownScript_0xa09c0

UnknownScript_0xbde07:
	landmarktotext ROUTE_46, $2
	farjump UnknownScript_0xa0aa0

ErinPhoneScript2:
	trainertotext 1, 1, $0
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_ERIN
	iftrue UnknownScript_0xbde2e
	checkflag ENGINE_ERIN_SATURDAY_NIGHT
	iftrue UnknownScript_0xbde2e
	farscall PhoneScript_Random3
	ifequal $0, UnknownScript_0xbde35
	ifequal $1, UnknownScript_0xbde35

UnknownScript_0xbde2e:
	farjump UnknownScript_0xa0017

UnknownScript_0xbde32:
	setflag ENGINE_ERIN_SATURDAY_NIGHT

UnknownScript_0xbde35:
	landmarktotext ROUTE_46, $2
	setflag ENGINE_ERIN
	farjump UnknownScript_0xa037e

PhoneScript_Random2:
	random 2
	end

PhoneScript_Random3:
	random 3
	end

PhoneScript_Random4:
	random 4
	end

PhoneScript_Random5:
	random 5
	end

PhoneScript_Random11:
	random 11
	end

PhoneScript_AnswerPhone_Male:
	checktime 1 << DAY
	iftrue PhoneScript_AnswerPhone_Male_Day
	checktime 1 << NITE
	iftrue PhoneScript_AnswerPhone_Male_Nite
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4dc5
	buttonsound
	end
	end

PhoneScript_AnswerPhone_Male_Day:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4ded
	buttonsound
	end

PhoneScript_AnswerPhone_Male_Nite:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4e16
	buttonsound
	end

PhoneScript_AnswerPhone_Female:
	checktime 1 << DAY
	iftrue PhoneScript_AnswerPhone_Female_Day
	checktime 1 << NITE
	iftrue PhoneScript_AnswerPhone_Female_Nite
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4f21
	buttonsound
	end

PhoneScript_AnswerPhone_Female_Day:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4f4d
	buttonsound
	end

PhoneScript_AnswerPhone_Female_Nite:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4f75
	buttonsound
	end

PhoneScript_GreetPhone_Male:
	checktime 1 << DAY
	iftrue PhoneScript_GreetPhone_Male_Day
	checktime 1 << NITE
	iftrue PhoneScript_GreetPhone_Male_Nite
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4e3e
	buttonsound
	end

PhoneScript_GreetPhone_Male_Day:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4e72
	buttonsound
	end

PhoneScript_GreetPhone_Male_Nite:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4e9e
	buttonsound
	end

PhoneScript_GreetPhone_Female:
	checktime 1 << DAY
	iftrue PhoneScript_GreetPhone_Female_Day
	checktime 1 << NITE
	iftrue PhoneScript_GreetPhone_Female_Nite
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4fa1
	buttonsound
	end

PhoneScript_GreetPhone_Female_Day:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4fda
	buttonsound
	end

PhoneScript_GreetPhone_Female_Nite:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b5004
	buttonsound
	end

PhoneScript_Generic_Male:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b4ecd
	buttonsound
	end

PhoneScript_Generic_Female:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1b502b
	buttonsound
	end

PhoneScript_MonFlavorText:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequal $0, .TooEnergetic
	farwritetext UnknownText_0x1b518b
	buttonsound
	farjump PhoneScript_HangupText_Male

.TooEnergetic:
	farwritetext UnknownText_0x1b522b
	buttonsound
	farjump PhoneScript_HangupText_Male
; be643


Phone_GrandmaString: db "Grandma@"
Phone_GrandpaString: db "Grandpa@"
Phone_MomString:     db "Mom@"
Phone_DadString:     db "Dad@"
Phone_SisterString:  db "Sister@"
Phone_BrotherString: db "Brother@"

