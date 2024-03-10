dist = distance_to_object(oWizard);

if (keyboard_check_pressed(ord("E"))) and (dist <= 64) or (keyboard_check_pressed(ord("E"))) and (!instance_exists(oWizard)){
	if (instance_exists(pAlchemy)){
		instance_activate_all();
		instance_deactivate_object(pAlchemy);
		visible = true;
	}else{
		instance_deactivate_all(true);
		instance_activate_object(pAlchemy);
		visible = false;
	}
}