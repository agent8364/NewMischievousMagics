canShow = !canShow;

if (canShow == false){
	instance_activate_all();
	instance_deactivate_object(oSlotMisc);
	instance_deactivate_object(oSlotType);
	instance_deactivate_object(oSlotForm);
	instance_deactivate_object(oUpgradeText);
	instance_deactivate_object(oUpgradeBackground);
	oInventorySlot.visible = false;
}else{
	instance_deactivate_all(true);
	instance_activate_object(oInventorySlot);
	oInventorySlot.visible = true;
}