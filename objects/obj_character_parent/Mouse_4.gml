/// @description Start dialogue script

if (visible && script_execute(scrp_layer_is_active, SCREEN)){
	if (global.inventory[0] = EMPTY) {
		// Player has no item equipped
		script_execute(scrp_begindialogue, action)
	} else {
		//Check for character's interation with item
		var i_action = script_execute(scrp_item_get_action, character)
		script_execute(scrp_begindialogue, i_action)
	}
}
