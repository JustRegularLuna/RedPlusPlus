UnknownScript_0xa0000:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequal 0, UnknownScript_0xa0013
	farscall PhoneScript_Generic_Male
	farjump UnknownScript_0xa003e

UnknownScript_0xa0013:
	farjump UnknownScript_0xa002e

UnknownScript_0xa0017:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequal 0, UnknownScript_0xa002a
	farscall PhoneScript_Generic_Female
	farjump UnknownScript_0xa0055

UnknownScript_0xa002a:
	farjump UnknownScript_0xa0036

UnknownScript_0xa002e:
	farscall UnknownScript_0xa007c
	farjump UnknownScript_0xa003e

UnknownScript_0xa0036:
	farscall UnknownScript_0xa0128
	farjump UnknownScript_0xa0055

UnknownScript_0xa003e:
	special RandomPhoneWildMon
	farscall PhoneScript_Random2
	ifequal 0, UnknownScript_0xa0051
	farscall UnknownScript_0xa017a
	farjump PhoneScript_HangupText_Male

UnknownScript_0xa0051:
	farjump UnknownScript_0xa006c

UnknownScript_0xa0055:
	special RandomPhoneWildMon
	farscall PhoneScript_Random2
	ifequal 0, UnknownScript_0xa0068
	farscall UnknownScript_0xa0226
	farjump PhoneScript_HangupText_Female

UnknownScript_0xa0068:
	farjump UnknownScript_0xa0074

UnknownScript_0xa006c:
	farscall UnknownScript_0xa0278
	farjump PhoneScript_HangupText_Male

UnknownScript_0xa0074:
	farscall UnknownScript_0xa0324
	farjump PhoneScript_HangupText_Female

UnknownScript_0xa007c:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1740c0
	buttonsound
	end

UnknownScript_0xa0128:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x174688
	buttonsound
	end

UnknownScript_0xa017a:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x174106
	buttonsound
	end

UnknownScript_0xa0226:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1746c3
	buttonsound
	end

UnknownScript_0xa0278:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x174165
	buttonsound
	end

UnknownScript_0xa0324:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x174734
	buttonsound
	end

UnknownScript_0xa0376:
	farscall PhoneScript_RematchText_Male
	farjump PhoneScript_HangupText_Male

UnknownScript_0xa037e:
	farscall PhoneScript_RematchText_Female
	farjump PhoneScript_HangupText_Female

PhoneScript_RematchText_Male:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1741e1
	buttonsound
	end

PhoneScript_RematchText_Female:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x174e4e
	buttonsound
	end

UnknownScript_0xa047a:
	farwritetext UnknownText_0x1761a7
	end

UnknownScript_0xa047f:
	farwritetext UnknownText_0x66796
	end

PhoneScript_HangupText_Male:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x174251
	end

PhoneScript_HangupText_Female:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1747ac
	end

UnknownScript_0xa0584:
	scall UnknownScript_0xa05a0
	iffalse UnknownScript_0xa058e
	farjump UnknownScript_0xa0000

UnknownScript_0xa058e:
	farjump PhoneScript_HangupText_Male

UnknownScript_0xa0592:
	scall UnknownScript_0xa05a0
	iffalse UnknownScript_0xa059c
	farjump UnknownScript_0xa0017

UnknownScript_0xa059c:
	farjump PhoneScript_HangupText_Female

UnknownScript_0xa05a0:
	special RandomPhoneRareWildMon
	end

UnknownScript_0xa05a4:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1759f7
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa05be:
	farwritetext UnknownText_0x64032
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa05c6:
	farwritetext UnknownText_0x177378
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa05ce:
	farwritetext UnknownText_0x64b5f
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa05d6:
	farwritetext UnknownText_0x175dd9
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa05de:
	farwritetext UnknownText_0x176c61
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa05e6:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x175116
	end

UnknownScript_0xa061e:
	; TODO: checkcode VAR_CALLERID
	farwritetext UnknownText_0x1747cc
	end

