/// @description Change resoltion, then destroy resolution menu

if (script_execute(scrp_layer_is_active, _layer)){
	// Change resolution
	global.screen_width = s_width
	global.screen_height = s_height
	instance_create_layer(0,0,"Screen",obj_applyresolution)
	
	//TODO Save metadata
	
	// Destroy resolution menu
	instance_destroy(master)
	global.active_layer = _layer - 1
}



