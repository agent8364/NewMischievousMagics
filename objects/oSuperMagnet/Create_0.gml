desc = "Super Magnet\nSpells cast can now also attract all items dropped by enemies and collect them.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades, oSuperMagnet));
	ds_list_add(global.currentUpgrades, oSuperMagnet);
	ds_list_add(global.availableUpgrades, oEnemagnet);

}

event_inherited();