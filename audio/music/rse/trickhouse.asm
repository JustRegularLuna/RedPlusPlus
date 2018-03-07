; Pokémon R/S/E - Trick House
; Demixed by Mmmmmm
; https://pastebin.com/piVzd8wS
; https://soundcloud.com/mmmmmmmmmmmmmmmmm-1/trick-house-gbc-8-bit

Music_TrickHouseRSE:
	musicheader 4, 1, Music_TrickHouseRSE_Ch1
	musicheader 1, 2, Music_TrickHouseRSE_Ch2
	musicheader 1, 3, Music_TrickHouseRSE_Ch3
	musicheader 1, 4, Music_TrickHouseRSE_Ch4

Music_TrickHouseRSE_Ch1:
	dutycycle 3
	vibrato $12, $15
	tone $0001
	tempo 140
	notetype $6, $50
	octave 3
	note A#, 8
	note B_, 8
	octave 4
	note C_, 8
	note C#, 8
Music_TrickHouseRSE_Ch1_loop_main:
	dutycycle 2
	intensity $51
	callchannel Music_TrickHouseRSE_Ch2_branch_1
	callchannel Music_TrickHouseRSE_Ch2_branch_1
	dutycycle 3
	intensity $67
	octave 4
	note F#, 2
	note G#, 2
	note A_, 2
	note A#, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note A#, 2
	intensity $51
	dutycycle 2
	callchannel Music_TrickHouseRSE_Ch2_branch_1
	callchannel Music_TrickHouseRSE_Ch2_branch_1
	dutycycle 3
	intensity $67
	octave 4
	note F#, 2
	note G#, 2
	note A_, 2
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note A#, 2
	note G#, 2
	note F#, 2
	dutycycle 2
	intensity $63
	note A#, 8
	note G#, 8
	note G#, 8
	note F#, 4
	note F_, 4
	dutycycle 3
	intensity $93
	octave 3
	note G#, 2
	note F_, 4
	note G#, 2
	octave 4
	note G#, 4
	octave 5
	note G#, 6 ;;
	octave 2
	note C#, 4
	note C#, 2
	octave 1
	note C#, 2
	note C#, 2
	octave 2
	note C#, 4 ;
	octave 5
	dutycycle 2
	intensity $91
Music_TrickHouseRSE_Ch1_loop_0:
	note C#, 2
	note D#, 2
	note E_, 2
	note F_, 2
	loopchannel 6, Music_TrickHouseRSE_Ch1_loop_0
	octave 6
	intensity $92
	note C#, 4
	note C#, 4
	note C#, 4
	note C#, 4
	dutycycle 3
	intensity $63
	octave 4
	note F_, 8
	note D#, 8
	note C#, 8
	octave 3
	note B_, 4
	note A#, 4
	intensity $60
	octave 4
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	octave 5
	note C#, 8
	octave 4
	note A#, 1
	note F#, 1
	note C#, 1
	note A#, 1
	intensity $63
	octave 3
	note A#, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note C#, 2
	note F#, 2
	note A#, 2
	octave 4
	note C#, 2
	intensity $71
	dutycycle 2
Music_TrickHouseRSE_Ch1_loop_1:
	octave 4
	note G#, 2
	note F#, 2
	note C#, 2
	octave 3
	note A#, 2 ;
	loopchannel 4, Music_TrickHouseRSE_Ch1_loop_1
	note G#, 2
	note F#, 2
	note C#, 2
	octave 3
	note A#, 2 ;;
	octave 4
	note F#, 2
	note C#, 2
	octave 3
	note A#, 2
	note F#, 2 ;;
	note A#, 2
	octave 4
	note C#, 2
	note F#, 2
	note G#, 2 ;;
	octave 5
	note C#, 2
	octave 4
	note G#, 2
	note F#, 2
	note C#, 2 ;;
	note F#, 2
	note C#, 4
	note C#, 2
	note F_, 2
	note C#, 4
	note C#, 2
	note A#, 2
	note F#, 4
	note F#, 2
	octave 5
	note D#, 4
	note C#, 4 ;;
	dutycycle 3
	intensity $63
	octave 5
	note C#, 2
	note C#, 2
	note C_, 2
	note C#, 4
	octave 4
	note G#, 2
	note A#, 2
	note G#, 2
	octave 5
	note C#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note F_, 2
	intensity $63
	note E_, 1
	intensity $53
	note D#, 1
	intensity $43
	note C#, 1
	octave 4
	intensity $33
	note B_, 3
	dutycycle 0
	intensity $60
	octave 5
