desc = "Super Range\n +100% Range.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oSuperRange));
	ds_list_add(global.currentUpgrades, oSuperRange);
	oWizard.playerRange *= 2;
}

event_inherited();