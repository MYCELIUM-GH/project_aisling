/// @description textbox variables

// LINK OBJECT TO TEXTBOX CALLER
textbox_link = noone;
// INITIAL VALUES
var_name = noone;
var_text = " ";
var_page = 0;
var_char_count = 0;
// CONTENT ALLIGNMENT
	text_buffer_x = 15;
	text_buffer_y = -70;
	textbox_offset_y = -20;
	// GET TEXT/TEXTBOX SIZE
	textbox_width = sprite_get_width(sprite_textbox);
	textbox_height = sprite_get_height(sprite_textbox);
	var_string_height = string_height(var_text);