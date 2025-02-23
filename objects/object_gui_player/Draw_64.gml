if(!global.pause) {
	// DRAW HUD FRAME
	draw_sprite(sprite_player_status_frame, 0, 10, 10);
	// SKILLS TIP
	draw_sprite_ext(sprite_q, 0, 100, 720, key_width, key_height, image_angle, tip_color, 1);
	draw_sprite(sprite_item_slot, 0, 100, 660);
	draw_sprite_ext(sprite_magic_1, 7, 100, 660, 0.35, 0.35, image_angle, tip_color, 1);
	// HEALTH BARS
	var mh_offset = 98; 
	var h_offset = 98;
	for(var i = 0; i < global.health_max; i++) { 
		draw_sprite(sprite_mana_bar_slice, 0, mh_offset, 45);
		mh_offset += 40;
	}
	// HEALTH BARS FILL
	for(var i = 0; i < global.health_points; i++) { 
		draw_sprite(sprite_health_slice, 0, h_offset, 45);
		h_offset += 40;
	}
	// MANA BARS
	var mm_offset = 80; 
	var m_offset = 80;
	for(var i = 0; i < global.mana_max; i++) { 
		draw_sprite(sprite_mana_bar_slice, 0, mm_offset, 65);
		mm_offset += 40;
	}
	// MANA BARS FILL
	for(var i = 0; i < global.mana_points; i++) { 
		draw_sprite(sprite_mana_slice, 0, m_offset, 65);
		m_offset += 40;
	}
}