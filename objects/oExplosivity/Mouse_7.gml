oUpgradeController.upgrading = false;
global.text = "";
ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oExplosivity));
ds_list_add(global.currentUpgrades, oExplosivity);
instance_activate_all();
instance_deactivate_object(oUpgradeBackground);
instance_deactivate_object(oUpgradeText);
instance_deactivate_object(pInventory);
instance_destroy(pUpgrades);