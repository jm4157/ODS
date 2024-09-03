// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_actor(pos, emotion, character, stage){
	var actor;
	
	//Read pos to find which actor to change
	switch (pos){
		case "left": actor = stage.actor_left; break;
		case "center": actor = stage.actor_center; break;
		case "right": actor = stage.actor_right; break;
		default: show_error("Invalid actor position '" + pos + "' provided.", true);
	}
	
	//Assign the actor their emotion and character
	actor.emotion = script_execute(scrp_stringtoemotion, emotion);
	actor.character = script_execute(scrp_stringtocharacter, character);
}