/// @description Room transition
// You can write your code in this editor

if (is_active_layer(SCREEN) && hand_empty()){

	cursor_sprite = -1;
	window_set_cursor(cr_default);
	
	var inst = instance_create_depth(0, 0, OVERLAY, obj_fadeout);
	inst.to_room = to_room;
}
