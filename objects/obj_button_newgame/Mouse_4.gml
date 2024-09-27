/// @description Start new game

if (is_active_layer(lay)){
	// Change alpha back to unpressed state
	image_alpha = 1;
	
	if(keyboard_check(vk_control) && keyboard_check(ord("D"))){
		// Test dialogue mode
		
		var dev_file = file_find_first("dev/*.json", 0);
		
		if (dev_file == ""){
			// No dev file found
			
			instance_create_depth(CHOICE_X, SCREEN_HEIGHT, SCREEN_NEAR, obj_toast, {
				text : "No dev file detected."
			})
		} else {
			begin_dlg(string("dev/{0}", dev_file));
		}
	} else {
		// Normal mode
		
		// Set all game data and save to ini
		newgame();

		// Go to game start
		room_goto(rm_monday);
	}
}




