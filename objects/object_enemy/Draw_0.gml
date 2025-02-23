/// @description Insert description here

draw_self();
if(!global.pause) {
	if(health_changed == true) {
		shader_set(shader_highlight_white);
		draw_self();
		shader_reset();
	
	}
}
else {
	image_index = -1;
}