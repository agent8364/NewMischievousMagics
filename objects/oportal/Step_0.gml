///@desc Act out the Portal
//Animate based on player distance
var dist = distance_to_object(oWizard);
if (dist <= 512){
	image_speed = ((512 - dist)/256)+1;
}else image_speed = 1;
//Activate when the E key is pressed
if (keyboard_check_pressed(ord("E"))) and (dist <= 128){
	room_goto_next();
	with oInventory {
		canShow = false;
			instance_activate_all();
			instance_deactivate_object(oSlotMisc);
			instance_deactivate_object(oSlotType);
			instance_deactivate_object(oSlotForm);
			oInventorySlot.visible = false;
	}
}