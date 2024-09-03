/// @description Add text setting

// Change text if default
if (text == "0 X 0"){
	text = string(s_width) + " X " + string(s_height)
	
	var width =  400
	draw_set_font(font);
	var t_width = string_width(text);
	t_x = x + width / 2 - t_width / 2;
}

// Draw button
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, image_alpha);

// Draw text
draw_set_font(font);
draw_set_color(c_black)
draw_text(t_x, t_y, text);