UnknownScript_0xa0644:
	farwritetext UnknownText_0x176feb
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa064c:
	farwritetext UnknownText_0x66dc5
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0654:
	random 11
	ifequal  0, UnknownScript_0xa0682
	ifequal  1, UnknownScript_0xa068a
	ifequal  2, UnknownScript_0xa0692
	ifequal  3, UnknownScript_0xa069a
	ifequal  4, UnknownScript_0xa06a2
	ifequal  5, UnknownScript_0xa06aa
	ifequal  6, UnknownScript_0xa06b2
	ifequal  7, UnknownScript_0xa06ba
	ifequal  8, UnknownScript_0xa06c2
	ifequal  9, UnknownScript_0xa06ca
	ifequal 10, UnknownScript_0xa06d2

UnknownScript_0xa0682:
	farwritetext UnknownText_0x174261
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa068a:
	farwritetext UnknownText_0x17429d
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0692:
	farwritetext UnknownText_0x1742ee
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa069a:
	farwritetext UnknownText_0x174340
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06a2:
	farwritetext UnknownText_0x174391
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06aa:
	farwritetext UnknownText_0x1743e3
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06b2:
	farwritetext UnknownText_0x174433
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06ba:
	farwritetext UnknownText_0x174485
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06c2:
	farwritetext UnknownText_0x1744d6
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06ca:
	farwritetext UnknownText_0x174522
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06d2:
	farwritetext UnknownText_0x174571
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa06da:
	random 10
	ifequal 0, UnknownScript_0xa0704
	ifequal 1, UnknownScript_0xa070c
	ifequal 2, UnknownScript_0xa0714
	ifequal 3, UnknownScript_0xa071c
	ifequal 4, UnknownScript_0xa0724
	ifequal 5, UnknownScript_0xa072c
	ifequal 6, UnknownScript_0xa0734
	ifequal 7, UnknownScript_0xa073c
	ifequal 8, UnknownScript_0xa0744
	ifequal 9, UnknownScript_0xa074c

UnknownScript_0xa0704:
	farwritetext UnknownText_0x176223
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa070c:
	farwritetext UnknownText_0x1762c3
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0714:
	farwritetext UnknownText_0x17638a
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa071c:
	farwritetext UnknownText_0x176424
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0724:
	farwritetext UnknownText_0x1764eb
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa072c:
	farwritetext UnknownText_0x176599
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0734:
	farwritetext UnknownText_0x1766ac
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa073c:
	farwritetext UnknownText_0x17674f
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0744:
	farwritetext UnknownText_0x176816
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa074c:
	farwritetext UnknownText_0x17686d
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0754:
	random 10
	ifequal 0, UnknownScript_0xa077e
	ifequal 1, UnknownScript_0xa0786
	ifequal 2, UnknownScript_0xa078e
	ifequal 3, UnknownScript_0xa0796
	ifequal 4, UnknownScript_0xa079e
	ifequal 5, UnknownScript_0xa07a6
	ifequal 6, UnknownScript_0xa07ae
	ifequal 7, UnknownScript_0xa07b6
	ifequal 8, UnknownScript_0xa07be
	ifequal 9, UnknownScript_0xa07c6

UnknownScript_0xa077e:
	farwritetext UnknownText_0x65481
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0786:
	farwritetext UnknownText_0x654ea
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa078e:
	farwritetext UnknownText_0x65555
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0796:
	farwritetext UnknownText_0x655c7
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa079e:
	farwritetext UnknownText_0x65628
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa07a6:
	farwritetext UnknownText_0x6569b
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa07ae:
	farwritetext UnknownText_0x6574a
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa07b6:
	farwritetext UnknownText_0x65810
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa07be:
	farwritetext UnknownText_0x658c6
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa07c6:
	farwritetext UnknownText_0x65969
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa07ce:
	random 10
	ifequal 0, UnknownScript_0xa07f8
	ifequal 1, UnknownScript_0xa0800
	ifequal 2, UnknownScript_0xa0808
	ifequal 3, UnknownScript_0xa0810
	ifequal 4, UnknownScript_0xa0818
	ifequal 5, UnknownScript_0xa0820
	ifequal 6, UnknownScript_0xa0828
	ifequal 7, UnknownScript_0xa0830
	ifequal 8, UnknownScript_0xa0838
	ifequal 9, UnknownScript_0xa0840

