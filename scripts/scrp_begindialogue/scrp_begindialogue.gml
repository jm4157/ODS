// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_begindialogue(file){
	
	//Read and intrepret json file
	var buffer = buffer_load(file)
	var dialogue

    if (buffer != -1)
    {
        var json_string = buffer_read(buffer, buffer_string)

        buffer_delete(buffer)
		
		dialogue = json_parse(json_string)
    } else {
		show_error("'" + file + "' not found.", true)
	}
	
	// Hide Screen and set the active layer
	layer_set_visible("Screen", false)
	global.active_layer = STAGE
	
	// Create the stage objects
	var layer_actors = layer_create(STAGE_MID)
	var stage = {
		curtain : instance_create_depth(0, 0, STAGE_FAR, obj_curtain),
		layer_actors : layer_actors,
		actor_left : instance_create_layer(ACTORL_X, ACTORL_Y, layer_actors, obj_actor),
		actor_center : instance_create_layer(ACTORC_X, ACTORC_Y, layer_actors, obj_actor),
		actor_right : instance_create_layer(ACTORR_X, ACTORR_Y, layer_actors, obj_actor)
	}
	stage.actor_right.image_xscale = -1
		
	// Engage dialogue manager
	script_execute(scrp_dialoguemanager, dialogue, stage)
}