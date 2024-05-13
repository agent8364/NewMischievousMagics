desc = "Bigger Blast\n+10% Explosion size and damage.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oBiggerBlast));
	ds_list_add(global.currentUpgrades, oBiggerBlast);
}

event_inherited();