UnknownScript_0xa07f8:
	farwritetext UnknownText_0x662bc
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0800:
	farwritetext UnknownText_0x662fc
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0808:
	farwritetext UnknownText_0x66335
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0810:
	farwritetext UnknownText_0x66366
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0818:
	farwritetext UnknownText_0x663a1
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0820:
	farwritetext UnknownText_0x663e6
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0828:
	farwritetext UnknownText_0x66421
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0830:
	farwritetext UnknownText_0x6645f
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0838:
	farwritetext UnknownText_0x6649b
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0840:
	farwritetext UnknownText_0x664dd
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0848:
	farwritetext UnknownText_0x646a3
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0898:
	farwritetext UnknownText_0x64099
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08a0:
	farwritetext UnknownText_0x640e6
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08a8:
	farwritetext UnknownText_0x6416d
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08b0:
	farwritetext UnknownText_0x641e8
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08b8:
	farwritetext UnknownText_0x64247
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08c0:
	farwritetext UnknownText_0x642bb
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08c8:
	farwritetext UnknownText_0x643d4
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08d0:
	farwritetext UnknownText_0x64448
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08d8:
	farwritetext UnknownText_0x6455b
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08e0:
	farwritetext UnknownText_0x645ff
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08e8:
	farwritetext UnknownText_0x646df
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08f0:
	farwritetext UnknownText_0x647d8
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa08f8:
	farwritetext UnknownText_0x1745c2
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0900:
	farwritetext UnknownText_0x17485b
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0908:
	farwritetext UnknownText_0x17496b
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0910:
	farwritetext UnknownText_0x174c29
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0918:
	farwritetext UnknownText_0x174ec5
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0920:
	farwritetext UnknownText_0x17519b
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0928:
	farwritetext UnknownText_0x17549b
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0930:
	farwritetext UnknownText_0x17571d
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0938:
	farwritetext UnknownText_0x175abe
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0940:
	farwritetext UnknownText_0x175eaf
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0948:
	farwritetext UnknownText_0x1768b0
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0950:
	farwritetext UnknownText_0x176d32
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0958:
	farwritetext UnknownText_0x1770fb
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0960:
	farwritetext UnknownText_0x177465
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0968:
	farwritetext UnknownText_0x64bc6
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0970:
	farwritetext UnknownText_0x64e90
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0978:
	farwritetext UnknownText_0x65161
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0980:
	farwritetext UnknownText_0x65a23
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0988:
	farwritetext UnknownText_0x65d5c
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0990:
	farwritetext UnknownText_0x65ff2
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0998:
	farwritetext UnknownText_0x6651e
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa09a0:
	farwritetext UnknownText_0x66882
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa09a8:
	farwritetext UnknownText_0x66aa5
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa09b0:
	farwritetext UnknownText_0x66ca7
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa09b8:
	farwritetext UnknownText_0x67106
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa09c0:
	farwritetext UnknownText_0x67294
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa09c8:
	random 3
	ifequal 0, UnknownScript_0xa09d6
	ifequal 1, UnknownScript_0xa09de
	ifequal 2, UnknownScript_0xa09e6

UnknownScript_0xa09d6:
	farwritetext UnknownText_0x64846
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa09de:
	farwritetext UnknownText_0x64881
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa09e6:
	farwritetext UnknownText_0x648dc
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa09ee:
	checkcode VAR_KENJI_BREAK
	ifequal 2, UnknownScript_0xa0a00
	ifequal 1, UnknownScript_0xa0a08
	farwritetext UnknownText_0x66e17
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0a00:
	farwritetext UnknownText_0x66e67
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0a08:
	checktime 1 << MORN
	iftrue UnknownScript_0xa0a1d
	checktime 1 << NITE
	iftrue UnknownScript_0xa0a25
