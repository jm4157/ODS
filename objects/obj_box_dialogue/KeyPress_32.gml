/// @description Continue

if (is_active_layer(STAGE)){
	audio_play_sound(snd_click, PRTY_SFX, false);
	instance_destroy(id);
	manage_dlg(commands, stage);
}
