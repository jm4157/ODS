function scrp_inttoitemspr(item){
	switch (item){
		case CHOCBAR: return spr_inven_chocbar;
		default: show_error(string("Invalid item code: {0}", item), true);
	}
}