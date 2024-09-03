function scrp_hold(item){
	// Put item into Oolong's hand
	global.inventory[INVEN_HAND] = item;
		
	// Make hand display item
	if (item == EMPTY){
		cursor_sprite = -1;
		window_set_cursor(cr_default);
	} else{
		cursor_sprite = script_execute(scrp_inttoitemspr, item, true);
		window_set_cursor(cr_none);
	}
}