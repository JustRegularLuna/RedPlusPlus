StdScripts::
	dba PokeCenterNurseScript
	dba DifficultBookshelfScript
	dba PictureBookshelfScript
	dba MagazineBookshelfScript
	dba TeamRocketOathScript
	dba IncenseBurnerScript
	dba MerchandiseShelfScript
	dba TownMapScript
	dba WindowScript
	dba TVScript
	dba RadioScript
	dba TrashCanScript
	dba StrengthBoulderScript
	dba SmashRockScript
	dba PokeCenterSignScript
	dba MartSignScript
	dba GoldenrodRocketsScript
	dba RadioTowerRocketsScript
	dba ElevatorButtonScript
	dba DayToTextScript
	dba BugContestResultsWarpScript
	dba BugContestResultsScript
	dba InitializeEventsScript
	dba AskNumber1MScript
	dba AskNumber2MScript
	dba RegisteredNumberMScript
	dba NumberAcceptedMScript
	dba NumberDeclinedMScript
	dba PhoneFullMScript
	dba RematchMScript
	dba GiftMScript
	dba PackFullMScript
	dba RematchGiftMScript
	dba AskNumber1FScript
	dba AskNumber2FScript
	dba RegisteredNumberFScript
	dba NumberAcceptedFScript
	dba NumberDeclinedFScript
	dba PhoneFullFScript
	dba RematchFScript
	dba GiftFScript
	dba PackFullFScript
	dba RematchGiftFScript
	dba GymStatue0Script
	dba GymStatue1Script
	dba GymStatue2Script
	dba GymStatue3Script
	dba ReceiveItemScript
	dba PCScript
	dba GameCornerCoinVendorScript
	dba HappinessCheckScript
	dba CutTreeScript
	dba RefrigeratorScript
	dba SinkScript
	dba StoveScript
	dba VendingMachineScript
	dba TreeGrottoScript
	dba CaveGrottoScript
	dba WhirlpoolOWScript

; Assume that the nurse and Chansey/Blissey are always the first two object_events
ANYPOKECENTER_NURSE   EQU 1
ANYPOKECENTER_CHANSEY EQU 2

PokeCenterNurseScript:
	opentext
	checkevent EVENT_NURSE_SAW_FOUR_TRAINER_STARS
	iftrue .four_star_center
	checktime 1 << MORN
	iftrue .morn
	checktime 1 << DAY
	iftrue .day
	checktime 1 << NITE
	iftrue .nite
	jump .ok

.morn
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftrue .morn_center
	checkevent EVENT_WELCOMING_TO_POKECOM_CENTER
	iffalse .morn_center
	farwritetext PokeComNurseMornText
	buttonsound
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	jump .ok
.morn_center
	farwritetext NurseMornText
	buttonsound
	jump .ok

.day
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftrue .day_center
	checkevent EVENT_WELCOMING_TO_POKECOM_CENTER
	iffalse .day_center
	farwritetext PokeComNurseDayText
	buttonsound
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	jump .ok
.day_center
	farwritetext NurseDayText
	buttonsound
	jump .ok

.nite
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftrue .nite_center
	checkevent EVENT_WELCOMING_TO_POKECOM_CENTER
	iffalse .nite_center
	farwritetext PokeComNurseNiteText
	buttonsound
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	jump .ok
.nite_center
	farwritetext NurseNiteText
	buttonsound
	jump .ok

.ok
	checkcode VAR_TRAINER_STARS
	ifnotequal 4, .ask_heal
	farwritetext NurseFourTrainerStarsText
	setevent EVENT_NURSE_SAW_FOUR_TRAINER_STARS
	jump .answer_heal

.ask_heal
	farwritetext NurseAskHealText
.answer_heal
	yesorno
	iffalse .done
	jump .heal_pokemon

.four_star_center
	farwritetext NurseTheUsualText
	yesorno
	iffalse .done
.heal_pokemon
	farwritetext NurseTakePokemonText
	pause 20
	turnobject ANYPOKECENTER_NURSE, LEFT
	turnobject ANYPOKECENTER_CHANSEY, RIGHT
	pause 10
	special HealParty
	special SaveMusic
	playmusic MUSIC_NONE
	writebyte 0 ; Machine is at a Pokemon Center
	special HealMachineAnim
	pause 30
	special RestoreMusic
	turnobject ANYPOKECENTER_NURSE, DOWN
	turnobject ANYPOKECENTER_CHANSEY, DOWN
	pause 10

	checkphonecall ; elm already called about pokerus
	iftrue .no
	checkflag ENGINE_POKERUS ; nurse already talked about pokerus
	iftrue .no
	special SpecialCheckPokerus
	iftrue .pokerus
