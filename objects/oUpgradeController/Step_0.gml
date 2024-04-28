if (!upgrading) {
	if (oWizard.xp >= oWizard.neededXP){
		if (global.controls.getKeyUpgrade()){
			oWizard.xp -= oWizard.neededXP;
			oWizard.neededXP *= 1.5;
			deactivate_irrelevant();
			instance_create_layer(0,window_get_height(),layer,oUpgradeText);
			upgrading = true;
			ds_list_shuffle(global.availableUpgrades);
			for(var i = 0; i < 2; i ++){
				var upgrade = ds_list_find_value(global.availableUpgrades,i);
				if (is_undefined(upgrade)==false){
					instance_create_layer(544,384,layer,upgrade, {
						pos : i
					});
				}else{
					instance_create_layer(544,384,layer,oAbyss, {
						pos : i
					});
				}
			}
		}
	}
}