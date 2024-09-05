/// @description Create resolution sub-submenu

if (is_active_layer(lay)){
	// Change alpha back to unpressed state
	image_alpha = 1;
	
	// Change active layer
	global.active_layer = SUBSUBMENU;

	// Create settings submenu
	var s_x = SCREEN_WIDTH / 2 - SETTINGS_WIDTH / 2;
	var s_y = SCREEN_HEIGHT / 2 - SETTINGS_HEIGHT / 2;
	instance_create_depth(0, s_y, SUBSUBMENU_MID, obj_resolution_backdrop);
}


