desc = "Short Fuse\nBombs explode 50% faster.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oShortFuse));
	ds_list_add(global.currentUpgrades, oShortFuse);
	ds_list_add(global.availableUpgrades, oChainReaction);

}

event_inherited();