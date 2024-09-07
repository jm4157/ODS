/// @description Fade in

if (image_alpha <= 0){
	if (global.active_layer == TRANSITION){
		global.active_layer = SCREEN;
	}
	instance_destroy(id);
} else {
	image_alpha -= (FADE_SPEED / SECOND);
}
