// Determine when you can talk to Plague


/// @function                            get_story_plague(active_room);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @description                         Get Plague's story

function get_story_plague(active_room){
	if (is_datetime(MONDAY, MORNING) && active_room == rm_classroom_a){
		return "chemistry/plague/dlg_plague_0.json"
	} else {
		switch (global.pointer[GLOBAL_PATH])
		{
			case PLAGUE:
				if (is_datetime(MONDAY, AFTERNOON) && active_room == rm_hallway_e) {
					return "chemistry/plague/dlg_plague_1.2P.json"
				} else if (is_datetime(WEDNESDAY, MORNING) && active_room == rm_classroom_a) {
					return "chemistry/plague/dlg_plague_2.json"
				} else if (is_datetime(FRIDAY, MORNING) && global.pointer[EVENT_PLAGUEPARTNER] && active_room == rm_classroom_b) {
					return "chemistry/plague/dlg_plague_4P.json"
				} else if (is_datetime(FRIDAY, AFTERNOON) && active_room == rm_hallway_c) {
					return "chemistry/plague/dlg_plague_5.json"
				} else if (is_datetime(FRIDAY, EVENING) && active_room == rm_hallway_e) {
					return "chemistry/plague/dlg_plague_5.2.json"
				} else {
					return "None"
				}
			default:
				return "None"
		}
	}
}


/// @function                            get_item_plague(active_room, item);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @param {real}          item          The item used
/// @description                         Get Plague's story when an item is given

function get_item_plague(active_room, item){
	switch (item){
		default: return "chemistry/plague/dlg_plague_item_neutral.json"
	}
}