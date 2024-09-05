/// @description Start new game

if (is_active_layer(lay)){
	// Change alpha back to unpressed state
	image_alpha = 1;

	// Set all game data and save to ini
	newgame();

	// Go to game start
	room_goto(rm_monday);
}




