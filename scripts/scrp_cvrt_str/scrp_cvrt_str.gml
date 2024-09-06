// A collection of functions that take a string value
// and returns a more useful data type


/// @function               str_to_actor_spr(actor);
/// @param {string}  actor  The character to display
/// @description            Converts a string actor name to that actor's sprite
/// @pure

function str_to_actor_spr(actor){
	switch (actor){
		case "oolong": return spr_oolong;
		// Chemistry
		case "hedge": return spr_hedgeteacher;
		case "plague": return spr_plague;
		case "mona": return spr_mona;
		case "percy": return spr_percy;
		// NSFW April Fools Release
		case "foreman" : return spr_foreman;
		case "osha" : return spr_osha;
		case "forklift" : return spr_forklift;
		// Error
		default: show_error("Invalid actor '" + actor + "' provided.", true);
	}
}


/// @function                 str_to_emotion(emotion);
/// @param {string}  emotion  The emotion to display
/// @description              Converts a string emotion to its integer representation
/// @pure

function str_to_emotion(emotion){
	switch (emotion){
		case "neutral": return NEUTRAL;
		case "happy": return HAPPY;
		case "confused": return CONFUSED;
		case "angry": return ANGRY;
		case "blush": return BLUSH;
		case "nervous": return NERVOUS;
		case "determined": return DETERMINED;
		default: show_error("Invalid emotion '" + emotion + "' provided.", true);
	}
}


/// @function            str_to_room(rm);
/// @param {string}  rm  The room to return
/// @description         Converts a string room name to that room asset
/// @pure

function str_to_room(rm){
	switch (rm){
		case "HALLWAY_A": return rm_hallway_a;
		case "HALLWAY_B": return rm_hallway_b;
		case "HALLWAY_C": return rm_hallway_c;
		case "HALLWAY_D": return rm_hallway_d;
		case "HALLWAY_E": return rm_hallway_e;
		case "CLASSROOM_A": return rm_classroom_a;
		case "CLASSROOM_B": return rm_classroom_b;
		case "CLASSROOM_C": return rm_classroom_c;
		case "CLASSROOM_D": return rm_classroom_d;
		case "OFFICE": return rm_office;
		case "RESTROOM": return rm_restroom;
		case "ENDING_DATELESS": return rm_ending_dateless ;
		case "ENDING_SUPERFRIENDS": return rm_ending_superfriends;
		case "ENDING_NSFW" : return rm_ending_osha;
		case "WEDNESDAY": return rm_wednesday;
		case "FRIDAY": return rm_friday;
		default: show_error("Invalid room '" + rm + "' provided.", true);
	}
}


/// @function                  str_to_pointer(variable);
/// @param {string}  variable  The variable to point to
/// @description               Returns the pointer index to a variable
/// @pure

function str_to_pointer(variable){
	switch (variable){
		case "FAVOR_PLAGUE": return FAVOR_PLAGUE;
		case "FAVOR_MONA": return FAVOR_MONA;
		case "FAVOR_PERCY": return FAVOR_PERCY;
		//case "favor_king": return FAVOR_KING;

		case "EVENT_PLAGUEPARTNER": return EVENT_PLAGUEPARTNER;
		case "EVENT_MONADISGUSTED": return EVENT_MONADISGUSTED;
		
		case "GLOBAL_PATH": return GLOBAL_PATH;

		default: show_error("'" + variable + "' not a valid global pointer.", true);
	}
}


/// @function               str_to_sound(sound);
/// @param {string}  sound  Sound to play
/// @description            Returns a sound asset
/// @pure

function str_to_sound(sound){
	switch (sound){
		// SFX
		case "SUCCESS": return snd_success;
		case "FAIL": return snd_fail;
		case "TRASH": return snd_item_trash;

		// Music

		default: show_error("'" + variable + "' not a valid global pointer.", true);
	}
}
