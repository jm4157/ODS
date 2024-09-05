// A collection of functions that check if an item should spawn


/// @function                      item_available(cdtn, item_id);
/// @param {string}       cdtn     Condition to check
/// @param {id.Instance}  item_id  Item to be checked
/// @description                   Checks if an item exists

function get_cdtn_item(cdtn, item_id){
	switch(cdtn){
		case "AVAILABLE": return item_available(item_id);
		default: return false;
	}
}


/// @function                      item_available(item_id);
/// @param {id.Instance}  item_id  Item to be checked
/// @description                   Checks if an item has been picked up

function item_available(item_id){
	for (var i = 0; i < array_length(global.pickup); i++){
		if (item_id == global.pickup[i]){
			return false;
		}
	}
	
	return true;
}