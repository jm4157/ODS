/// @description Change cursor back
// You can write your code in this editor

if (is_active_layer(SCREEN) && hand_empty()){
	cursor_sprite = -1;
	window_set_cursor(cr_default);
}
