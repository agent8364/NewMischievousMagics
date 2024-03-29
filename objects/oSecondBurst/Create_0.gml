desc = "Second Burst\nProjectiles fired from bursts have a 25% chance of bursting a second time. These projectiles still will not damage bosses.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades, ds_list_find_index(global.availableUpgrades,oSecondBurst));
	ds_list_add(global.currentUpgrades, oSecondBurst);
	ds_list_add(global.availableUpgrades, oOctoBurst);

}

event_inherited();