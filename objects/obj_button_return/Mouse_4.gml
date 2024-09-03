/// @description Destroy parent menu

if (script_execute(scrp_layer_is_active, _layer)){
	instance_destroy(master)
	global.active_layer = return_to
}



