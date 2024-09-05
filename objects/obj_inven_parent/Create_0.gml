/// @description Check if this item can exist

if (!get_cdtn_item(cdtn, id)){
	instance_destroy(id);
}
