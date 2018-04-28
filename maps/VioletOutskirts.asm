VioletOutskirts_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  9, 12, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	treebase_right_event_1  9, 11, SECRET_BASE_VIOLET_OUTSKIRTS, EVENT_SECRET_BASE_VIOLET_OUTSKIRTS
	treebase_right_event_2  9, 11, SECRET_BASE_VIOLET_OUTSKIRTS, EVENT_SECRET_BASE_VIOLET_OUTSKIRTS_ESTABLISHED
	fruittree_event 17, -2, FRUITTREE_ROUTE_42_1, PNK_APRICORN ; visible on Route42
	fruittree_event 18, -2, FRUITTREE_ROUTE_42_1, GRN_APRICORN ; visible on Route42
	fruittree_event 19, -2, FRUITTREE_ROUTE_42_1, YLW_APRICORN ; visible on Route42

	const_def 1 ; object constants
