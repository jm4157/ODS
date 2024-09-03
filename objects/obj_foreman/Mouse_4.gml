/// @description Start dialogue script

if (visible && script_execute(scrp_layer_is_active, SCREEN)){
	script_execute(scrp_begindialogue, "dlg_nsfw.json")
}
