MountMoon1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 15, 33, ROUTE_3_NORTH, 1
	warp_event 14, 35, ROUTE_3_NORTH, 1
	warp_event  5,  5, MOUNT_MOON_B1F, 1
	warp_event 17, 11, MOUNT_MOON_B1F, 3
	warp_event 25, 15, MOUNT_MOON_B1F, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 15, 23, SIGNPOST_JUMPTEXT, MtMoon1Text14

	db 0 ; object events

MtMoon1Text14:
	text "Beware! Zubat is"
	line "a blood sucker!"
	done
