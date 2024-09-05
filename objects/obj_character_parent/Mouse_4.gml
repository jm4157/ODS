/// @description Start dialogue script

if (visible && is_active_layer(SCREEN)){
	var action = get_story(room, character);
	begin_dlg(action);
}
