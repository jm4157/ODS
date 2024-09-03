/// @description Play intro dialogue

if (global.game_intro_played == false){
	global.game_intro_played = true
	script_execute(scrp_begindialogue, "story/dlg_intro.json")
}




