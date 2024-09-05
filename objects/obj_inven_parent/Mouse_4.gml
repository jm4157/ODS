/// @description Pick up item

// If Oolong is holding something he can't pick stuff up
if (!hand_empty() || !is_active_layer(SCREEN)){
	return;
}

// Otherwise pick up
var taken = pickup(item_code);

if (taken){
	// If it was picked up, add it to picked up items then destroy this instance
	global.pickup[array_length(global.pickup)] = id;
	instance_destroy(id);
		
	// Play pickup script if one exists
	if (pickup_dlg != "None"){
		begin_dlg(pickup_dlg);
	}
} else{
	// If inventory is full, Oolong says so
	begin_dlg("pickup/dlg_pickup_full.json");
}
