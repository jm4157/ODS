/// @description Play closet text

if (script_execute(scrp_layer_is_active, SCREEN)){
	cursor_sprite = -1;
	window_set_cursor(cr_default);
	script_execute(scrp_begindialogue, "story/dlg_oolong_lockeddoor.json")
	//script_execute(scrp_begindialogue, "dlg_test_all.json")
}
