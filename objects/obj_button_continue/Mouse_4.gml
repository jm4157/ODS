/// @description Continue saved game

if (script_execute(scrp_layer_is_active, _layer)){
	// Change alpha back to unpressed state
	image_alpha = 1;

	// TODO load game data from ini file

	// TODO Enter last room
	//room_goto_next();
	
	instance_create_depth(CHOICE_X, SCREEN_HEIGHT, SCREEN_NEAR, obj_toast, {
		text : "No save game"
	})
}