.no

	farwritetext NurseReturnPokemonText
	pause 20

.done
	farwritetext NurseGoodbyeText

	turnobject ANYPOKECENTER_NURSE, UP ; bowing
	pause 10
	turnobject ANYPOKECENTER_NURSE, DOWN
	turnobject ANYPOKECENTER_CHANSEY, DOWN
	; TODO: ANYPOKECENTER_CHANSEY steps in place
	pause 10

	waitendtext

.pokerus
	; already cleared earlier in the script
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftrue .pokerus_comcenter
	farwritetext NursePokerusText
	waitbutton
	closetext
	jump .pokerus_done

.pokerus_comcenter
	farwritetext PokeComNursePokerusText
	waitbutton
	closetext

.pokerus_done
	setflag ENGINE_POKERUS
	specialphonecall SPECIALCALL_POKERUS
	end

DifficultBookshelfScript:
	farjumptext DifficultBookshelfText

PictureBookshelfScript:
	farjumptext PictureBookshelfText

MagazineBookshelfScript:
	farjumptext MagazineBookshelfText

TeamRocketOathScript:
	farjumptext TeamRocketOathText

IncenseBurnerScript:
	farjumptext IncenseBurnerText

MerchandiseShelfScript:
	farjumptext MerchandiseShelfText

RefrigeratorScript:
	farjumptext RefrigeratorText

SinkScript:
	farjumptext SinkText

StoveScript:
	farjumptext StoveText

TownMapScript:
	opentext
	farwritetext TownMapText
	waitbutton
	special Special_TownMap
	endtext

WindowScript:
	farjumptext WindowText

TVScript:
	checkcode VAR_FACING
	ifnotequal UP, WrongSideScript
	farjumptext TVText

WrongSideScript:
	farjumptext WrongSideText

RadioScript:
	farjumptext RadioOffAirText

TrashCanScript: ; 0xbc1a5
	farjumptext TrashCanText

PCScript:
	checkcode VAR_FACING
	ifnotequal UP, WrongSideScript
	opentext
	special PokemonCenterPC
	endtext

ElevatorButtonScript:
	playsound SFX_READ_TEXT_2
	pause 15
	playsound SFX_ELEVATOR_END
	end

StrengthBoulderScript:
	farjump AskStrengthScript

SmashRockScript:
	farjump AskRockSmashScript

PokeCenterSignScript:
	farjumptext PokeCenterSignText

MartSignScript
	farjumptext MartSignText

DayToTextScript:
	checkcode VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday
	stringtotext .SundayText, 0
	end
.Monday:
	stringtotext .MondayText, 0
	end
.Tuesday:
	stringtotext .TuesdayText, 0
	end
.Wednesday:
	stringtotext .WednesdayText, 0
	end
.Thursday:
	stringtotext .ThursdayText, 0
	end
.Friday:
	stringtotext .FridayText, 0
	end
.Saturday:
	stringtotext .SaturdayText, 0
	end
.SundayText:
	db "Sunday@"
.MondayText:
	db "Monday@"
.TuesdayText:
	db "Tuesday@"
.WednesdayText:
	db "Wednesday@"
.ThursdayText:
	db "Thursday@"
.FridayText:
	db "Friday@"
.SaturdayText:
	db "Saturday@"

GoldenrodRocketsScript:
RadioTowerRocketsScript:
	end

BugContestResultsWarpScript:
	special ClearBGPalettes
	scall BugContestResults_CopyContestantsToResults
	setevent EVENT_ROUTE_36_NATIONAL_PARK_GATE_OFFICER_CONTEST_DAY
	clearevent EVENT_ROUTE_36_NATIONAL_PARK_GATE_OFFICER_NOT_CONTEST_DAY
	setevent EVENT_WARPED_FROM_ROUTE_35_NATIONAL_PARK_GATE
	warp ROUTE_36_NATIONAL_PARK_GATE, $0, $4
	applymovement PLAYER, Movement_ContestResults_WalkAfterWarp
	; fallthrough

