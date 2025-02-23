function set_controls() {
	// HOLD JUMPING BUFFER
	buffer_time = 10;
	key_jump_buffered = 0;
	key_jump_buffer_timer = 0;
}
function get_controls() {
	// DIRECTION KEYS
	key_left = keyboard_check(vk_left) + keyboard_check(ord("A")) + gamepad_button_check(0, gp_padl);
		key_left = clamp(key_left, 0, 1);
	key_right = keyboard_check(vk_right) + keyboard_check(ord("D")) + + gamepad_button_check(0, gp_padr);
		key_right = clamp(key_right, 0, 1);
	// JUMP KEYS
	key_jump = keyboard_check_pressed(vk_space) + + gamepad_button_check_pressed(0, gp_face1);
		key_jump = clamp(key_jump, 0, 1);
	key_jump_hold = keyboard_check(vk_space) + + gamepad_button_check(0, gp_face1);
		key_jump_hold = clamp(key_jump_hold, 0, 1);
	// JUMP KEY BUFFERING
	if key_jump {
		key_jump_buffer_timer = buffer_time;	
	}
	if key_jump_buffer_timer > 0 {
		key_jump_buffered = 1;
		key_jump_buffer_timer --;
	}
	else {
		key_jump_buffered = 0;
	}
	// SPRINT KEY
	key_sprint = keyboard_check(vk_shift) + gamepad_button_check(0, gp_face3);
		key_sprint = clamp(key_sprint, 0, 1);
}