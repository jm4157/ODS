/// @description Check if this item can exist

if (!script_execute(item_valid, id)){
	instance_destroy(id);
}
