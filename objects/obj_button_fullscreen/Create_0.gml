/// @description Add text setting to standard creation

// Declare width and height
var width =  400
var height = 133

// Set text
if (global.fullscreen){
	text = "Fullscreen"
} else {
	text = "Windowed"
}

// Text position
draw_set_font(font);
var t_width = string_width(text);
var t_height = string_height(text);

t_x = x + width / 2 - t_width / 2;
t_y = y + height / 2 - t_height / 2;




