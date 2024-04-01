desc = "Turbo\n+50% Speed. Also increase Dash distance by 25%.";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
	ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oTurbo));
	ds_list_add(global.currentUpgrades, oTurbo);
	oWizard.moveSpd *= 1.5;
	oWizard.dashDist *= 1.25;
}

event_inherited();