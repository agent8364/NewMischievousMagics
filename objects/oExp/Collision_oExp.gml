if (instance_exists(other)){
	part_particles_create(global.WhiteSmokeSystem,x,y,global.WhiteSmokeType,30);
	other.val += val;
	instance_destroy();
}