/// @description Apply settings

switch (step_number){
case 0: 
	window_set_size(global.screen_width, global.screen_height);
	break;
case 1: 
	surface_resize(application_surface, global.screen_width, global.screen_height);
	display_set_gui_size(global.screen_width, global.screen_height);
	break;
default:
	window_set_fullscreen(global.fullscreen)
	instance_destroy();
	break;
}

++step_number;
