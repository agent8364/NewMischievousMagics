oUpgradeController.upgrading = false;
global.text = "";
ds_list_delete(global.availableUpgrades, ds_list_find_index(global.availableUpgrades,oSecondBurst));
ds_list_add(global.currentUpgrades, oSecondBurst);
ds_list_add(global.availableUpgrades, oOctoBurst);
instance_activate_all();
instance_deactivate_object(oUpgradeBackground);
instance_deactivate_object(oUpgradeText);
instance_destroy(pUpgrades);