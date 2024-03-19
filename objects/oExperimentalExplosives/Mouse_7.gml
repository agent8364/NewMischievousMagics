oUpgradeController.upgrading = false;
with(oUpgradeText){
	image_index = 0;
	draw_set_color(c_white);
}
global.text = "";
ds_list_delete(global.availableUpgrades,  ds_list_find_index(global.availableUpgrades,oExperimentalExplosives));
ds_list_add(global.currentUpgrades, oExperimentalExplosives);
instance_activate_all();
instance_deactivate_object(oUpgradeBackground);
instance_deactivate_object(oUpgradeText);
instance_destroy(pUpgrades);