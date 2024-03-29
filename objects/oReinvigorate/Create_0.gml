desc = "Reinvigorate\nKilling an enemy has a 5% chance to drop a blood orb. Picking them up restores 10 health.\nUnlocks: Vitality, Volitality";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oReinvigorate));
	ds_list_add(global.currentUpgrades, oReinvigorate);
	ds_list_add(global.availableUpgrades, oVolitality);
	ds_list_add(global.availableUpgrades, oVitality);

}

event_inherited();