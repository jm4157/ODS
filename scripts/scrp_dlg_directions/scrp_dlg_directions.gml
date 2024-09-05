// A collection of functions that each handle one direction of a dialogue


/// @function                   dlg_actor(pos, emotion, character, stage);
/// @param {string}  pos        Actor's position
/// @param {string}  emotion    Actor's emotion
/// @param {string}  character  Who the actor is
/// @param {struct}  stage      Active Stage instance
/// @description                Change the active actor

function dlg_actor(pos, emotion, character, stage){
	var actor;
	
	//Read pos to find which actor to change
	switch (pos){
		case "left": actor = stage.actor_left; break;
		case "center": actor = stage.actor_center; break;
		case "right": actor = stage.actor_right; break;
		default: show_error("Invalid actor position '" + pos + "' provided.", true);
	}
	
	//Assign the actor their emotion and character
	actor.emotion = str_to_emotion(emotion);
	actor.character = str_to_actor_spr(character);
}


/// @function                    dlg_change_var(variable, changetype, value);
/// @param {string}  variable    Variable to change
/// @param {string}  changetype  Set, Increment, or Decrement
/// @param {real}    value       New value of the variable
/// @description                 Change a variable from within a dialogue

function dlg_change_var(variable, changetype, value){
	//Get from the variable string which variable we want
	var index = str_to_pointer(variable);
	
	//Change variable based on changetype and value
	switch (changetype){
		case "set": global.pointer[@index] = value; break;
		case "increment": global.pointer[@index] = global.pointer[index] + value; break;
		case "decrement": global.pointer[@index] = global.pointer[index] - value; break;
		default: show_error("'" + changetype + "' is not a valid way to modify a variable.", true);
	}
}


/// @function                        dlg_choice(choices, commands, stage);
/// @param {array.Struct}  choices   Available choices
/// @param {array.Struct}  commands  Remaining commands
/// @param {struct}        stage     Active stage instance
/// @description                     Let a player decide between dialogue choices

function dlg_choice(choices, commands, stage){
	var length = array_length(choices);
	var margin = ((SCREEN_HEIGHT - CHOICE_Y) - (CHOICE_HEIGHT * length)) / (length + 1);
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
		var c_layer = layer_create(STAGE_NEAR);
		
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
	}
}


/// @function                        dlg_box(speaker, speech, commands, stage);
/// @param {string}        speaker   Name to display
/// @param {string}        speech    Text to display
/// @param {array.Struct}  commands  Remaining commands
/// @param {struct}        stage     Active stage instance
/// @description                     Create a dialogue box

function dlg_box(speaker, speech, commands, stage){
	instance_create_depth(0,0, STAGE_NEAR, obj_box_dialogue, {
		speaker : speaker,
		speech : speech,
		commands : commands,
		stage : stage
	});
}


/// @function                         dlg_direct_cdtn(variable, operator, value, directions, commands, stage);
/// @param {string}        variable    Variable to test
/// @param {string}        operator    How to compare variable and value
/// @param {real}          value       Value to test against
/// @param {array.Struct}  directions  Commands to execute if true
/// @param {array.Struct}  commands    Remaining commands
/// @param {struct}        stage       Active stage instance
/// @description                       Split remaining directions based on a condition

function dlg_direct_cdtn(variable, operator, value, directions, commands, stage){
	var condition;
	
	//Get from the variable string which variable we want
	var index = str_to_pointer(variable);
	var test = global.pointer[index];
	
	//Check if condition is filled
	switch (operator){
		case "equals":      condition = test == value; break;
		case "lessthan":    condition = test <  value; break;
		case "greaterthan": condition = test >  value; break;
		case "atleast":     condition = test >= value; break;
		case "atmost":      condition = test <= value; break;
		default: show_error("Invalid operator '" + operator + "' provided.", false); 
	}
	
	//If so, exectute directions with commands appended afterwards
	if (condition){
		var remains = directions;
		for (var i = 0; i < array_length(commands); i++){
			array_push(remains, commands[i]);
		}
		
		manage_dlg(remains, stage);
	}
	//If not, just execute commands
	else{
		manage_dlg(commands, stage);
	}
}


/// @function               dlg_offstage(pos, stage);
/// @param {string}  pos    Position to vacate
/// @param {struct}  stage  Active stage instance
/// @description            Remove an actor from the stage

function dlg_offstage(pos, stage){
	var actors;
	
	//Convert position to actual positions
	switch (pos){
		case "left": actors = [stage.actor_left]; break;
		case "center": actors = [stage.actor_center]; break;
		case "right": actors = [stage.actor_right]; break;
		case "all": actors = [stage.actor_left, stage.actor_center, stage.actor_right]; break;
		default: show_error("Invalid actor position '" + pos + "' provided.", true);
	}
	
	//Remove all actors specified.
	for (var i = 0; i < array_length(actors); i++){
		actors[i].character = 0;
	}
}


/// @function                     dlg_scene(destination, stage);
/// @param {string}  destination  Room to go to
/// @param {struct}  stage        Active stage instance
/// @description                  End the scene with Oolong in a new room

function dlg_scene(destination, stage){
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
	room_goto(str_to_room(destination));
}


/// @function     dlg_take();
/// @description  Remove the item in Oolong's hand

function dlg_take(){
	global.inventory[INVEN_HAND] = EMPTY;
	cursor_sprite = -1;
	window_set_cursor(cr_default);
}
