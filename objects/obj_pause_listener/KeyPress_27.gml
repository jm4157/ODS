/// @description Open pause menu

if (script_execute(scrp_layer_is_active, STAGE)){
	// Create menu
	var s_x = SCREEN_WIDTH / 2 - SETTINGS_WIDTH / 2
	var s_y = SCREEN_HEIGHT / 2 - SETTINGS_HEIGHT / 2
	instance_create_depth(s_x, s_y, MENU_MID, obj_pause_backdrop);
	
	// Activate Menu layer
	global.active_layer = MENU
}
