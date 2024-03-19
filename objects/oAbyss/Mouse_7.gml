oUpgradeController.upgrading = false;
global.text = "";
instance_activate_all();
instance_deactivate_object(oUpgradeBackground);
instance_deactivate_object(oUpgradeText);
instance_destroy(pUpgrades);