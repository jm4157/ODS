// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_newgame(){
	// Set active layer to be correct
	//global.active_layer = SCREEN
	
	// Define the global variable array used to mimic pointers
	global.pointer = array_create(PTR_COUNT, 0)
	
	// Set up date time and path
	global.major = MAJOR_CHEM //TODO set this to MAJOR_NULL initially
	global.date = MONDAY
	global.time = MORNING
	global.pointer[GLOBAL_PATH] = CHAR_NULL
	
	// Create empty inventory
	global.inventory = array_create(INVEN_SLOTS + 1)
	
	// Declare no items have been picked up
	global.pickup = [];
	
	// Set all unprompted dialogue flags to false
	global.game_intro_played = false
	global.class_intro_played = false
	global.after_monday_played = false
	global.after_wednesday_played = false
	global.empty_class_played = false
	global.after_friday_played = false
	
	//TODO Save all this data
}