BugContestResultsScript:
	clearflag ENGINE_BUG_CONTEST_TIMER
	clearevent EVENT_WARPED_FROM_ROUTE_35_NATIONAL_PARK_GATE
	clearevent EVENT_CONTEST_OFFICER_HAS_PRIZE
	opentext
	farwritetext ContestResults_ReadyToJudgeText
	waitbutton
	special BugContestJudging
	RAM2MEM $0
	ifequal 1, .FirstPlace
	ifequal 2, .SecondPlace
	ifequal 3, .ThirdPlace
	copybytetovar wBugContestOfficerPrize
	itemtotext $0, $1
	farwritetext ContestResults_ConsolationPrizeText
	buttonsound
	waitsfx
	copybytetovar wBugContestOfficerPrize
	verbosegiveitem ITEM_FROM_MEM
	iftrue .GotConsolationPrize
	farwritetext BugContestPrizeNoRoomText
	buttonsound
	setevent EVENT_CONTEST_OFFICER_HAS_PRIZE
.GotConsolationPrize
	farwritetext ContestResults_DidNotWinText
	buttonsound
	jump .FinishUp

.FirstPlace
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
.SecondPlace
.ThirdPlace
	copybytetovar wBugContestOfficerPrize
	itemtotext $0, $1
	farwritetext ContestResults_PlayerWonAPrizeText
	waitbutton
	copybytetovar wBugContestOfficerPrize
	verbosegiveitem ITEM_FROM_MEM
	iftrue .GotWinnersPrize
	farwritetext BugContestPrizeNoRoomText
	buttonsound
	setevent EVENT_CONTEST_OFFICER_HAS_PRIZE
.GotWinnersPrize
	farwritetext ContestResults_JoinUsNextTimeText
	buttonsound
.FinishUp
	checkevent EVENT_LEFT_MONS_WITH_CONTEST_OFFICER
	iffalse .DidNotLeaveMons
	farwritetext ContestResults_ReturnPartyText
	waitbutton
	special ContestReturnMons
.DidNotLeaveMons
	special CheckPartyFullAfterContest
	ifequal $0, .CleanUp
	ifequal $2, .CleanUp
	farwritetext ContestResults_PartyFullText
	waitbutton
.CleanUp
	closetext
	setscene $0
	setmapscene ROUTE_35_NATIONAL_PARK_GATE, $0
	setevent EVENT_BUG_CATCHING_CONTESTANT_1A
	setevent EVENT_BUG_CATCHING_CONTESTANT_2A
	setevent EVENT_BUG_CATCHING_CONTESTANT_3A
	setevent EVENT_BUG_CATCHING_CONTESTANT_4A
	setevent EVENT_BUG_CATCHING_CONTESTANT_5A
	setevent EVENT_BUG_CATCHING_CONTESTANT_6A
	setevent EVENT_BUG_CATCHING_CONTESTANT_7A
	setevent EVENT_BUG_CATCHING_CONTESTANT_8A
	setevent EVENT_BUG_CATCHING_CONTESTANT_9A
	setevent EVENT_BUG_CATCHING_CONTESTANT_10A
	setevent EVENT_BUG_CATCHING_CONTESTANT_1B
	setevent EVENT_BUG_CATCHING_CONTESTANT_2B
	setevent EVENT_BUG_CATCHING_CONTESTANT_3B
	setevent EVENT_BUG_CATCHING_CONTESTANT_4B
	setevent EVENT_BUG_CATCHING_CONTESTANT_5B
	setevent EVENT_BUG_CATCHING_CONTESTANT_6B
	setevent EVENT_BUG_CATCHING_CONTESTANT_7B
	setevent EVENT_BUG_CATCHING_CONTESTANT_8B
	setevent EVENT_BUG_CATCHING_CONTESTANT_9B
	setevent EVENT_BUG_CATCHING_CONTESTANT_10B
	setflag ENGINE_DAILY_BUG_CONTEST
	special PlayMapMusic
	end
; 0xbc31e

BugContestResults_CopyContestantsToResults ; 0xbc380
	checkevent EVENT_BUG_CATCHING_CONTESTANT_1A
	iftrue .skip1
	clearevent EVENT_BUG_CATCHING_CONTESTANT_1B
