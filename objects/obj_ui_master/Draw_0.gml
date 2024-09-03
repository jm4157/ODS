/// @description Override draw

// Draw Minimap
	// Draw background box
	draw_sprite_ext(spr_map_bg, 0, MINIMAP_X, MINIMAP_Y, 1, 1, 0, c_white, 0.5);

	// Draw appropriate map on top
	draw_sprite(map_loc, room_num, MINIMAP_X, MINIMAP_Y);

	// Draw date and time below
	draw_set_font(fnt_speaker);
	draw_set_color(c_white);
	scrp_draw_text_outline(DATE_X, DATE_Y, date, OUTLINE_WIDTH, c_black, OUTLINE_FIDELITY, 25, 250)

	draw_set_font(fnt_speech);
	scrp_draw_text_outline(TIME_X, TIME_Y, time,  OUTLINE_WIDTH, c_black, OUTLINE_FIDELITY, 25, 250)

// Draw inventory
	var inven_x;

	for(var i = 0; i < INVEN_SLOTS; i++){
		inven_x = INVEN_X_INIT - (INVEN_X_OFFSET * i);
		
		// Draw backing, then draw bubble
		draw_sprite_ext(spr_inven_bubble, 1, inven_x, INVEN_Y, 1, 1, 0, c_white, 0.75);
		draw_sprite(spr_inven_bubble, 0, inven_x, INVEN_Y);
		
		// Get item and draw sprite
		var inven_hold = global.inventory[i + 1]
		if (inven_hold != EMPTY){
			var inven_spr = script_execute(scrp_inttoitemspr, inven_hold);
			
			draw_sprite(inven_spr, -1, inven_x, INVEN_Y);
		}
	}
	
	// If holding something, draw the trash can
	if (global.inventory[INVEN_HAND] != EMPTY){
		inven_x  -= INVEN_X_OFFSET;
		draw_sprite(spr_inven_trash, 0, inven_x, INVEN_Y);
	}
