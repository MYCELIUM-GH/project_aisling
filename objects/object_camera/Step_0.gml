/// @description camera settings
if !instance_exists(object_player) exit;
// CAMERA SIZE
var camera_width = camera_get_view_width(view_camera[0]);
var camera_height = camera_get_view_height(view_camera[0]);
// CAMERA TARGET COORDINATES
global.camera_x = object_player.x - camera_width / 2;
global.camera_y = object_player.y - camera_height / 2;
// BIND CAMERA BORDERS TO ROOM
global.camera_x = clamp(global.camera_x, 0, room_width - camera_width);
global.camera_y = clamp(global.camera_y, 0, room_height - camera_height);
// SET CAMERA ACTUAL POSITION
camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y);
// SOME CAMERA IMPROVEMENTS
global.final_camera_x += (global.camera_x - global.final_camera_x) * var_camera_trail_speed;
global.final_camera_y += (global.camera_y - global.final_camera_y) * var_camera_trail_speed;
// BACKGROUND PARALLAX
layer_x("Foreground", global.camera_x * 0.05);
layer_x("Background", global.camera_x * 0.15);
// FULLSCREEN TOGGLE
if keyboard_check_pressed(vk_f11) {
	window_set_fullscreen(!window_get_fullscreen());
}