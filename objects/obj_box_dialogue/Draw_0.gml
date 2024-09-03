/// @description Override draw event
// You can write your code in this editor

//TODO Draw a box
draw_sprite(spr_box_dialogue, 0, DIALOGUE_X, DIALOGUE_Y)

//Draw the speaker
draw_set_font(fnt_speaker);
draw_set_color(c_black);
draw_text(x,y, speaker);

//Draw the speech
draw_set_font(fnt_speech);
draw_text_ext(x,y+DIALOGUE_GAP, speech, DIALOGUE_LINE, DIALOGUE_WIDTH);
