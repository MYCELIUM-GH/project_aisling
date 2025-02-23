/// @description textbox settings
draw_set_font(font_text);
draw_sprite(sprite_textbox, 0, x, y + textbox_offset_y);
// COPY AND DRAW TEXT CHAR BY CHAR
var text_char = string_copy(var_text[var_page], 1, var_char_count);
if(var_char_count < string_length(var_text[var_page])) { var_char_count += 1; }

#region NAME
	draw_set_halign(fa_center);
	draw_set_color(c_yellow);
	draw_text_transformed(
		// NAME POSITION
		x + textbox_width / 2, 
		y + textbox_offset_y + text_buffer_y,
		// NAME VALUE
		var_name,
		// NAME SCALE
		0.5, 0.5, 
		// NAME ROTATION
		image_angle);
#endregion

#region CONTENT
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text_ext_transformed(
		// CONTENT POSITION
		x + text_buffer_x,
		y + text_buffer_y, 
		// CONTENT VALUE
		text_char, 
		// CONTENT LINE HEIGHT
		var_string_height,
		// CONTENT LINE WIDTH
		textbox_width * 1.7, 
		0.5, 0.5, image_angle);
#endregion