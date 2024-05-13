desc = "Triple Shot\nShoot 2 additional projectiles. -33% Damage.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oTripleShot));
	ds_list_add(global.currentUpgrades, oTripleShot);
	oWizard.projectileCount += 2;
}

event_inherited();