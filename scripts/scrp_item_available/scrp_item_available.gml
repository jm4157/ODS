// Returns false if an item has been picked up, otherwise returns true
function scrp_item_available(item_id){
	for (var i = 0; i < array_length(global.pickup); i++){
		if (item_id == global.pickup[i]){
			return false;
		}
	}
	
	return true;
}