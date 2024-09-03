/// @description Open settings menu

if (script_execute(scrp_layer_is_active, _layer)){
	// Change alpha back to unpressed state
	image_alpha = 1;
	
	// Change active layer
	global.active_layer = SUBMENU

	// Create settings submenu
	var s_x = SCREEN_WIDTH / 2 - SETTINGS_WIDTH / 2
	var s_y = SCREEN_HEIGHT / 2 - SETTINGS_HEIGHT / 2
	instance_create_depth(s_x, s_y, SUBMENU_MID, obj_settings_backdrop);
}

