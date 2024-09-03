/// @description Room transition
// You can write your code in this editor

if (script_execute(scrp_layer_is_active, SCREEN) 
	&& global.inventory[INVEN_HAND] == EMPTY){
	//TODO Fade out

	cursor_sprite = -1;
	window_set_cursor(cr_default);
	room_goto(to_room);
}
