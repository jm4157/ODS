/// @description Check if active

// Get the action for this character at this room
action = script_execute(scrp_char_get_action, room, character) 

// Check if character has something to do here
visible = action != "None"
