/// @description "F" hint
draw_self();
// DRAW HINT TO SPEAK
if(!global.pause) {
	if(distance_to_object(object_player) <= 50) {
		draw_sprite_ext(
			// SPRITE INDEX
			sprite_press_f, image_index,
			// SPRITE POSITION
			object_player.x, object_player.y - 65,
			// SPRITE SIZE
			image_xscale / 1.7, image_yscale / 1.7,
			// ANGLE, COLOUR AND ALPHA
			image_angle, c_white, 1);
	}
}