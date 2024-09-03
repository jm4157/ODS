// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_stringtocharacter(str){
	switch (str){
		case "oolong": return spr_oolong;
		// Chemistry
		case "hedge": return spr_hedgeteacher;
		case "plague": return spr_plague;
		case "mona": return spr_mona;
		case "percy": return spr_percy;
		// NSFW April Fools Release
		case "foreman" : return spr_foreman;
		case "osha" : return spr_osha;
		case "forklift" : return spr_forklift;
		// Error
		default: show_error("Invalid character '" + str + "' provided.", true);
	}
}