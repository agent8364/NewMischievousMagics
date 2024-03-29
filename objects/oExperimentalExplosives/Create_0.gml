desc = "Experimental Explosives\n Doubles your Explosion Radius BUT your bombs can damage you.\nCURSED! Unlocked by: ";
global.text = desc;
clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oExperimentalExplosives));
	ds_list_add(global.currentUpgrades, oExperimentalExplosives);

}
event_inherited();
flameSprite = sCursedFlame;
cursed = true;