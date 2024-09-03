// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_dialoguemanager(commands, stage){
	var length = array_length(commands);
	
	if (length == 0){
		//The dialogue has ended.
		
		//Destroy Stage
		instance_destroy(stage.curtain)
		instance_destroy(stage.actor_left)
		instance_destroy(stage.actor_center)
		instance_destroy(stage.actor_right)
		layer_destroy(stage.layer_actors)
		
		// Make Screen visible and set active layer
		layer_set_visible("Screen", true)
		global.active_layer = SCREEN
		
		//Reload room to allow for any changes
		room_goto(room)
	} else {
		//Interpret command from struct
		var command = commands[0]
		var remains = array_create(length - 1, 0)
		array_copy(remains, 0, commands, 1, length - 1)
		
		if (variable_struct_exists(command, "action")){
			switch (command.action){
				case "actor":
					script_execute(scrp_actor, command.position, command.emotion, command.actor, stage)
					script_execute(scrp_dialoguemanager, remains, stage)
					break
				case "changevar":
					script_execute(scrp_changevar, command.variable, command.changetype, command.val)
					script_execute(scrp_dialoguemanager, remains, stage)
					break
				case "choice":
					script_execute(scrp_choice, command.choices, remains, stage)
					break
				case "dialogue":
					script_execute(scrp_dialogue, command.speaker, command.speech, remains, stage)
					break
				case "directif":
					script_execute(scrp_directif, command.variable, command.operator, command.val, command.directions, remains, stage)
					break
				case "offstage":
					script_execute(scrp_offstage, command.position, stage)
					script_execute(scrp_dialoguemanager, remains, stage)
					break;
				case "scene":
					script_execute(scrp_scene, command.destination, remains, stage)
					break
				case "timeadvance":
					script_execute(scrp_progresstime)
					script_execute(scrp_dialoguemanager, remains, stage)
					break
				default: show_error("Invalid action '" + command.action + "' provided.", true);
			}
		}
	}
}