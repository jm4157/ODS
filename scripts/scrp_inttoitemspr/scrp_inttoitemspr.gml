function scrp_inttoitemspr(item){
	// Optional argument for a cursor sprite
	if (argument_count > 1 && argument[1] == true){
		switch (item){
			case CHOCBAR: return spr_cursor_chocbar;
			case QUARTER: return spr_cursor_quarter;
			default: show_error(string("Invalid item code: {0}", item), true);
		}
	} else{
		switch (item){
			case CHOCBAR: return spr_inven_chocbar;
			case QUARTER: return spr_inven_quarter;
			default: show_error(string("Invalid item code: {0}", item), true);
		}
	}
}