.skip1
	checkevent EVENT_BUG_CATCHING_CONTESTANT_2A
	iftrue .skip2
	clearevent EVENT_BUG_CATCHING_CONTESTANT_2B
.skip2
	checkevent EVENT_BUG_CATCHING_CONTESTANT_3A
	iftrue .skip3
	clearevent EVENT_BUG_CATCHING_CONTESTANT_3B
.skip3
	checkevent EVENT_BUG_CATCHING_CONTESTANT_4A
	iftrue .skip4
	clearevent EVENT_BUG_CATCHING_CONTESTANT_4B
.skip4
	checkevent EVENT_BUG_CATCHING_CONTESTANT_5A
	iftrue .skip5
	clearevent EVENT_BUG_CATCHING_CONTESTANT_5B
.skip5
	checkevent EVENT_BUG_CATCHING_CONTESTANT_6A
	iftrue .skip6
	clearevent EVENT_BUG_CATCHING_CONTESTANT_6B
.skip6
	checkevent EVENT_BUG_CATCHING_CONTESTANT_7A
	iftrue .skip7
	clearevent EVENT_BUG_CATCHING_CONTESTANT_7B
.skip7
	checkevent EVENT_BUG_CATCHING_CONTESTANT_8A
	iftrue .skip8
	clearevent EVENT_BUG_CATCHING_CONTESTANT_8B
.skip8
	checkevent EVENT_BUG_CATCHING_CONTESTANT_9A
	iftrue .skip9
	clearevent EVENT_BUG_CATCHING_CONTESTANT_9B
.skip9
	checkevent EVENT_BUG_CATCHING_CONTESTANT_10A
	iftrue .skip10
	clearevent EVENT_BUG_CATCHING_CONTESTANT_10B
.skip10
	end

InitializeEventsScript:
; Hidden-By-Default NPC events
	setevent EVENT_HIDE_PALLETTOWN_OAK
	setevent EVENT_HIDE_OAKSLAB_OAK
	setevent EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	setevent EVENT_HIDE_ROUTE_22_RIVAL
	setevent EVENT_HIDE_JESSIE_JAMES_MT_MOON
	setevent EVENT_HIDE_CERULEAN_CITY_JENNY2
; Secret Base Events
	setevent EVENT_SECRET_BASE_ROUTE_2_SOUTH_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_2_NORTH_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_3_TREE_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_3_CAVE_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_4_TREE_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_4_CAVE_ESTABLISHED
	setevent EVENT_SECRET_BASE_MT_MOON_SQUARE_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_6_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_7_ESTABLISHED
	setevent EVENT_SECRET_BASE_CELADON_CITY_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_8_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_9_ESTABLISHED
	setevent EVENT_SECRET_BASE_SAFFRON_CITY_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_10_NORTH_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_10_SOUTH_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_11_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_13_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_15_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_16_TREE_1_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_16_TREE_2_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_16_CAVE_ESTABLISHED
	setevent EVENT_SECRET_BASE_URAGA_CHANNEL_ESTABLISHED
	setevent EVENT_SECRET_BASE_CINNABAR_ISLAND_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_21_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_22_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_24_ESTABLISHED
	setevent EVENT_SECRET_BASE_CERULEAN_CAPE_ESTABLISHED
	setevent EVENT_SECRET_BASE_CHERRYGROVE_CITY_ESTABLISHED
	setevent EVENT_SECRET_BASE_CHERRYGROVE_BAY_ESTABLISHED
	setevent EVENT_SECRET_BASE_VIOLET_OUTSKIRTS_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_32_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_32_COAST_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_33_ESTABLISHED
	setevent EVENT_SECRET_BASE_STORMY_BEACH_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_35_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_36_ESTABLISHED
	setevent EVENT_SECRET_BASE_BELLCHIME_TRAIL_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_39_ESTABLISHED
	setevent EVENT_SECRET_BASE_OLIVINE_CITY_ESTABLISHED
	setevent EVENT_SECRET_BASE_CIANWOOD_CITY_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_47_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_48_ESTABLISHED
	setevent EVENT_SECRET_BASE_YELLOW_FOREST_ESTABLISHED
	setevent EVENT_SECRET_BASE_LAKE_OF_RAGE_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_43_ESTABLISHED
	setevent EVENT_SECRET_BASE_DRAGONS_DEN_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_44_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_27_ESTABLISHED
	setevent EVENT_SECRET_BASE_ROUTE_26_ESTABLISHED
	setevent EVENT_SECRET_BASE_SILVER_CAVE_ESTABLISHED
	setevent EVENT_INITIALIZED_EVENTS
	return

