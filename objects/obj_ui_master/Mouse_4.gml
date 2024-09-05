/// @description Handles inventory clicks

// Check if mouse is in correct y position and if on correct screen
if (is_active_layer(SCREEN) && mouse_y >= INVEN_Y && mouse_y < INVEN_Y + INVEN_DIAM){
	// Check which inventory slot the mouse is over, if any
	var slot = 0;
	var inven_x;
	
	for(var i = 0; i < INVEN_SLOTS; i++){
		inven_x = INVEN_X_INIT - (INVEN_X_OFFSET * i);
		
		if (mouse_x >= inven_x && mouse_x < inven_x + INVEN_DIAM){
			slot = i + 1;
			break;
		}
	}
	
	// Check if the mouse is over the trash can
	inven_x -= INVEN_X_OFFSET;
	if (mouse_x >= inven_x && mouse_x < inven_x + INVEN_DIAM){
			slot = -1;
		}
	
	// If slot was actually selected, swap hand and slot
	if (slot > 0){
		var inven_temp = global.inventory[slot];
		global.inventory[slot] = global.inventory[INVEN_HAND];
		global.inventory[INVEN_HAND] = inven_temp;
		
		// Make hand display item
		var inven_hold = global.inventory[INVEN_HAND]
		
		if (hand_empty()){
			cursor_sprite = -1;
			window_set_cursor(cr_default);
		} else{
			cursor_sprite = int_to_item_spr(inven_hold);
			window_set_cursor(cr_none);
		}
	}

	// If trash selected, delete item
	if (slot = -1 && global.inventory[INVEN_HAND] != EMPTY){
		begin_dlg("pickup\\dlg_pickup_trash.json")
	}
}
