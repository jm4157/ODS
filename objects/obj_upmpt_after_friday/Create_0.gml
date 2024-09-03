/// @description Play after friday dialogue

if (global.date == FRIDAY && global.time == AFTERNOON && global.after_friday_played == false){
	global.after_friday_played = true
	script_execute(scrp_begindialogue, "story/dlg_datenight.json")
}




