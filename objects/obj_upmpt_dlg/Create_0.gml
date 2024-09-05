/// @description Start dialogue if condition is met

if (get_cdtn_upmpt(cdtn, room)){
	global.upmpt[cdtn] = true;
	begin_dlg(dlg);
}
