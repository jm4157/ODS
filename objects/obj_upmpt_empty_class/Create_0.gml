/// @description Play after-monday dialogue

if (global.date == FRIDAY && global.time == MORNING && global.empty_class_played == false){
	global.empty_class_played = true
	script_execute(scrp_begindialogue, "chemistry/dlg_empty_class.json")
}




