// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_stringtopointerint(str){
	switch (str){
		case "FAVOR_PLAGUE": return FAVOR_PLAGUE;
		case "FAVOR_MONA": return FAVOR_MONA;
		case "FAVOR_PERCY": return FAVOR_PERCY;
		//case "favor_king": return FAVOR_KING;

		case "EVENT_PLAGUEPARTNER": return EVENT_PLAGUEPARTNER
		case "EVENT_MONADISGUSTED": return EVENT_MONADISGUSTED
		
		case "GLOBAL_PATH": return GLOBAL_PATH

		default: show_error("'" + string(str) + "' not a valid global pointer.", true);
	}
}