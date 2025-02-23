/// @description Insert description here
if(place_meeting(x, y, object_player)) {
	if(global.health_points < global.health_max) {
		global.health_points += 1;
		instance_destroy();
	}
}