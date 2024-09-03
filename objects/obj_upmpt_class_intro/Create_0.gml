/// @description Play intro dialogue

if (global.class_intro_played == false){
	global.class_intro_played = true
	script_execute(scrp_begindialogue, "chemistry/dlg_intro_chem.json")
}




