/// @description Continue

if (is_active_layer(STAGE)){
	instance_destroy(id);
	manage_dlg(commands, stage);
}
