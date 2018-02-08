Route43MahoganyGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  0, ROUTE_43, 1
	warp_event  5,  0, ROUTE_43, 2
	warp_event  4,  7, MAHOGANY_TOWN, 5
	warp_event  5,  7, MAHOGANY_TOWN, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
