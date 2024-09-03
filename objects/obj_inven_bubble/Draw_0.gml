/// @description Draw lower layer at 70% opacity

draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha * 0.7)

// If this is holding something, draw it 
if (holding != -1){
	draw_sprite_ext(holding, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
