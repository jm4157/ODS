/// @description Create elements

// Add children layer
c_layer = layer_create(MENU_NEAR)

// Add grey backdrop
curtain = instance_create_depth(0, 0, MENU_FAR, obj_curtain)

// Calculate positions
var center = x + SETTINGS_WIDTH / 2
var c_x = center - SETTINGS_BUTTON_WIDTH / 2
var c_y = y + SETTINGS_MARGIN_BORDER

// Add title
draw_set_font(fnt_speaker)
var t_width = string_width("Pause")

title = instance_create_layer(center - t_width / 2, c_y, c_layer, obj_text)
title.text = "Pause"

// Add Music Volume button
c_y += SETTINGS_HEIGHT_TITLE + SETTINGS_MARGIN_TITLE

settings = instance_create_layer(c_x, c_y, c_layer, obj_button_settings);

// Add SFX Volume button
c_y += SETTINGS_HEIGHT_BUTTON + MENU_MARGIN_BUTTON

home = instance_create_layer(c_x, c_y, c_layer, obj_button_home);

// Add Resolution Change button
c_y += SETTINGS_HEIGHT_BUTTON + MENU_MARGIN_BUTTON

quit = instance_create_layer(c_x, c_y, c_layer, obj_button_exit);

// Add Fullscreen button
c_y += SETTINGS_HEIGHT_BUTTON + MENU_MARGIN_BUTTON

back = instance_create_layer(c_x, c_y, c_layer, obj_button_return, {font: fnt_speaker});
back.master = id
back.return_to = global.active_layer
