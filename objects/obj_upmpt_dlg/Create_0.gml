/// @description Start dialogue if condition is met

if (get_cdtn_upmpt(cdtn, room)){
	alarm_set(0, FADE_SPEED * SECOND + 1);
}
