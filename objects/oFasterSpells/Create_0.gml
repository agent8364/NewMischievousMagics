desc = "Faster Spells\nProjectiles move 15% faster. Increases attack speed by 20%";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oFasterSpells));
	ds_list_add(global.currentUpgrades, oFasterSpells);
	oWizard.maxCooldown -= (oWizard.maxCooldown * 0.2);
	oWizard.chargeRate += (oWizard.chargeRate * 0.2);
	oWizard.bulletSpeed += (oWizard.bulletSpeed * 0.15);
}

event_inherited();