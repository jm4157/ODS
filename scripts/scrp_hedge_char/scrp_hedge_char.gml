// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_hedge_char(active_room){
	if (global.time == CLASS){
		// Standard pre-minigame spiel
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
	} else if (global.time == AFTERNOON && global.date == WEDNESDAY && global.pointer[GLOBAL_PATH] == PLAGUE) {
		// Special chocolate bar bribe
		return "chemistry/plague/dlg_plague_3.2H.json"
	} else {
		return "None"
	}
}