// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_choice(choices, commands, stage){
	var length = array_length(choices);
	var margin = ((SCREEN_HEIGHT - CHOICE_Y) - (CHOICE_HEIGHT * length)) / (length + 1)
	var ids = array_create(length, 0);
	
	// Create and display choices
	for (var i = 0; i < length; i++){
		//Append commands
		var remains = choices[i].directions;
		for (var j = 0; j < array_length(commands); j++){
			array_push(remains, commands[j]);
		}
		
		//Calculate height
		var y_pos = CHOICE_Y + (margin * (i + 1)) + (CHOICE_HEIGHT * i);
		
		//Create choice
		var c_layer = layer_create(STAGE_NEAR)
		
		ids[i] = instance_create_layer(CHOICE_X, y_pos, c_layer, obj_box_choice, {
			text : choices[i].text,
			commands : remains,
			p_layer : c_layer,
			stage : stage
		});
	}
	
	// Pass all the choices the list of choice ids for later destruction
	for (var i = 0; i < length; i++){
		ids[i].choices = ids;
		//show_debug_message(ids[i].commands)
	}
}