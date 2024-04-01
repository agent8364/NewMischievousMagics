desc = "Bomb Shots\nConverts your projectiles into bombs.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oBombShots));
	ds_list_add(global.currentUpgrades, oBombShots);
	global.canExplode = true;
}

event_inherited();