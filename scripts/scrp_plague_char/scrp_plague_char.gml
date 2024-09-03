// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_plague_char(active_room){
	if (global.date == MONDAY && global.time == MORNING && active_room == rm_classroom_a){
		return "chemistry/plague/dlg_plague_0.json"
	} else {
		switch (global.pointer[GLOBAL_PATH])
		{
			case PLAGUE:
				if (global.date == MONDAY && global.time == AFTERNOON && active_room == rm_hallway_e) {
					return "chemistry/plague/dlg_plague_1.2P.json"
				} else if (global.date == WEDNESDAY && global.time == MORNING && active_room == rm_classroom_a) {
					return "chemistry/plague/dlg_plague_2.json"
				} else if (global.date == FRIDAY && global.time == MORNING && global.pointer[EVENT_PLAGUEPARTNER] && active_room == rm_classroom_b) {
					return "chemistry/plague/dlg_plague_4P.json"
				} else if (global.date == FRIDAY && global.time == AFTERNOON && active_room == rm_hallway_c) {
					return "chemistry/plague/dlg_plague_5.json"
				} else if (global.date == FRIDAY && global.time == EVENING && active_room == rm_hallway_e) {
					return "chemistry/plague/dlg_plague_5.2.json"
				} else {
					return "None"
				}
			default:
				return "None"
		}
	}
	
	
}