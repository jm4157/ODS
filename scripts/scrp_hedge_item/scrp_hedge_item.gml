// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_hedge_item(){
	switch (global.hand){
		case CHOCBAR: 
			if (global.time == AFTERNOON){
				// Special chocolate bar bribe dialogue
				return "chemistry/hedge/dlg_hedge_item_chocbar.json"
			} else {
				return "chemistry/hedge/dlg_hedge_item_neutral.json"
			}
		default: 
			return "chemistry/hedge/dlg_hedge_item_neutral.json"
	}
}