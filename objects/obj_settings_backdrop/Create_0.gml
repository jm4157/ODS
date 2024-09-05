/// @description Create elements

// Add children layer
c_layer = layer_create(SUBMENU_NEAR);

// Add grey backdrop
curtain = instance_create_depth(0, 0, SUBMENU_FAR, obj_curtain);

// Calculate positions
var center = x + SETTINGS_WIDTH / 2;
var c_x = center - SETTINGS_BUTTON_WIDTH / 2;
var c_y = y + SETTINGS_MARGIN_BORDER;

// Add title
draw_set_font(fnt_speaker);
var t_width = string_width("Settings");

title = instance_create_layer(center - t_width / 2, c_y, c_layer, obj_text);
title.text = "Settings";

// Add Music Volume button
c_y += SETTINGS_HEIGHT_TITLE + SETTINGS_MARGIN_TITLE;

music = instance_create_layer(c_x, c_y, c_layer, obj_button_music);

// Add SFX Volume button
c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON;

sfx = instance_create_layer(c_x, c_y, c_layer, obj_button_sfx);

// Add Resolution Change button
c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON;

resolution = instance_create_layer(c_x, c_y, c_layer, obj_button_resolution);

// Add Fullscreen button
c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON;

fullscreen = instance_create_layer(c_x, c_y, c_layer, obj_button_fullscreen);

// Add Return button
c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON;

back = instance_create_layer(c_x, c_y, c_layer, obj_button_return);
back.master = id;
back.lay = SUBMENU;
