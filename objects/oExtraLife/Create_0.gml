desc = "Extra Life\nThe next time you would die, instead deal 500% of your damage to all enemies near you. You lose 10% of your perks, rounded up.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oExtraLife));
	ds_list_add(global.currentUpgrades, oExtraLife);
}

event_inherited();