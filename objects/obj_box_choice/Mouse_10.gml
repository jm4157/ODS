/// @description Make transparent

if (is_active_layer(STAGE)){
	audio_play_sound(snd_select, PRTY_SFX, false);
	image_alpha = 0.5;
}
