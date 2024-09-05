/// @description Room transition
// You can write your code in this editor

if (is_active_layer(SCREEN) && hand_empty()){
	//TODO Fade out

	cursor_sprite = -1;
	window_set_cursor(cr_default);
	room_goto(to_room);
}
