/// @description Change cursor to special cursor
// You can write your code in this editor

if (script_execute(scrp_layer_is_active, SCREEN)){
	cursor_sprite = alt_cursor;
	window_set_cursor(cr_none);
}
