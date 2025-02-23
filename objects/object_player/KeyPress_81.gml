/// @description magic attack
if(global.mana_points > 0) {
	instance_create_depth(object_player.x, object_player.y, 500, object_magic_1);
}