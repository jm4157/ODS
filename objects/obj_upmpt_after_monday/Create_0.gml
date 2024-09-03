/// @description Play after-monday dialogue

if (global.date == MONDAY && global.time == AFTERNOON && global.after_monday_played == false){
	global.after_monday_played = true
	script_execute(scrp_begindialogue, "chemistry/plague/dlg_plague_1.1.json")
}




