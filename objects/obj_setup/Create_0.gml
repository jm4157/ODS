/// @description Initialize global variables

startup();

// Apply screen size settings
instance_create_layer(0,0,"Screen",obj_applyresolution);
