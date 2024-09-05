// A function that checks if an unprompted dialogue should begin


/// @function                           get_cdtn_upmpt(cdtn);
/// @param {real}          cdtn         Condition to check
/// @param {asset.GMRoom}  active_room  Room Oolong is currenly in
/// @description                        Checks if an item exists

function get_cdtn_upmpt(cdtn, active_room){	
	// If the event has already happened, don't do it again
	if (global.upmpt[cdtn]){
		return false;
	}
	
	
	
	switch (cdtn){
		case UPMPT_GAMEINTRO: return true;
		
		case UPMPT_CLASSINTRO: 
			switch (global.pointer[GLOBAL_PATH]){
				case MAJOR_CHEM: return active_room == rm_classroom_a;
				default:         return false;
			}
			
		case UPMPT_POSTMON:
			if (after_datetime(MONDAY, CLASS)){
				switch (global.pointer[GLOBAL_PATH]){
					case MAJOR_CHEM: return active_room == rm_hallway_a;
					default:         return false;
				}
			} else {
				return false;
			}
			
		case UPMPT_POSTWED:
			if (after_datetime(WEDNESDAY, CLASS)){
				switch (global.pointer[GLOBAL_PATH]){
					case MAJOR_CHEM: return active_room == rm_hallway_a;
					default:         return false;
				}
			} else {
				return false;
			}
			
		case UPMPT_POSTFRI:
			if (after_datetime(FRIDAY, CLASS)){
				switch (global.pointer[GLOBAL_PATH]){
					case MAJOR_CHEM: return active_room == rm_hallway_b;
					default:         return false;
				}
			} else {
				return false;
			}
			
		case UPMPT_LABDAY: return is_datetime(FRIDAY, MORNING);
		default: return false;
	}
}
