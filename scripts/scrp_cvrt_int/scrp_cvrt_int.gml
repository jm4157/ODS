// A collection of functions that take an integer value
// and returns a more useful data type

 
/// @function            int_to_date(date);s
/// @param {real}  date  A date integer code
/// @description         Converts a date integer code to its String representation
/// @pure

function int_to_date(date){
	switch (date){
		case MONDAY: return "Monday";
		case WEDNESDAY: return "Wednesday";
		case FRIDAY: return "Friday";
		default: return "ERROR";
	}
}


/// @function            int_to_time(time);
/// @param {real}  time  A time integer code
/// @description         Converts a time integer code to its String representation
/// @pure

function int_to_time(time){
	switch (time){
		case MORNING: return "Morning";
		case CLASS: return "Class";
		case AFTERNOON: return "Afternoon";
		case EVENING: return "Evening";
		default: return "ERROR";
	}
}


/// @function            int_to_item_spr(item);
/// @param {real}  item  An item integer code
/// @description         Converts an item integer code to its sprite
/// @pure

function int_to_item_spr(item){
	switch (item){
		case CHOCBAR: return spr_inven_chocbar;
		case QUARTER: return spr_inven_quarter;
		default: return spr_inven_ERROR;
	}
}
