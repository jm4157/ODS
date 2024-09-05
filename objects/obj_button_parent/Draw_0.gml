/// @description Draw button and text

// Draw button
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, image_alpha);

// Draw text
draw_set_font(font);
draw_set_color(c_black);
draw_text(t_x, t_y, text);
