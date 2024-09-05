// Determines when you can talk to Hedge Professor


/// @function                            get_story_hedge(active_room);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @description                         Get Hedge Professor's story

function get_story_hedge(active_room){
	if (is_time(CLASS)){
		// Pre-minigame spiel
		switch (global.date){
			case MONDAY:
				return "chemistry/hedge/dlg_hedge_0.json"
			case WEDNESDAY:
				return "chemistry/hedge/dlg_hedge_1.json"
			case FRIDAY:
				return "chemistry/hedge/dlg_hedge_2.json"
			default: 
				show_error("Invalid date code '" + string(global.date) + "'.", true)
		}
	} else {
		return "None"
	}
}


/// @function                            get_item_hedge(active_room, item);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @param {real}          item          The item used
/// @description                         Get Hedge Professor's story when an item is given

function get_item_hedge(active_room, item){
	switch (item){
		case CHOCBAR: 
			if (is_time(AFTERNOON) && is_affection_target(PLAGUE)){
				// Special chocolate bar bribe dialogue
				return "chemistry/hedge/dlg_hedge_item_chocbar.json"
			} else {
				return "chemistry/hedge/dlg_hedge_item_neutral.json"
			}
		default: 
			return "chemistry/hedge/dlg_hedge_item_neutral.json"
	}
}
