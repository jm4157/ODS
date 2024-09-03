// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_stringtoemotion(str){
	switch (str){
		case "neutral": return NEUTRAL;
		case "happy": return HAPPY;
		case "confused": return CONFUSED;
		case "angry": return ANGRY;
		case "blush": return BLUSH;
		case "nervous": return NERVOUS;
		case "determined": return DETERMINED;
		default: show_error("Invalid emotion '" + string(str) + "' provided.", true);
	}
}