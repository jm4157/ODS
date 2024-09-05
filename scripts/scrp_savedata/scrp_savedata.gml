// A collection of functions used to initialize, save, or load data


/// @function     newgame();
/// @description  Set all save data to represent a fresh game

function newgame(){
	// Set active layer to be correct
	
	// Define the global variable array used to mimic pointers
	global.pointer = array_create(PTR_COUNT, 0);
	
	// Set up date time and path
	global.major = MAJOR_CHEM; //TODO set this to MAJOR_NULL initially
	global.date = MONDAY;
	global.time = MORNING;
	global.pointer[GLOBAL_PATH] = CHAR_NULL;
	
	// Create empty inventory
	global.inventory = array_create(INVEN_SLOTS + 1);
	
	// Declare no items have been picked up
	global.pickup = [];
	
	// Set all unprompted dialogue flags to false
	global.upmpt = array_create(UPMPT_COUNT);
	
	//TODO Save all this data
}


/// @function     startup();
/// @description  Initialize global variables and load metasave

function startup(){
	
	try {if (global.initialized) show_debug_message("Already initialized.")}
	//If this causes an exception, it means the game is uninitialized
	catch (exception){
		// Set initialized to true
		global.intialized = true;
		
		// Set active layer to the default
		global.active_layer = SCREEN;
		
		// Declare no toast currently exists
		global.toast_exists = false;
	
		// Restore metasave
		ini_open("save.ini");
	
		global.screen_width = ini_read_real("Metadata", "screen width", 1024);
		global.screen_height = ini_read_real("Metadata", "screen height", 576);
		global.fullscreen = ini_read_real("Metadata", "fullscreen", 0);
	
		ini_close();
	}
}