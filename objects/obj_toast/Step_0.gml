/// @description Change height

if (step < SECOND){
	y -= y_inc;
	aligned_y -= y_inc;
} else if (step >= 2 * SECOND && step < 4 * SECOND){
	y += y_inc;
	aligned_y += y_inc;
} else if (step >= 4 * SECOND) {
	instance_destroy(id);
	global.toast_exists = false;
}

step++;
