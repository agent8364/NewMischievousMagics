oUpgradeController.upgrading = false;
global.text = "";
ds_list_delete(global.availableUpgrades, oMagnetize);
ds_list_add(global.currentUpgrades, oMagnetize);
ds_list_add(global.availableUpgrades, oSuperMagnet);
instance_activate_all();
instance_deactivate_object(oUpgradeBackground);
instance_deactivate_object(oUpgradeText);
instance_destroy(pUpgrades);