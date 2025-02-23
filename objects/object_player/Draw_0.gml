/// @description player FX

// SELF ROTATION
draw_sprite_ext( 
	sprite_index, image_index, 
	x, y, image_xscale * var_player_direction, 
	image_yscale, image_angle, image_blend, image_alpha
);
// FIX
if(var_player_direction = 0) {
	draw_self();
}