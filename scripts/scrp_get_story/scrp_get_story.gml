// A collection of functions that determine which story beats are active


/// @function                            get_story(active_room, interactable, item);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @param {real}          interactable  Object that was clicked on
/// @description                         Get the story to play from an interactions
/// @return {string}

function get_story(active_room, interactable){
	var holding = global.inventory[INVEN_HAND]
	
	if (holding == EMPTY){
		return get_story_character(active_room, interactable);
	} else{
		return get_story_item(active_room, interactable, holding);
	}
}


/// @function                            get_story_character(active_room, interactable)
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @param {real}          interactable  Object that was clicked on
/// @description                         Get an object's normal interaction story
/// @return {string}

function get_story_character(active_room, interactable){
	switch (global.major){
		case MAJOR_CHEM: 
			switch (interactable){
				case PLAGUE: 
					return get_story_plague(active_room);
				case MONA:
					return get_story_mona(active_room);
				case PERCY: 
					return get_story_percy(active_room);
				case HEDGE:
					return get_story_hedge(active_room);
				default: 
					return "None";
			}
		default: return "None";
	}
}


/// @function                            get_story_item(active_room, interactable);
/// @param {asset.GMRoom}  active_room   Room Oolong is currently in
/// @param {real}          interactable  Object that was clicked 
/// @param {real}          item          The item used
/// @description                         Get an object's story when an item is used

function get_story_item(active_room, interactable, item){
	switch (global.major){
		case MAJOR_CHEM: 
			switch (interactable){
				case PLAGUE: 
					return get_item_plague(active_room, item);
				case MONA:
					return get_item_mona(active_room, item);
				case PERCY: 
					return get_item_percy(active_room, item);
				case HEDGE:
					return get_item_hedge(active_room, item);
				default: 
					return "None";
			}
		default: return "None";
	}
}