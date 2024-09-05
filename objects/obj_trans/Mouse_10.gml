/// @description Change cursor to special cursor
// You can write your code in this editor

if (is_active_layer(SCREEN) && hand_empty()){
	cursor_sprite = alt_cursor;
	window_set_cursor(cr_none);
}
