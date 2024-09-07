/// @description Start timer

global.active_layer = TRANSITION;
alarm_set(0, (2.14 - FADE_SPEED) * SECOND);
audio_play_sound(snd_steps, PRTY_SFX, false);
