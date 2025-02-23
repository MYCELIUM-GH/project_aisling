/// @description variables + bg music
set_controls();
// FORCES
var_on_ground = true;
var_gravity = 0.55;
var_velocity = 8;
var_horizontal_speed = 0;
var_vertical_speed = 0;
var_direction = 0;
// PLAYER RELATED STUFF
var_player_direction = 0;
player_health = 100;
damage = 25;
// MOVEMENT SPEED
var_sprint = 0;
var_walking_speed[0] = 3;
var_walking_speed[1] = 5;
// JUMPING SPEED
var_jumping_speed[0] = -6.1;
var_jumping_speed[1] = -5.3;
// JUMPING BUFFER
var_jump_max = 2;
var_jump_count = 0;
var_jump_hold_timer = 0;
var_jump_hold_frames[0] = 18;
var_jump_hold_frames[1] = 10;
// HANG BUFFER
var_hang_timer = 0;
var_hang_frames = 8;
var_hang_jump_timer = 0;
var_hang_jump_frames = 5;
// SPRITES + ANIMATIONS
var_sprite_idle = sprite_player_idle;
var_sprite_walk = sprite_player_walk;
var_sprite_run  = sprite_player_run;
var_sprite_jump = sprite_player_jump;
var_fade_time = 10;
var_fade_timer = var_fade_time;

// PLAYER FUNCTIONS ======================
function set_on_ground(_value = true) {
	// LINK GROUND CHECKING TO NEW VARIABLE
	if _value == true {
		var_on_ground = true;
		var_hang_timer = var_hang_frames;
	}
	else {
		var_on_ground = false;
		var_hang_timer = 0;
	}
}
// TILES ID
tilemap = layer_tilemap_get_id("Tiles");
water = layer_tilemap_get_id("Tiles_Water");