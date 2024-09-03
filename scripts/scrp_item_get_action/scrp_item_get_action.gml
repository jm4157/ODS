// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_item_get_action(character){
	switch (character){
		case PLAGUE: 
			return script_execute(scrp_plague_item)
		case MONA:
			return script_execute(scrp_mona_item)
		case PERCY: 
			return script_execute(scrp_percy_item)
		case HEDGE:
			return script_execute(scrp_hedge_item)
		default: 
			show_error("Invalid character code '" + string(character) + "' provided to item getter.", true)
	}
}