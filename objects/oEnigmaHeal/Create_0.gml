desc = "Enigma Heal\nDoubles the efficiency of ALL healing.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oEnigmaHeal));
	ds_list_add(global.currentUpgrades, oEnigmaHeal);
}

event_inherited();