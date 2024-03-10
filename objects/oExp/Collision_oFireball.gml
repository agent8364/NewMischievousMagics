if (ds_list_find_index(global.currentUpgrades,oMagnetize) != -1){
	instance_destroy();
	oWizard.xp += val;
	part_particles_create(global.WhiteSmokeSystem,x,y,global.WhiteSmokeType,30);
}