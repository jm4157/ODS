/// @description Create elements

// Create front layer
c_layer = layer_create(SUBSUBMENU_NEAR);

// Calculate positions
var center = x + SETTINGS_WIDTH / 2;
var c_x = center - SETTINGS_BUTTON_WIDTH / 2;
var c_y = y + SETTINGS_MARGIN_BORDER;

// Add title
draw_set_font(fnt_speaker);
var t_width = string_width("Resolution");

title = instance_create_layer(center - t_width / 2, c_y, c_layer, obj_text);
title.text = "Resolution";

// Add ratios
c_y += SETTINGS_HEIGHT_TITLE + SETTINGS_MARGIN_TITLE;

potato = instance_create_layer(c_x, c_y, c_layer, obj_button_ratio);
potato.s_width = 1024;
potato.s_height = 576;
potato.master = id;

c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON;

low = instance_create_layer(c_x, c_y, c_layer, obj_button_ratio);
low.s_width = 1280;
low.s_height = 720;
low.master = id;

c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON;

mid = instance_create_layer(c_x, c_y, c_layer, obj_button_ratio);
mid.s_width = 1366;
mid.s_height = 768;
mid.master = id;

c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON

high = instance_create_layer(c_x, c_y, c_layer, obj_button_ratio);
high.s_width = 1600;
high.s_height = 900;
high.master = id;

c_y += SETTINGS_HEIGHT_BUTTON + SETTINGS_MARGIN_BUTTON

ultra = instance_create_layer(c_x, c_y, c_layer, obj_button_ratio);
ultra.s_width = 1920;
ultra.s_height = 1080;
ultra.master = id;
