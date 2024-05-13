desc = "Charge Shot\nHolding down the attacking button lets you charge up the projectile for increased pierce and damage.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oChargeShot));
	ds_list_add(global.currentUpgrades, oChargeShot);
	oWizard.projectileType = sVortex;

}

event_inherited();