desc = "Chain Reaction\nBombs can detonate each other.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oShortFuse));
	ds_list_add(global.currentUpgrades, oShortFuse);
}

event_inherited();