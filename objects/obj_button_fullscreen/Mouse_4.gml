/// @description Toggle fullscreen

if (is_active_layer(lay)){
	// Set window to new state
	global.fullscreen = (global.fullscreen + 1) % 2;
	window_set_fullscreen(global.fullscreen);
	
	// Change text
	if (global.fullscreen){
		text = "Fullscreen";
	} else {
		text = "Windowed";
	}
	
	var width =  400;
	draw_set_font(font);
	var t_width = string_width(text);
	t_x = x + width / 2 - t_width / 2;
	
	//TODO Save metadata
}


