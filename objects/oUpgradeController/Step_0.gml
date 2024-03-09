if (!upgrading) {
		if (oWizard.xp >= oWizard.neededXP){
			if (keyboard_check_pressed(ord("Q"))){
				oWizard.xp -= oWizard.neededXP;
				oWizard.neededXP *= 1.5;
				instance_deactivate_all(true);
				instance_activate_object(oUpgradeBackground);
				instance_activate_object(oUpgradeText);
				upgrading = true;
				oUpgradeBackground.visible = true;
				oUpgradeText.visible = true;
				var one = true;
				repeat (2){	
					ds_list_shuffle(global.availableUpgrades);
					if (ds_list_size(global.availableUpgrades)<=1){ 
						ds_list_add(global.availableUpgrades,oAbyss);
					}
					var upgrade = ds_list_find_value(global.availableUpgrades,0);
					if (one == true){
						instance_create_layer(544,384,layer,upgrade)
						one = false;
					}else{
						instance_create_layer(800,384,layer,upgrade)
				}
			}
		}
	}
}