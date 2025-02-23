tilemap = layer_tilemap_get_id("Tiles");
player = object_player;
camera_width = camera_get_view_width(view_camera[0])
player_width = sprite_get_width(sprite_player_idle);

initial_x = x;
initial_y = y;
max_health = 100;
health_changed = false;
face_direction = 0;
health = 100;
gravity = 0.6;
damage_allowed = true;
damage_cooldown = 75;