// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrp_dialogue(speaker, speech, commands, stage){
	//Create a Dialogue Box object
	
	instance_create_depth(0,0, STAGE_NEAR, obj_box_dialogue, {
		speaker : speaker,
		speech : speech,
		commands : commands,
		stage : stage
	});
}