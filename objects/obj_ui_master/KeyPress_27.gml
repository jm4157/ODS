/// @description Open pause menu

if (is_active_layer(STAGE)){
	// Change cursor to default
	cursor_sprite = -1;
	window_set_cursor(cr_default);
	
	// Create menu
	var s_x = SCREEN_WIDTH / 2 - SETTINGS_WIDTH / 2;
	var s_y = SCREEN_HEIGHT / 2 - SETTINGS_HEIGHT / 2;
	instance_create_depth(s_x, s_y, MENU_MID, obj_pause_backdrop);
	
	// Activate Menu layer
	global.active_layer = MENU;
}
