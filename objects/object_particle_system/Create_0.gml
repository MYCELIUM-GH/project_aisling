/// @description FX variables

particle_system = part_system_create();
// PLAYER TRAIL
particle_type_trail = part_type_create();
	part_type_size(particle_type_trail, 1, 1, 0, 0);
	part_type_life(particle_type_trail, 10, 10);
	part_type_alpha3(particle_type_trail, 0.5, 0.3, 0.1);
	part_type_color1(particle_type_trail, c_red);
