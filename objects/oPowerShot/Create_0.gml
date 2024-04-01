desc = "Power Shot\n +1 damage. Thats it. Literally just +1 damage.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oPowerShot));
	ds_list_add(global.currentUpgrades, oPowerShot);
	global.addativeDmg ++;
}

event_inherited();