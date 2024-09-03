// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_mona_char(active_room){
	if (false && global.date == MONDAY && global.time == MORNING && active_room == rm_classroom_a){
		return "chemistry/mona/dlg_mona_0.json" //TODO make this possible
	} else {
		switch (global.pointer[GLOBAL_PATH])
		{
			case PLAGUE:
				if (global.date == MONDAY && global.time == AFTERNOON && active_room == rm_hallway_a && ! global.pointer[EVENT_MONADISGUSTED]) {
					return "chemistry/plague/dlg_plague_1.2M.json"
				} else if (global.date == WEDNESDAY && global.time == AFTERNOON && active_room == rm_hallway_c) {
					return "chemistry/plague/dlg_plague_3.2M.json"
				} else if (global.date == FRIDAY && global.time == MORNING && !global.pointer[EVENT_PLAGUEPARTNER] && active_room == rm_classroom_b) {
					return "chemistry/plague/dlg_plague_4M.json"
				} else {
					return "None"
				}
			default:
				return "None"
		}
	}
}