oUpgradeController.upgrading = false;
global.text = "";
ds_list_delete(global.availableUpgrades, oBurst);
ds_list_add(global.currentUpgrades, oBurst);
ds_list_add(global.availableUpgrades, oSecondBurst);
instance_activate_all();
instance_deactivate_object(oUpgradeBackground);
instance_deactivate_object(oUpgradeText);
instance_destroy(pUpgrades);