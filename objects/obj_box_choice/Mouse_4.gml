/// @description Execute user choice

// Delete this and other choices
if (is_active_layer(STAGE)){
	for (var i = 0; i < array_length(choices); i++){
		instance_destroy(choices[i]);
	}

	// Delete parent layer
	layer_destroy(p_layer);

	// Execute remaining code
	manage_dlg(commands, stage);
}
