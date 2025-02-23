if(keyboard_check_pressed(ord("Q"))) {
	global.mana_points -= 1;
}
if(global.mana_points < 0) {
	global.mana_points = 0;
}

if(keyboard_check(ord("Q")) && global.mana_points != -1) {
	key_width = 0.8;
	key_height = 0.8;
} else {
	key_width = 1;
	key_height = 1;
}

if(global.mana_points <= 0) { tip_color = c_black; }
else { tip_color = c_white; }