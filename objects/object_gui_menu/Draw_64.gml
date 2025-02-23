/// @description actual menu

// SET FONT
draw_set_font(font_text);
// SET MENU SIZE
var menu_width = view_width; 
var menu_height = view_height;
// SET OFFSET BUFFERS
var x_buffer = 16;
var y_buffer = 32;
// SET ORIGIN POINTS
var x_start = menu_width / 2;
var y_start = (menu_height / 2);
// SET COLOR
var c = c_black;
if(global.pause) {
	// DRAW MENU BACKGROUND
	draw_set_alpha(0.85);
	draw_rectangle_color(0, 0, 1366, 768, c, c, c, c, false);
	draw_set_alpha(1);
	// DRAW MENU ELEMENTS
	for(var i = 0; i < array_length(menu_pages); i++) {
		draw_text(320, 320 + y_buffer, menu_pages[i])
		y_buffer += 40;
	}
}