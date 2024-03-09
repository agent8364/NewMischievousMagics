if (!instance_exists(oPortal)) {
	canShow = !canShow;

	if (canShow == false){
		instance_activate_all();
		instance_deactivate_object(pInventory);
	}else{
		instance_deactivate_all(true);
		instance_activate_object(pInventory);
	}
}