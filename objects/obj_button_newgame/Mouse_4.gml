/// @description Start new game

if (script_execute(scrp_layer_is_active, _layer)){
	// Change alpha back to unpressed state
	image_alpha = 1;

	// Set all game data and save to ini
	script_execute(scrp_newgame)

	// Go to game start
	room_goto(rm_monday)
	//room_goto(rm_nsfw)
}




