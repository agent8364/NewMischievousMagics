desc = "Nuclear\n+50% Explosion Size. +10% Explosion Damage.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oNuclear));
	ds_list_add(global.currentUpgrades, oNuclear);
}

event_inherited();