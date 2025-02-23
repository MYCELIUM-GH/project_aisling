/// @description text control

// CHECK FOR INTERACTION
if(keyboard_check_pressed(ord("F"))) {
	// CHECK FOR POSSIBLE OPTIONS
	if((var_page + 1) < array_length(var_text)) {
		// GO TO NEXT DIALOG OPTION
		var_page += 1;
		// RESET CHARACTERS COUNTER
		var_char_count = 0;
	}
	// REMOVE TEXTBOX AFTER THE LAST OPTION
	else {
		instance_destroy();
		// RUN TIMER TO RESET TEXTBOX
		textbox_link.alarm[1] = 1;
	}
}