;	setevent EVENT_KENJI_ON_BREAK
	farwritetext UnknownText_0x66f11
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0a1d:
	farwritetext UnknownText_0x66ed3
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0a25:
	farwritetext UnknownText_0x66f52
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0a2d:
	farwritetext UnknownText_0x174638
	end

UnknownScript_0xa0a32:
	farwritetext UnknownText_0x1749c7
	end

UnknownScript_0xa0a37:
	farwritetext UnknownText_0x174c49
	end

UnknownScript_0xa0a3c:
	farwritetext UnknownText_0x174ee2
	end

UnknownScript_0xa0a41:
	farwritetext UnknownText_0x17520a
	end

UnknownScript_0xa0a46:
	farwritetext UnknownText_0x1754e5
	end

UnknownScript_0xa0a4b:
	farwritetext UnknownText_0x175786
	end

UnknownScript_0xa0a50:
	farwritetext UnknownText_0x175b1e
	end

UnknownScript_0xa0a55:
	farwritetext UnknownText_0x175f11
	end

UnknownScript_0xa0a5a:
	farwritetext UnknownText_0x1769da
	end

UnknownScript_0xa0a5f:
	farwritetext UnknownText_0x176d85
	end

UnknownScript_0xa0a64:
	farwritetext UnknownText_0x177138
	end

UnknownScript_0xa0a69:
	farwritetext UnknownText_0x1774c1
	end

UnknownScript_0xa0a6e:
	farwritetext UnknownText_0x64c13
	end

UnknownScript_0xa0a73:
	farwritetext UnknownText_0x64ed4
	end

UnknownScript_0xa0a78:
	farwritetext UnknownText_0x651bf
	end

UnknownScript_0xa0a7d:
	farwritetext UnknownText_0x65a63
	end

UnknownScript_0xa0a82:
	farwritetext UnknownText_0x66043
	end

UnknownScript_0xa0a87:
	farwritetext UnknownText_0x66579
	end

UnknownScript_0xa0a8c:
	farwritetext UnknownText_0x668a3
	end

UnknownScript_0xa0a91:
	farwritetext UnknownText_0x66ad1
	end

UnknownScript_0xa0a96:
	farwritetext UnknownText_0x66cf7
	end

UnknownScript_0xa0a9b:
	farwritetext UnknownText_0x6712a
	end

UnknownScript_0xa0aa0:
	farwritetext UnknownText_0x672d5
	end

UnknownScript_0xa0aa5:
	farwritetext UnknownText_0x174895
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0ab5:
	farwritetext UnknownText_0x175b6d
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0abd:
	farwritetext UnknownText_0x17750e
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0ac5:
	farwritetext UnknownText_0x64f1a
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0acd:
	farwritetext UnknownText_0x6520f
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0ad5:
	farwritetext UnknownText_0x65da6
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0add:
	farwritetext UnknownText_0x66087
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0ae5:
	farwritetext UnknownText_0x6691d
	buttonsound
	jump PhoneScript_HangupText_Female

UnknownScript_0xa0aed:
	farwritetext UnknownText_0x66d45
	buttonsound
	jump PhoneScript_HangupText_Male

UnknownScript_0xa0af5:
	farwritetext UnknownText_0x175f70
	end

UnknownScript_0xa0afa:
	farwritetext UnknownText_0x176dd1
	end

UnknownScript_0xa0aff:
	farwritetext UnknownText_0x64c5a
	end

UnknownScript_0xa0b04:
	farwritetext UnknownText_0x17717c
	end

BikeShopPhoneScript:
	farwritetext UnknownText_0x174000
	clearflag ENGINE_BIKE_SHOP_CALL_ENABLED
	specialphonecall SPECIALCALL_NONE
	end
