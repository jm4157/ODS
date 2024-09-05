// A collection of game actions


/// @function            pickup(item);
/// @param {real}  item  Item to pick up
/// @description         Pick up an item if there's space for it
/// @return {bool}       

function pickup(item){
	for (var i = 1; i < INVEN_SLOTS + 1; i++){
		if (global.inventory[i] == EMPTY){
			// Add to inventory
			global.inventory[i] = item_code;
			
			return true;
		}
	}
	
	return false;
}


/// @function     time_advance();
/// @description  Advance time by one segment

function time_advance(){
	global.time = global.time + 1
	if (global.time % EVENING == 0){ //TODO let it be evening
		global.date = global.date + 1
		global.time = 0
	} 
}
