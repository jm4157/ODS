/// @description Figure out position text should be to be aligned
// You can write your code in this editor

//Set font so string_width/string_height calculate correct values
draw_set_font(fnt_speech);
var width = string_width(text);
var height = string_height(text);

//Align horizontally
aligned_x = (CHOICE_WIDTH - width) / 2 + x;

//Align vertically
aligned_y = (CHOICE_HEIGHT - height) / 2 + y;
