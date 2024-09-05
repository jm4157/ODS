/// @description Destroy parent menu

if (is_active_layer(lay)){
	instance_destroy(master);
	global.active_layer = return_to;
}



