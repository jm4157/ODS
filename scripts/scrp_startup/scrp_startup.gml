
function scrp_startup(){
	
	try {if (global.initialized) show_debug_message("Initialized variable is messed up.")}
	//If this causes an exception, it means the game is uninitialized
	catch (exception){
		// Set initialized to true
		global.intialized = true
		
		// Set active layer to the default
		global.active_layer = SCREEN
		
		// Declare no toast currently exists
		global.toast_exists = false
	
		// Restore Metadata
		ini_open("save.ini");
	
		global.screen_width = ini_read_real("Metadata", "screen width", 1024)
		global.screen_height = ini_read_real("Metadata", "screen height", 576)
		global.fullscreen = ini_read_real("Metadata", "fullscreen", 0)
	
		ini_close()
	}
}