Music_TrickHouseRSE_Ch1_loop_2:
	note C#, 2
	note D#, 2
	loopchannel 13, Music_TrickHouseRSE_Ch1_loop_2
	note F_, 2
	note D#, 2
	note C#, 2
	octave 4
	note B_, 2
	note A#, 2
	note G#, 2
	intensity $82
	octave 3
	note C#, 4
	octave 2
	note C#, 4
	note B_, 4
	note C#, 4
	note A#, 4
	note C#, 4
	note G#, 4
	note C#, 6
	dutycycle 0
	octave 3
	note A#, 2
	note A_, 2
	note A#, 2
	octave 4
	note C_, 2
	note C#, 2
	note D#, 2
	note F_, 4
	note F#, 2
	note F_, 2
	note F#, 2
	note C#, 1
	note D#, 1
	note F_, 1
	note F#, 1
	note G#, 1
	note A#, 1
	note B_, 1
	octave 5
	note C#, 1
	dutycycle 2
	intensity $91
	octave 4
Music_TrickHouseRSE_Ch1_loop_3:
	note D#, 2
	note F#, 2
	note A#, 2
	note B_, 2
	loopchannel 3, Music_TrickHouseRSE_Ch1_loop_3
	octave 5
	note D#, 2
	octave 4
	note B_, 2
	note F#, 2
	note B_, 2
Music_TrickHouseRSE_Ch1_loop_4:
	octave 4
	note C#, 2
	note F_, 2
	note A#, 2
	octave 5
	note C#, 2
	loopchannel 3, Music_TrickHouseRSE_Ch1_loop_4
	note F_, 2
	note C#, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
Music_TrickHouseRSE_Ch1_loop_5:
	note D#, 2
	note F_, 2
	note G#, 2
	note B_, 2
	loopchannel 3, Music_TrickHouseRSE_Ch1_loop_5
	octave 5
	note D#, 2
	octave 4
	note B_, 2
	note G#, 2
	note B_, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	note F#, 2
	note A#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note F#, 2
	note B_, 2
	note C_, 2
	note F#, 2
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
	octave 4
	note A#, 2
	note F#, 2
	note A#, 2
Music_TrickHouseRSE_Ch1_loop_6:
	octave 4
	note D#, 2
	note F#, 2
	note B_, 2
	octave 5
	note D#, 2
	loopchannel 3, Music_TrickHouseRSE_Ch1_loop_6
	note F#, 2
	note D#, 2
	octave 4
	note B_, 2
	octave 5
	note D#, 2 ;;
	octave 4
	note F#, 2
	note A#, 2
	octave 5
	note C#, 2
	note F_, 2
	octave 4
	note E_, 2
	note G#, 2
	note B_, 2
	octave 5
	note D#, 2
	octave 4
	note D#, 2
	note G_, 2
	note A#, 2
	octave 5
	note C#, 2
	note D#, 2
	note C#, 2
	octave 4
	note A#, 2
	note G_, 2 ;;
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	note A#, 2
	note B_, 2
	octave 5
	note D#, 2
	octave 4
	note B_, 2
	note F#, 2
	note B_, 2 ;;
	note D#, 2
	note F#, 2
	note B_, 2
	octave 5
	note C#, 2
	note F_, 2
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 2 ;;
	octave 4
	note A#, 2
	note F#, 2
	note A#, 4
	note F#, 2
	note G#, 4
	note F#, 2
	note A#, 8
	note A#, 4
	note C#, 2
	note F_, 2
	loopchannel 0, Music_TrickHouseRSE_Ch1_loop_main

