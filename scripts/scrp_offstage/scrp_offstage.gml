// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_offstage(pos, stage){
	var actors;
	
	//Convert position to actual positions
	switch (pos){
		case "left": actors = [stage.actor_left]; break;
		case "center": actors = [stage.actor_center]; break;
		case "right": actors = [stage.actor_right]; break;
		case "all": actors = [stage.actor_left, stage.actor_center, stage.actor_right]; break;
		default: show_error("Invalid actors position '" + pos + "' provided.", true);
	}
	
	//Remove all actors specified.
	for (var i = 0; i < array_length(actors); i++){
		actors[i].character = 0;
	}
}