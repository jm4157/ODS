function scrp_scene(destination, remains, stage){
	// Destroy the current Stage
	instance_destroy(stage.curtain)
	instance_destroy(stage.actor_left)
	instance_destroy(stage.actor_center)
	instance_destroy(stage.actor_right)
	layer_destroy(stage.layer_actors)
	
	// Make Screen visible and set active layer
	layer_set_visible("Screen", true)
	global.active_layer = SCREEN
	
	// Go to the new room
	room_goto(script_execute(scrp_stringtoroom, destination))
	
}