Music_TrickHouseRSE_Ch2:
	dutycycle 2
	vibrato $12, $15
	tone $0001
	notetype $6, $91
Music_TrickHouseRSE_Ch2_loop_1:
	octave 4
	note A#, 1
	note F#, 1
	loopchannel 4, Music_TrickHouseRSE_Ch2_loop_1
Music_TrickHouseRSE_Ch2_loop_2:
	note B_, 1
	note G#, 1
	loopchannel 4, Music_TrickHouseRSE_Ch2_loop_2
Music_TrickHouseRSE_Ch2_loop_3:
	octave 5
	note C_, 1
	octave 4
	note A_, 1
	loopchannel 4, Music_TrickHouseRSE_Ch2_loop_3
Music_TrickHouseRSE_Ch2_loop_4:
	octave 5
	note C#, 1
	octave 4
	note A#, 1
	loopchannel 4, Music_TrickHouseRSE_Ch2_loop_4
Music_TrickHouseRSE_Ch2_loop_main:
	dutycycle 2
	intensity $91
Music_TrickHouseRSE_Ch2_loop_5:
	callchannel Music_TrickHouseRSE_Ch2_branch_1
	loopchannel 7, Music_TrickHouseRSE_Ch2_loop_5
	callchannel Music_TrickHouseRSE_Ch2_branch_2
	octave 5
	note C#, 8
	octave 4
	note B_, 8
	note B_, 8
	note A#, 4
	note G#, 4 ;;
	dutycycle 0
	intensity $93
	note C#, 2
	octave 3
	note G#, 4
	octave 4
	note C#, 2
	octave 5
	note C#, 4
	octave 6
	note C#, 4 ;;
	octave 3
	note C#, 2
	octave 4
	note C#, 4
	octave 3
	note C#, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 3
	note C#, 4 ;
	dutycycle 2
	intensity $91
	octave 4
Music_TrickHouseRSE_Ch2_loop_6:
	callchannel Music_TrickHouseRSE_Ch2_branch_3
	loopchannel 7, Music_TrickHouseRSE_Ch2_loop_6
	callchannel Music_TrickHouseRSE_Ch2_branch_4
	octave 5
	note C#, 8
	octave 4
	note B_, 8
	note A#, 8
	note G#, 4
	note F#, 4
	intensity $80
	note A#, 1
	note B_, 1
	octave 5
	note C_, 1
	note C#, 1
	note F#, 8
	note C#, 1
	octave 4
	note A#, 1
	note F#, 1
	note C#, 1
	intensity $93
	dutycycle 0
	note F#, 2
	note F#, 2
	note F_, 2
	note F#, 2
	note A#, 2
	note B_, 2
	octave 5
	note C#, 2
	note F#, 2
	intensity $91
	dutycycle 2
Music_TrickHouseRSE_Ch2_loop_7:
	callchannel Music_TrickHouseRSE_Ch2_branch_1
	loopchannel 7, Music_TrickHouseRSE_Ch2_loop_7
	callchannel Music_TrickHouseRSE_Ch2_branch_2
	octave 5
	note C#, 2
	octave 4
	note F#, 4
	note F#, 2
	note B_, 2
	note F#, 4
	note F#, 2
	octave 5
	note F#, 2
	note C#, 4
	note C#, 2
	note A#, 4
	note G#, 4
	dutycycle 0
	intensity $93
	note F_, 2
	note F_, 2
	note E_, 2
	note F_, 4
	note C#, 2
	note D#, 2
	note C#, 2
	note F_, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note G#, 2
	intensity $83
	note G_, 1
	intensity $73
	note F#, 1
	intensity $63
	note E_, 1
	intensity $53
	note D_, 3
	octave 4
	dutycycle 2
	intensity $91
