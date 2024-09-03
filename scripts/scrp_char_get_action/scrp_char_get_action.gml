// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_char_get_action(active_room, character){
	switch (global.major){
		case MAJOR_CHEM: 
			switch (character){
				case PLAGUE: 
					return script_execute(scrp_plague_char, active_room)
				case MONA:
					return script_execute(scrp_mona_char, active_room)
				case PERCY: 
					return script_execute(scrp_percy_char, active_room)
				case HEDGE:
					return script_execute(scrp_hedge_char, active_room)
				default: 
					show_error("Invalid character code '" + string(character) + "' provided for Chemistry major.", true)
			}
			break
		default: 
			show_error("Invalid major code '" + string(global.major) + "' provided.", true)
	}
}