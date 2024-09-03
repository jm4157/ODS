/// @description Flash red to show unavailability
// You can write your code in this editor

if (script_execute(scrp_layer_is_active, _layer) && color == c_white){
	image_alpha = 1
	
	color = c_red
	alarm_set(0, 30)
}
