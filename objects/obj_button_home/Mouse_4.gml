/// @description Return to title screen

if (script_execute(scrp_layer_is_active, MENU)){
	// TODO save game data

	// TODO Enter last room
	room_goto(rm_title);
}


