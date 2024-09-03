/// @description Play after-monday dialogue

if (global.date == WEDNESDAY && global.time == AFTERNOON && global.after_wednesday_played == false){
	global.after_wednesday_played = true
	script_execute(scrp_begindialogue, "chemistry/plague/dlg_plague_3.1.json")
}




