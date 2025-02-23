if(!global.pause) {
	// FOLLOW PLAYER ON X
	if(distance_to_object(player) < camera_width / 4) {
		if(player.x > x) { hspeed = 1; } 
		else if(player.x < x) { hspeed = -1; } 
	}
	// RETURN TO INITIAL POSITION
	else {
		if(x < initial_x) { hspeed = 1; } 
		else if(x > initial_x) { hspeed = -1; } 
		else { hspeed = 0; }
	}
	// CLIPPING FIX
	if(distance_to_object(player) <= player_width) { hspeed = 0; }
	// X COLLISION
	if(place_meeting(x + hspeed, y, tilemap)) {
		while(!place_meeting(x + sign(hspeed), y, tilemap)) {
			x += sign(hspeed);
		}
		hspeed = 0;
	}
	x += hspeed;
	// Y COLLISION
	if(place_meeting(x, y + vspeed, tilemap)) { 
		while (!place_meeting(x, y + sign(vspeed), tilemap)) { 
			// SET GRAVITY
			vspeed += gravity;
			y += sign(vspeed);
		} 
		vspeed = 0;
		gravity = 0;
	}
	y += vspeed;
	// HP CHECK
	if(damage_allowed == true) {
		if(place_meeting(x, y, object_magic_1)) {
			health -= object_player.damage;
			damage_allowed = false;
			alarm[0] = damage_cooldown;
		}
	}
	if(health <= 0) {
		instance_destroy();
	}
	// ANIMATIONS
	if abs(hspeed) > 0 {
		sprite_index = sprite_enemy_walk;
	} else {
		sprite_index = sprite_enemy_idle;
	}
	if(hspeed != 0) { 
		face_direction = sign(hspeed);
		image_xscale = face_direction;
	}
	if(health != max_health) {
		sprite_index = sprite_enemy_hurt;
		health_changed = true;
		max_health = health;
		alarm[1] = 20;
	}
}
else {
	hspeed = 0;
	vspeed = 0;
}