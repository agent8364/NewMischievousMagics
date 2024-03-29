desc = "Explosivity\n Gain +100% Explosion damage, but -100% to all other damage.\nCURSED! Unlocked by: ";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oExplosivity));
	ds_list_add(global.currentUpgrades, oExplosivity);
}

event_inherited();
flameSprite = sCursedFlame;
cursed = true;