Music_TrickHouseRSE_Ch2_loop_8:
	callchannel Music_TrickHouseRSE_Ch2_branch_3
	loopchannel 7, Music_TrickHouseRSE_Ch2_loop_8
	callchannel Music_TrickHouseRSE_Ch2_branch_4
	intensity $92
	octave 5
	note C#, 8
	octave 4
	note B_, 8
	note A#, 8
	note G#, 10
	intensity $92
	note C#, 2
	note C_, 2
	note C#, 2
	note D#, 2
	note F_, 2
	note F#, 2
	note G#, 4
	note A#, 2
	note A_, 2
	note A#, 2
	note F#, 1
	note G#, 1
	note A#, 1
	note B_, 1
	octave 5
	note C#, 1
	note D#, 1
	note F_, 1
	note F#, 1
	dutycycle 3
	octave 5
	intensity $90
	note D#, 4
	intensity $97
	note D#, 8
	intensity $92
	note D#, 2
	note F_, 2
	note G#, 2
	note F#, 4
	note F_, 2
	note D#, 2
	note F_, 2
	octave 4
	note F#, 2
	note A#, 2
	octave 5
	intensity $90
	note C#, 4
	intensity $97
	note C#, 8
	intensity $92
	note C#, 2
	note D#, 2
	note F#, 2
	note F_, 4
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 4
	octave 4
	note G#, 2
	intensity $90
	note B_, 4
	intensity $97
	note B_, 8
	intensity $92
	note B_, 2
	octave 5
	note C#, 2
	note F_, 2
	note D#, 4
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 4
	octave 4
	note G#, 2
	intensity $97
	note A#, 8
	note B_, 8
	octave 5
	note C_, 8
	note C#, 8
	intensity $90
	note D#, 4
	intensity $97
	note D#, 8
	intensity $92
	note D#, 2
	note F_, 2
	note G#, 2
	note F#, 4
	note F_, 2
	note D#, 2
	note F_, 4
	note F#, 2
	intensity $90
	note A#, 4
	intensity $97
	note A#, 6
	intensity $92
	note B_, 2
	note A#, 6
	intensity $97
	note G_, 6
	note D#, 8
	intensity $92
	note F#, 6
	note D#, 6
	note F#, 4
	note F_, 4
	note F#, 4
	note A#, 4
	note G#, 4
	note F#, 4
	note F#, 4
	note C#, 2
	note D#, 4
	note C#, 2
	note F#, 8
	note F#, 8
	loopchannel 0, Music_TrickHouseRSE_Ch2_loop_main

Music_TrickHouseRSE_Ch2_branch_1:
	octave 4
	note A#, 2
	note B_, 2
	octave 5
	note C_, 2
	note C#, 2
	endchannel

Music_TrickHouseRSE_Ch2_branch_2:
	note F#, 2
	note C#, 2
	octave 4
	note B_, 2
	note A#, 2
	endchannel

Music_TrickHouseRSE_Ch2_branch_3:
	note G#, 2
	note A_, 2
	note A#, 2
	note B_, 2
	endchannel

Music_TrickHouseRSE_Ch2_branch_4:
	octave 5
	note F_, 2
	note C#, 2
	octave 4
	note B_, 2
	note G#, 2
	endchannel

Music_TrickHouseRSE_Ch3:
	notetype $6, $26
	octave 3
	note C#, 8
	octave 2
	note B_, 8
	note G#, 8
	note C#, 8