AskNumber1MScript:
	special RandomPhoneMon
	; TODO: checkcode VAR_CALLERID
	farwritetext JackAskNumber1Text
	end

AskNumber2MScript:
	special RandomPhoneMon
	; TODO: checkcode VAR_CALLERID
	farwritetext JackAskNumber2Text
	end

RegisteredNumberMScript:
	farwritetext RegisteredNumber1Text
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	buttonsound
	end

NumberAcceptedMScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext JackNumberAcceptedText
	waitendtext

NumberDeclinedMScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext JackNumberDeclinedText
	waitendtext

PhoneFullMScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext JackPhoneFullText
	waitendtext

RematchMScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext JackRematchText
	waitendtext

GiftMScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext JoseGiftText
	buttonsound
	end

PackFullMScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext HueyPackFullText
	waitendtext

RematchGiftMScript:
	opentext
	; TODO: checkcode VAR_CALLERID
	farwritetext HueyRematchGiftText
	buttonsound
	end

AskNumber1FScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext BeverlyAskNumber1Text
	end

AskNumber2FScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext BeverlyAskNumber2Text
	end

RegisteredNumberFScript:
	farwritetext RegisteredNumber2Text
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	buttonsound
	end

NumberAcceptedFScript: ; 0xbcbd3
	; TODO: checkcode VAR_CALLERID
	farwritetext BeverlyNumberAcceptedText
	waitendtext

NumberDeclinedFScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext BeverlyNumberDeclinedText
	waitendtext

PhoneFullFScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext BeverlyPhoneFullText
	waitendtext

RematchFScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext BethRematchText
	waitendtext

GiftFScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext BeverlyGiftText
	buttonsound
	end

PackFullFScript:
	; TODO: checkcode VAR_CALLERID
	farwritetext BeverlyPackFullText
	waitendtext

RematchGiftFScript:
	; TODO: checkcode VAR_CALLERID
	opentext
	farwritetext ErinRematchGiftText
	buttonsound
	end

GymStatue0Script:
	mapnametotext $0
	opentext
	farwritetext GymStatue_CityGymText
	waitendtext

GymStatue1Script:
	mapnametotext $0
	opentext
	farwritetext GymStatue_CityGymText
	buttonsound
	farwritetext GymStatue_WinningTrainersText
	waitendtext

GymStatue2Script:
	mapnametotext $0
	opentext
	farwritetext GymStatue_CityGymText
	buttonsound
	farwritetext GymStatue_TwoWinningTrainersText
	waitendtext

GymStatue3Script:
	mapnametotext $0
	opentext
	farwritetext GymStatue_CityGymText
	buttonsound
	farwritetext GymStatue_ThreeWinningTrainersText
	waitendtext

ReceiveItemScript: ; 0xbcdb9
	waitsfx
	farwritetext ReceivedItemText
	playsound SFX_ITEM
	waitsfx
	end
; 0xbcdc3

GameCornerCoinVendorScript: ; 0xbcdcd
	faceplayer
	opentext
	farwritetext CoinVendor_WelcomeText
	buttonsound
	checkitem COIN_CASE
	iftrue CoinVendor_IntroScript
	farwritetext CoinVendor_NoCoinCaseText
	waitendtext
; 0xbcde0

CoinVendor_IntroScript: ; 0xbcde0
	farwritetext CoinVendor_IntroText

.loop ; 0xbcde4
	special Special_DisplayMoneyAndCoinBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .Buy50
	ifequal $2, .Buy500
	jump .Cancel
; 0xbcdf7

.Buy50: ; 0xbcdf7
	checkcoins 49950
	ifequal $0, .CoinCaseFull
	checkmoney $0, 1000
	ifequal $2, .NotEnoughMoney
	givecoins 50
	takemoney $0, 1000
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext CoinVendor_Buy50CoinsText
	waitbutton
	jump .loop
; 0xbce1b

