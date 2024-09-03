// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_inttotime(time){
	switch (time){
		case MORNING: return "Morning";
		case CLASS: return "Class";
		case AFTERNOON: return "Afternoon";
		case DATE_NIGHT: return "Date Night";
	}
}