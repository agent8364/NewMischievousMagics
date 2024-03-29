desc = "Burst\nUpon hitting an enemy, spells will split into 4 identical copies of themselves. These copies do not split.\nUnlocks: Octoburst, Douburst";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oBurst));
	ds_list_add(global.currentUpgrades, oBurst);
	ds_list_add(global.availableUpgrades, oSecondBurst);
	ds_list_add(global.availableUpgrades, oOctoBurst);

}

event_inherited();