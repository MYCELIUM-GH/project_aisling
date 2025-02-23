/// @description shadows
with(object_parrent) {
	gpu_set_fog(true, c_black, 0, 1);
	draw_sprite_pos(
		sprite_index, 
		image_index,
		// TOP-LEFT
		x - (sprite_width * 0.4) - 20, 
		y + 10,
		// TOP-RIGHT
		x + (sprite_width * 0.4) - 20, 
		y + 10,
		// BOTTOM-RIGHT
		x + (sprite_width * 0.4), 
		y + 15,
		// BOTTOM-LEFT
		x - (sprite_width * 0.4), 
		y + 15,
		0.5);
	gpu_set_fog(false, c_white, 0, 0);
}