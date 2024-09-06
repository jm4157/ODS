// A collection of functions that manage the dialogue system


/// @function              begin_dlg(file);
/// @param {string}  file  Name of the file to read
/// @description           Begin a new dialogue

function begin_dlg(file){
	
	//Read and intrepret json file
	var buffer = buffer_load(file);
	var dialogue;

    if (buffer != -1){
        var json_string = buffer_read(buffer, buffer_string);

        buffer_delete(buffer);
		
		dialogue = json_parse(json_string);
    } else {
		show_error("'" + file + "' not found.", true);
	}
	
	// Hide Screen and set the active layer
	layer_set_visible("Screen", false);
	global.active_layer = STAGE;
	
	// Create the stage objects
	var layer_actors = layer_create(STAGE_MID);
	var stage = {
		curtain : instance_create_depth(0, 0, STAGE_FAR, obj_curtain),
		layer_actors : layer_actors,
		actor_left : instance_create_layer(ACTORL_X, ACTORL_Y, layer_actors, obj_actor),
		actor_center : instance_create_layer(ACTORC_X, ACTORC_Y, layer_actors, obj_actor),
		actor_right : instance_create_layer(ACTORR_X, ACTORR_Y, layer_actors, obj_actor)
	};
	stage.actor_right.image_xscale = -1;
		
	// Engage dialogue manager
	manage_dlg(dialogue, stage);
}


/// @function                        manage_dlg(commands, stage);
/// @param {array.Struct}  commands  Remaining commands
/// @param {struct}   stage     Active stage instance
/// @description                     Enact each direction of dialogue until complete

function manage_dlg(commands, stage){
	var length = array_length(commands);
	
	if (length == 0){
		//The dialogue has ended.
		
		//Destroy Stage
		instance_destroy(stage.curtain);
		instance_destroy(stage.actor_left);
		instance_destroy(stage.actor_center);
		instance_destroy(stage.actor_right);
		layer_destroy(stage.layer_actors);
		
		// Make Screen visible and set active layer
		layer_set_visible("Screen", true);
		global.active_layer = SCREEN;
		
		//Reload room to allow for any changes
		room_goto(room);
	} else {
		//Interpret command from struct
		var command = commands[0];
		var remains = array_create(length - 1, 0);
		array_copy(remains, 0, commands, 1, length - 1);
		
		if (variable_struct_exists(command, "action")){
			switch (command.action){
				case "actor":
					dlg_actor(command.position, command.emotion, command.actor, stage)
					manage_dlg(remains, stage);
					break;
				case "changevar":
					dlg_change_var(command.variable, command.changetype, command.val);
					manage_dlg(remains, stage);
					break;
				case "choice":
					dlg_choice(command.choices, remains, stage);
					break;
				case "dialogue":
					dlg_box(command.speaker, command.speech, remains, stage);
					break;
				case "directif":
					dlg_direct_cdtn(command.variable, command.operator, command.val, command.directions, remains, stage);
					break;
				case "offstage":
					dlg_offstage(command.position, stage);
					manage_dlg(remains, stage);
					break;
				case "playsound":
					dlg_play_sound(command.sound, command.stype);
					manage_dlg(remains, stage);
					break;
				case "scene":
					dlg_scene(command.destination, stage);
					break;
				case "take":
					dlg_take();
					manage_dlg(remains, stage);
					break;
				case "timeadvance":
					time_advance();
					manage_dlg(remains, stage);
					break;
				default: show_error("Invalid action '" + command.action + "' provided.", true);
			}
		}
	}
}
