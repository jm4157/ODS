// Determine when you can talk to Percy

/// @function                            get_story_percy(active_room);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @description                         Get Percy's story

function get_story_percy(active_room){
	if (false && is_datetime(MONDAY, MORNING) && active_room == rm_classroom_a){
		return "chemistry/percy/dlg_percy_0.json" //TODO make this possible
	} else {
		switch (global.pointer[GLOBAL_PATH])
		{
			case PLAGUE:
				if (is_datetime(MONDAY, AFTERNOON) && active_room == rm_hallway_e) {
					return "chemistry/plague/dlg_plague_1.2L.json"
				} else if (is_datetime(WEDNESDAY, AFTERNOON) && active_room == rm_hallway_b) {
					return "chemistry/plague/dlg_plague_3.2L.json"
				} else {
					return "None"
				}
			default:
				return "None"
		}
	}
}


/// @function                            get_item_percy(active_room, item);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @param {real}          item          The item used
/// @description                         Get Percy's story when an item is given

function get_item_percy(active_room, item){
	switch (item){
		default: return "chemistry/percy/dlg_percy_item_neutral.json"
	}
}
