function scrp_changevar(variable, changetype, val){
	//Check if variable is hand
	if (variable == "HAND"){
		global.inventory[INVEN_HAND] = real(val);
		return;
	}
	// Otherwise:
	
	//Get from the variable string which variable we want
	var index = script_execute(scrp_stringtopointerint, variable)
	//show_debug_message(index);
	
	//Change variable based on changetype and value
	switch (changetype){
		case "set": global.pointer[@index] = val; break;
		case "increment": global.pointer[@index] = global.pointer[index] + val; break;
		case "decrement": global.pointer[@index] = global.pointer[index] - val; break;
		default: show_error("'" + changetype + "' is not a valid way to modify a variable.", true);
	}
}