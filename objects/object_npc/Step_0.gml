/// @description textbox create/remove
if(!global.pause) {
// ALLOW TO START DIALOG IF PLAYER REACH NPC 
if(distance_to_object(object_player) <= 50) {
	// START DIALOG IF KEY PRESSED
	if(keyboard_check_pressed(ord("F"))) {
		// CHECK FOR ANOTHER TEXTBOXES
		if(textbox_id == noone) {
			//CREATE TEXTBOX
			textbox_id = instance_create_layer(x, y, "Text", object_gui_textbox);
			// LINK TEXT VARIABLES TO A NEW TEXTBOX
			textbox_id.textbox_link = self;
			textbox_id.var_text = var_npc1_text;
			textbox_id.var_name = name_npc1;
		}
	}
}
// REMOVE TEXTBOX
else if(textbox_id != noone) { 
	instance_destroy(textbox_id);
	// RESET TEXTBOX ID
	textbox_id = noone;
}
}