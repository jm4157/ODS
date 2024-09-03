// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_progresstime(){
	global.time = global.time + 1
	if (global.time % EVENING == 0){ //TODO let it be evening
		global.date = global.date + 1
		global.time = 0
	} 
}