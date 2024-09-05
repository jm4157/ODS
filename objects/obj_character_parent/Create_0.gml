/// @description Check if active

// Get the action for this character at this room
var action = get_story_character(room, character);

// Check if character has something to do here
visible = action != "None";
