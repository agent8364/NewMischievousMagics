if (!upgrading) {
	if (oWizard.xp >= oWizard.neededXP){
		if (global.controls.getKeyUpgrade()){
			oWizard.xp -= oWizard.neededXP;
			oWizard.neededXP *= 1.5;
			deactivate_irrelevant();
			instance_create_layer(0,window_get_height(),layer,oUpgradeText);
			upgrading = true;
			ds_list_shuffle(global.availableUpgrades);
			if (ds_list_size(global.availableUpgrades)<=1){ 
				ds_list_add(global.availableUpgrades,oAbyss);
			}else if (ds_list_find_index(global.availableUpgrades,oAbyss)!=-1) ds_list_delete(global.availableUpgrades,oAbyss);
			for(var i = 0; i < 2; i ++){
				var upgrade = ds_list_find_value(global.availableUpgrades,i);
				instance_create_layer(544,384,layer,upgrade, {
					pos : i
				});
			}
		}
	}
}