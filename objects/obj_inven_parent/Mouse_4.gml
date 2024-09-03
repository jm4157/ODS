/// @description Pick up item

// If Oolong is holding something, return it to his inventory
if (global.inventory[INVEN_HAND] != EMPTY){
	
	return;
}

// Add to inventory if not full
for (var i = 1; i < INVEN_SLOTS + 1; i++){
	if (global.inventory[i] == EMPTY){
		// Add to inventory
		global.inventory[i] = item_code;
		
		// Add this to picked up items then destroy this instance
		global.pickup[array_length(global.pickup)] = id;
		instance_destroy(id);
		
		// Play pickup script if one exists
		if (pickup_dlg != "0"){
			script_execute(scrp_begindialogue, pickup_dlg)
		}
		
		return;
	}
}

// If inventory full, play dialogue
script_execute(scrp_begindialogue, "pickup/dlg_pickup_full.json")

