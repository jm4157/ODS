// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_changevar(variable, changetype, val){
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