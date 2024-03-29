desc = "Volitality\nIncrease explosion damage by 25% while above half health. \nUnlocks: Enigma Heal";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oVolitality));
	ds_list_add(global.currentUpgrades, oVolitality);
}

event_inherited();