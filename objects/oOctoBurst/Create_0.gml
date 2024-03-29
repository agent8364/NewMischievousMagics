desc = "Octo Burst\nAnytime a projectile would split into 4 similar projectiles, it splits into 8 instead that will not damage bosses.\nUnlocks: Nothing\nRemoves: Douburst";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oOctoBurst));
	ds_list_delete(global.availableUpgrades, oSecondBurst);
	ds_list_add(global.currentUpgrades, oOctoBurst);

}

event_inherited();