Music_TrickHouseRSE_Ch3_loop:
	callchannel Music_TrickHouseRSE_Ch3_branch_1
	callchannel Music_TrickHouseRSE_Ch3_branch_1
	callchannel Music_TrickHouseRSE_Ch3_branch_1
	callchannel Music_TrickHouseRSE_Ch3_branch_2
	callchannel Music_TrickHouseRSE_Ch3_branch_2
	callchannel Music_TrickHouseRSE_Ch3_branch_2
	note C#, 1
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note F_, 4
	note G#, 4
	note C#, 1
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note B_, 4
	note F_, 4 ;;
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	note A#, 4
	octave 3
	note C#, 4
	octave 2
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note F_, 4
	note F#, 4
	octave 2
	callchannel Music_TrickHouseRSE_Ch3_branch_1
	callchannel Music_TrickHouseRSE_Ch3_branch_1
	callchannel Music_TrickHouseRSE_Ch3_branch_1
	callchannel Music_TrickHouseRSE_Ch3_branch_2
	callchannel Music_TrickHouseRSE_Ch3_branch_2
	callchannel Music_TrickHouseRSE_Ch3_branch_2
	note C#, 1
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note F_, 4
	note G#, 4
	note C#, 1
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note A#, 4
	note G#, 4 ;;
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	note A#, 4
	octave 3
	note C#, 4
	octave 2
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note G#, 4
	note F#, 4 ;;
	callchannel Music_TrickHouseRSE_Ch3_branch_3
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	note A#, 4
	octave 3
	note C#, 4
	octave 2
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note F_, 4
	note C#, 4 ;;
	octave 2
	note F_, 1
	note __, 1
	note F_, 3
	note __, 1
	note F_, 1
	note __, 1
	note G#, 4
	note B_, 4
	note F_, 1
	note __, 1
	note F_, 3
	note __, 1
	note F_, 1
	note __, 1
	octave 3
	note F_, 4
	octave 2
	note B_, 4 ;;
	note F#, 4
	note A#, 4
	note F#, 1
	note __, 1
	note B_, 4
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note C_, 4
	octave 2
	note F#, 4
	octave 3
	note C#, 4 ;;
	callchannel Music_TrickHouseRSE_Ch3_branch_3
	note F#, 1
	note __, 1
	note A#, 4
	octave 3
	note C#, 1
	note __, 1
	octave 2
	note E_, 1
	note __, 1
	note G#, 1
	note __, 1
	note B_, 4
	note D#, 1
	note __, 1
	note G_, 4
	note A#, 1
	note __, 1
	octave 3
	note D#, 4
	octave 2
	note A#, 4
	note G#, 1
	note __, 1
	note G#, 3
	note __, 1
	note G#, 1
	note __, 1
	note B_, 4
	octave 3
	note D#, 4
	octave 2
	note G#, 1
	note __, 1
	octave 3
	note D#, 4
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note F_, 4
	octave 2
	note B_, 4
	note F#, 4
	note F#, 4
	note C#, 1
	note __, 1
	note D#, 4
	note C#, 1
	note __, 1
	note F#, 2
	note __, 6
	note F#, 2
	note __, 6
	loopchannel 0, Music_TrickHouseRSE_Ch3_loop

Music_TrickHouseRSE_Ch3_branch_1:
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	note A#, 4
	octave 3
	note C#, 4
	octave 2
	note F#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note D#, 4
	note C#, 4
	octave 2
	endchannel

Music_TrickHouseRSE_Ch3_branch_2:
	note C#, 1
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note A#, 4
	note B_, 4
	note C#, 1
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	octave 3
	note D#, 4
	note C#, 4
	octave 2
	endchannel

Music_TrickHouseRSE_Ch3_branch_3:
	octave 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note D#, 4
	note F#, 4
	octave 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note A#, 4
	note F#, 4
	octave 2
	endchannel

Music_TrickHouseRSE_Ch4:
	togglenoise $2
	notetype $6
	note __, 16
	note __, 16
Music_TrickHouseRSE_Ch4_loop:
	note C#, 2
	note B_, 2
	note B_, 2
	note B_, 2
	note F#, 2
	note B_, 2
	note B_, 2
	note B_, 2
	loopchannel 0, Music_TrickHouseRSE_Ch4_loop
