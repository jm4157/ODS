/// @description Override draw
// You can write your code in this editor

//Draw background box
draw_sprite_ext(spr_map_bg, 0, MINIMAP_X, MINIMAP_Y, 1, 1, 0, c_white, 0.5);

//Draw appropriate map on top
draw_sprite(map_loc, room_num, MINIMAP_X, MINIMAP_Y);

//Draw date and time below
draw_set_font(fnt_speaker);
draw_set_color(c_white);
scrp_draw_text_outline(DATE_X, DATE_Y, date, OUTLINE_WIDTH, c_black, OUTLINE_FIDELITY, 25, 250)

draw_set_font(fnt_speech);
scrp_draw_text_outline(TIME_X, TIME_Y, time,  OUTLINE_WIDTH, c_black, OUTLINE_FIDELITY, 25, 250)
