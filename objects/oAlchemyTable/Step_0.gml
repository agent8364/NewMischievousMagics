dist = distance_to_object(oWizard);

if (global.controls.getKeyUse()) and (dist <= 64) or (global.controls.getKeyUse()) and (!instance_exists(oWizard)){
	if (instance_exists(pAlchemy)){
		instance_activate_all();
		instance_deactivate_object(pAlchemy);
		instance_deactivate_object(pMissions);
		visible = true;
	}else{
		deactivate_irrelevant();
		instance_activate_object(pAlchemy);
		visible = false;
	}
}