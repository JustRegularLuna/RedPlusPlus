Route43_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  9, 51, ROUTE_43_MAHOGANY_GATE, 1
	warp_event 10, 51, ROUTE_43_MAHOGANY_GATE, 2
	warp_event 17, 35, ROUTE_43_GATE, 3
	warp_event 17, 31, ROUTE_43_GATE, 1
	warp_event 18, 31, ROUTE_43_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
