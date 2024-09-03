/// @description Override draw event
// You can write your code in this editor

draw_sprite_ext(spr_box_choice, 0, x, y, 1, 1, 0, c_white, image_alpha);

draw_set_font(fnt_speech);
draw_set_color(c_black);
draw_text(aligned_x, aligned_y, text);