.Buy500: ; 0xbce1b
	checkcoins 49500
	ifequal $0, .CoinCaseFull
	checkmoney $0, 10000
	ifequal $2, .NotEnoughMoney
	givecoins 500
	takemoney $0, 10000
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext CoinVendor_Buy500CoinsText
	waitbutton
	jump .loop
; 0xbce3f

.NotEnoughMoney: ; 0xbce3f
	farwritetext CoinVendor_NotEnoughMoneyText
	waitendtext
; 0xbce46

.CoinCaseFull: ; 0xbce46
	farwritetext CoinVendor_CoinCaseFullText
	waitendtext
; 0xbce4d

.Cancel: ; 0xbce4d
	farwritetext CoinVendor_CancelText
	waitendtext
; 0xbce54

.MenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db " 50 :  ¥1000@"
	db "500 : ¥10000@"
	db "Cancel@"
; 0xbce7f


HappinessCheckScript:
	faceplayer
	opentext
	special GetFirstPokemonHappiness
	ifless 50, .Unhappy
	ifless 150, .KindaHappy
	farwritetext HappinessText3
	waitendtext

.KindaHappy:
	farwritetext HappinessText2
	waitendtext

.Unhappy:
	farwritetext HappinessText1
	waitendtext

Movement_ContestResults_WalkAfterWarp: ; bcea1
	step_right
	step_down
	turn_head_up
	step_end
; bcea5

CutTreeScript:
	farjump AskCutTreeScript

VendingMachineScript:
	opentext
	farwritetext VendingMachineText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequal $1, .FreshWater
	ifequal $2, .SodaPop
	ifequal $3, .Lemonade
	endtext

.FreshWater:
	checkmoney $0, 200
	ifequal $2, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney $0, 200
	itemtotext FRESH_WATER, $0
	scall .VendItem
	random $20
	ifnotequal $0, .Start
	giveitem FRESH_WATER
	iffalse .Start
	itemtotext FRESH_WATER, $0
	jump .ExtraItem

.SodaPop:
	checkmoney $0, 300
	ifequal $2, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney $0, 300
	itemtotext SODA_POP, $0
	scall .VendItem
	random $20
	ifnotequal $0, .Start
	giveitem SODA_POP
	iffalse .Start
	itemtotext SODA_POP, $0
	jump .ExtraItem

.Lemonade:
	checkmoney $0, 350
	ifequal $2, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney $0, 350
	itemtotext LEMONADE, $0
	scall .VendItem
	random $20
	ifnotequal $0, .Start
	giveitem LEMONADE
	iffalse .Start
	itemtotext LEMONADE, $0
	jump .ExtraItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	farwritetext VendingMachineClangText
	buttonsound
	itemnotify
	end

.ExtraItem:
	pause 10
	playsound SFX_ENTER_DOOR
	farwritetext VendingMachineScoreText
	buttonsound
	itemnotify
	jump .Start

.NotEnoughMoney:
	farwritetext VendingMachineNoMoneyText
	waitbutton
	jump .Start

.NotEnoughSpace:
	farwritetext VendingMachineNoSpaceText
	waitbutton
	jump .Start

.MenuData:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Fresh Water  ¥200@"
	db "Soda Pop     ¥300@"
	db "Lemonade     ¥350@"
	db "Cancel@"

TreeGrottoScript:
	scall _HiddenGrottoInitScript
	iffalse_endtext
	closetext
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	pause 15
	callasm _HiddenGrottoBackupMap
	warpfacing UP, HIDDEN_TREE_GROTTO, 4, 15
	end

CaveGrottoScript:
	scall _HiddenGrottoInitScript
	iffalse_endtext
	closetext
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	pause 15
	callasm _HiddenGrottoBackupMap
	warpfacing UP, HIDDEN_CAVE_GROTTO, 35, 85
	end

_HiddenGrottoInitScript:
	callasm .StoreCurHiddenGrotto
	opentext
	farwritetext HiddenGrottoText
	yesorno
	end

.StoreCurHiddenGrotto:
	ld a, [CurFruit]
	ld [CurHiddenGrotto], a
	ret

_HiddenGrottoBackupMap:
	ld a, [MapGroup]
	ld [BackupMapGroup], a
	ld a, [MapNumber]
	ld [BackupMapNumber], a
	ret

WhirlpoolOWScript:
	farjumptext UnknownText_0x1c082b
