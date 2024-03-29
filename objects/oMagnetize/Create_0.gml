desc = "Magnetize\nSpells you cast can attract nearby exp orbs to it, and can collect them just as you can.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oMagnetize));
	ds_list_add(global.currentUpgrades, oMagnetize);
	ds_list_add(global.availableUpgrades, oSuperMagnet);
}

event_inherited();