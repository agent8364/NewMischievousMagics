instance_destroy();
if (ds_list_find_index(global.currentUpgrades,oEnigmaHeal)!=-1){
	oWizard.hp += 20;
}else oWizard.hp += 10;
part_particles_create(global.AlsoRedSmokeSystem,x,y,global.AlsoRedSmokeType,30);