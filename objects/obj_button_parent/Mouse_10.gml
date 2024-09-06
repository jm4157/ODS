/// @description Fade out

if (is_active_layer(lay)){
	audio_play_sound(snd_select, PRTY_SFX, false);
	image_alpha = 0.7;
}
