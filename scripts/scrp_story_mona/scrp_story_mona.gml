// Determine when you can talk to Mona


/// @function                            get_story_mona(active_room);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @description                         Get Mona's story

function get_story_mona(active_room){
	if (false && is_datetime(MONDAY, MORNING) && active_room == rm_classroom_a){
		return "chemistry/mona/dlg_mona_0.json" //TODO make this possible
	} else {
		switch (global.pointer[GLOBAL_PATH])
		{
			case PLAGUE:
				if (is_datetime(MONDAY, AFTERNOON) && active_room == rm_hallway_a && ! global.pointer[EVENT_MONADISGUSTED]) {
					return "chemistry/plague/dlg_plague_1.2M.json"
				} else if (is_datetime(WEDNESDAY, AFTERNOON) && active_room == rm_hallway_c) {
					return "chemistry/plague/dlg_plague_3.2M.json"
				} else if (is_datetime(FRIDAY, MORNING) && !global.pointer[EVENT_PLAGUEPARTNER] && active_room == rm_classroom_b) {
					return "chemistry/plague/dlg_plague_4M.json"
				} else {
					return "None"
				}
			default:
				return "None"
		}
	}
}


/// @function                            get_item_mona(active_room, item);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @param {real}          item          The item used
/// @description                         Get Mona's story when an item is given

function get_item_mona(active_room, item){
	switch (item){
		default: return "chemistry/mona/dlg_mona_item_neutral.json"
	}
}
