oUpgradeController.upgrading = false;
global.text = "";
ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oOctoBurst));
ds_list_delete(global.availableUpgrades, oSecondBurst);
ds_list_add(global.currentUpgrades, oOctoBurst);
instance_activate_all();
instance_deactivate_object(oUpgradeBackground);
instance_deactivate_object(oUpgradeText);
instance_destroy(pUpgrades);