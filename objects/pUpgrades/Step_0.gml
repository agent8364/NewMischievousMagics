if (mouse_check_button_pressed(mb_left)){
	instance_activate_all();
	instance_deactivate_object(oUpgradeBackground);
	instance_deactivate_object(oUpgradeText);
	instance_destroy(pUpgrades);
}