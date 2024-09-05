/// @description Flash red to show unavailability
// You can write your code in this editor

if (is_active_layer(lay) && color == c_white){
	image_alpha = 1;
	
	color = c_red;
	alarm_set(0, 30);
}
