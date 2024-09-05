/// @description Transition if legal

if (is_active_layer(SCREEN) && hand_empty()){
	cursor_sprite = -1;
	window_set_cursor(cr_default);
		
	if (get_cdtn_trans(cdtn)){
		// Screen transition
		// TODO Fade out
	
		room_goto(to_room);
	} else{
		// Failure dialogue
		begin_dlg(dlg_cdtn_fail);
	}
}
